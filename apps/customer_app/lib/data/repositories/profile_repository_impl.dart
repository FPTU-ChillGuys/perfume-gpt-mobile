import 'package:dio/dio.dart';
import '../../domain/entities/user_profile.dart';
import '../../domain/repositories/profile_repository.dart';

const _authExtra = <String, dynamic>{
  'secure': <Map<String, String>>[
    {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
  ],
};

class ProfileRepositoryImpl implements ProfileRepository {
  final Dio _dio;
  ProfileRepositoryImpl(this._dio);

  Options get _opts => Options(extra: _authExtra);

  @override
  Future<UserProfile> getMe() async {
    final r = await _dio.get<Map<String, dynamic>>('/api/profiles/me', options: _opts);
    final j = r.data!['payload'] as Map<String, dynamic>;
    return UserProfile(
      id: j['id'] as String? ?? '',
      fullName: j['fullName'] as String?,
      email: j['email'] as String?,
      phoneNumber: j['phoneNumber'] as String?,
      avatarUrl: j['avatarUrl'] as String?,
      dateOfBirth: j['dateOfBirth'] != null ? DateTime.tryParse(j['dateOfBirth'] as String) : null,
      gender: j['gender'] as String?,
    );
  }

  @override
  Future<void> updateProfile({String? fullName, String? phoneNumber, DateTime? dateOfBirth, String? gender}) async {
    final data = <String, dynamic>{};
    if (fullName != null) data['fullName'] = fullName;
    if (phoneNumber != null) data['phoneNumber'] = phoneNumber;
    if (dateOfBirth != null) data['dateOfBirth'] = dateOfBirth.toIso8601String();
    if (gender != null) data['gender'] = gender;
    await _dio.put('/api/profiles', data: data,
        options: Options(contentType: 'application/json', extra: _authExtra));
  }
}
