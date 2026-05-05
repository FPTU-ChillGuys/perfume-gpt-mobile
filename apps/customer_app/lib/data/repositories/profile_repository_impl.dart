import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import '../../domain/entities/note_preference.dart';
import '../../domain/entities/user_profile.dart';
import '../../domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final UsersApi _usersApi;
  final ProfilesApi _profilesApi;
  final ScentNotesApi _scentNotesApi;
  final OlfactoryFamiliesApi _familiesApi;
  final AttributesApi _attributesApi;
  final String _apiBaseUrl;

  ProfileRepositoryImpl(
    this._usersApi,
    this._profilesApi,
    this._scentNotesApi,
    this._familiesApi,
    this._attributesApi,
    this._apiBaseUrl,
  );

  static bool _isOk(DioException e) {
    final s = e.response?.statusCode;
    return s != null && s >= 200 && s < 300;
  }

  Future<UserCredentialsResponse> _loadUserCredentials() async {
    final credentialsResponse = await _usersApi.apiUsersMeGet();
    final creds = credentialsResponse.data?.payload;
    if (creds == null) {
      throw StateError('GET /api/users/me returned null payload');
    }
    return creds;
  }

  @override
  Future<String?> getAvatarUrl() async {
    try {
      final response = await _usersApi.apiUsersAvatarGet();
      final url = response.data?.payload?.url;
      final resolved = MediaUrlResolver.resolveOptional(
        url,
        _apiBaseUrl,
      );
      if (resolved != null && resolved.isNotEmpty) return resolved;
    } catch (e, st) {
      debugPrint('[ProfileRepo] apiUsersAvatarGet failed, fallback /users/me: $e');
      debugPrintStack(stackTrace: st);
    }
    final creds = await _loadUserCredentials();
    return MediaUrlResolver.resolveOptional(
      creds.profilePictureUrl,
      _apiBaseUrl,
    );
  }

  @override
  Future<UserProfile> getMe() async {
    final creds = await _loadUserCredentials();

    ProfileResponse? prof;
    try {
      final profileResponse = await _profilesApi.apiProfilesMeGet();
      prof = profileResponse.data?.payload;
    } catch (e, st) {
      debugPrint('[ProfileRepo] apiProfilesMeGet failed (avatar still from /users/me): $e');
      debugPrintStack(stackTrace: st);
    }

    final avatarUrl = MediaUrlResolver.resolveOptional(
      creds.profilePictureUrl,
      _apiBaseUrl,
    );

    return UserProfile(
      id: creds.id ?? '',
      fullName: creds.fullName,
      email: creds.email,
      phoneNumber: creds.phoneNumber,
      avatarUrl: avatarUrl,
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
    await _usersApi.apiUsersMePut(
      updateUserBasicInfoRequest: UpdateUserBasicInfoRequest(
        fullName: fullName,
        phoneNumber: phoneNumber,
      ),
    );
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
    final response = await _usersApi.apiUsersAvatarPost(
      avatar: await MultipartFile.fromFile(filePath),
      altText: '',
    );
    return response.data?.payload?.toString();
  }

  @override
  Future<void> deleteAvatar() async {
    await _usersApi.apiUsersAvatarDelete();
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
