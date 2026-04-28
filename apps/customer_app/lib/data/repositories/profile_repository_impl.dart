import 'package:dio/dio.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/note_preference.dart';
import '../../domain/entities/user_profile.dart';
import '../../domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final UsersApi _usersApi;
  final ProfilesApi _profilesApi;
  final ScentNotesApi _scentNotesApi;
  final OlfactoryFamiliesApi _familiesApi;
  final AttributesApi _attributesApi;
  final Dio _dio;

  ProfileRepositoryImpl(
    this._usersApi,
    this._profilesApi,
    this._scentNotesApi,
    this._familiesApi,
    this._attributesApi,
    this._dio,
  );

  static bool _isOk(DioException e) {
    final s = e.response?.statusCode;
    return s != null && s >= 200 && s < 300;
  }

  @override
  Future<UserProfile> getMe() async {
    final credentialsResponse = await _usersApi.apiUsersMeGet();
    final profileResponse = await _profilesApi.apiProfilesMeGet();

    final creds = credentialsResponse.data!.payload!;
    final prof = profileResponse.data?.payload;

    return UserProfile(
      id: creds.id ?? '',
      fullName: creds.fullName,
      email: creds.email,
      phoneNumber: creds.phoneNumber,
      avatarUrl: creds.profilePictureUrl,
      dateOfBirth: prof?.dateOfBirth,
      gender: null,
      minBudget: prof?.minBudget,
      maxBudget: prof?.maxBudget,
      notePreferences: (prof?.notePreferences ?? [])
          .map(
            (n) => NotePreference(
              noteId: n.noteId ?? 0,
              name: n.noteName,
              type: n.noteType?.value,
            ),
          )
          .toList(),
      familyPreferences: (prof?.familyPreferences ?? [])
          .map(
            (f) =>
                FamilyPreference(familyId: f.familyId ?? 0, name: f.familyName),
          )
          .toList(),
      attributePreferences: (prof?.attributePreferences ?? [])
          .map(
            (a) => AttributePreference(
              attributeValueId: a.attributeValueId ?? 0,
              name: a.attributeValueName,
            ),
          )
          .toList(),
    );
  }

  @override
  Future<void> updateMe({
    required String fullName,
    required String phoneNumber,
  }) async {
    try {
      await _dio.put(
        '/api/users/me',
        data: {'fullName': fullName, 'phoneNumber': phoneNumber},
      );
    } on DioException catch (e) {
      if (_isOk(e)) return;
      final message = e.response?.data is Map
          ? (e.response!.data as Map)['message']?.toString()
          : null;
      throw Exception(message ?? 'Không thể cập nhật thông tin');
    }
  }

  @override
  Future<void> updateProfile({
    DateTime? dateOfBirth,
    num? minBudget,
    num? maxBudget,
    List<NotePreference>? notePreferences,
    List<int>? familyPreferenceIds,
    List<int>? attributePreferenceIds,
  }) async {
    await _profilesApi.apiProfilesPut(
      updateProfileRequest: UpdateProfileRequest(
        dateOfBirth: dateOfBirth,
        minBudget: minBudget,
        maxBudget: maxBudget,
        notePreferenceIds: notePreferences?.map((n) {
          NoteType? noteType;
          if (n.type == 'Top') noteType = NoteType.top;
          if (n.type == 'Heart') noteType = NoteType.heart;
          if (n.type == 'Base') noteType = NoteType.base_;
          return UpdateNotePreferenceRequest(
            noteId: n.noteId,
            noteType: noteType,
          );
        }).toList(),
        familyPreferenceIds: familyPreferenceIds,
        attributePreferenceIds: attributePreferenceIds,
      ),
    );
  }

  @override
  Future<String?> uploadAvatar(String filePath) async {
    final formData = FormData.fromMap({
      'Avatar': await MultipartFile.fromFile(filePath),
      'AltText': '',
    });
    try {
      final response = await _dio.post(
        '/api/users/avatar',
        data: formData,
        options: Options(contentType: 'multipart/form-data'),
      );
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return data['payload']?.toString();
      }
      return null;
    } on DioException catch (e) {
      if (_isOk(e)) return null;
      final message = e.response?.data is Map
          ? (e.response!.data as Map)['message']?.toString()
          : null;
      throw Exception(message ?? 'Không thể tải ảnh lên');
    }
  }

  @override
  Future<void> deleteAvatar() async {
    try {
      await _dio.delete('/api/users/avatar');
    } on DioException catch (e) {
      if (_isOk(e)) return;
      final message = e.response?.data is Map
          ? (e.response!.data as Map)['message']?.toString()
          : null;
      throw Exception(message ?? 'Không thể xóa ảnh');
    }
  }

  @override
  Future<List<ScentNoteLookup>> getScentNotesLookup() async {
    try {
      final response = await _scentNotesApi.apiScentnotesLookupGet();
      final list = response.data?.payload ?? [];
      return list
          .map((n) => ScentNoteLookup(id: n.id ?? 0, name: n.name))
          .toList();
    } on DioException catch (e) {
      if (_isOk(e)) {
        return _parseScentNotesRaw(e.response?.data);
      }
      rethrow;
    }
  }

  List<ScentNoteLookup> _parseScentNotesRaw(dynamic data) {
    final raw = data is Map<String, dynamic> ? data : <String, dynamic>{};
    final payload = raw['payload'];
    if (payload is List) {
      return payload
          .whereType<Map<String, dynamic>>()
          .map(
            (j) => ScentNoteLookup(
              id: j['id'] as int? ?? 0,
              name: j['name']?.toString() ?? '',
            ),
          )
          .toList();
    }
    return [];
  }

  @override
  Future<List<OlfactoryFamilyLookup>> getOlfactoryFamiliesLookup() async {
    try {
      final response = await _familiesApi.apiOlfactoryfamiliesLookupGet();
      final list = response.data?.payload ?? [];
      return list
          .map((f) => OlfactoryFamilyLookup(id: f.id ?? 0, name: f.name))
          .toList();
    } on DioException catch (e) {
      if (_isOk(e)) {
        return _parseListRaw(
          e.response?.data,
          (j) => OlfactoryFamilyLookup(
            id: j['id'] as int? ?? 0,
            name: j['name']?.toString() ?? '',
          ),
        );
      }
      rethrow;
    }
  }

  @override
  Future<List<AttributeValueLookup>> getAttributeValuesLookup(
    int attributeId,
  ) async {
    try {
      final response = await _attributesApi
          .apiAttributesAttributeIdValuesLookupGet(attributeId: attributeId);
      final list = response.data?.payload ?? [];
      return list
          .map((a) => AttributeValueLookup(id: a.id ?? 0, name: a.value))
          .toList();
    } on DioException catch (e) {
      if (_isOk(e)) {
        return _parseListRaw(
          e.response?.data,
          (j) => AttributeValueLookup(
            id: j['id'] as int? ?? 0,
            name: j['value']?.toString() ?? '',
          ),
        );
      }
      rethrow;
    }
  }

  @override
  Future<List<({int id, String name})>> getAttributesLookup() async {
    try {
      final response = await _attributesApi.apiAttributesLookupGet();
      final list = response.data?.payload ?? [];
      return list.map((a) => (id: a.id ?? 0, name: a.name)).toList();
    } on DioException catch (e) {
      if (_isOk(e)) {
        return _parseListRaw(
          e.response?.data,
          (j) => (id: j['id'] as int? ?? 0, name: j['name']?.toString() ?? ''),
        );
      }
      rethrow;
    }
  }

  List<T> _parseListRaw<T>(
    dynamic data,
    T Function(Map<String, dynamic>) mapper,
  ) {
    final raw = data is Map<String, dynamic> ? data : <String, dynamic>{};
    final payload = raw['payload'];
    if (payload is List) {
      return payload.whereType<Map<String, dynamic>>().map(mapper).toList();
    }
    return [];
  }
}
