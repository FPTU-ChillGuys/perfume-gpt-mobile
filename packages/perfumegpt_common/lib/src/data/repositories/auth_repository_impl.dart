import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final PerfumegptApiClient _apiClient;
  final FlutterSecureStorage _storage;
  User? _currentUser;

  static const _tokenKey = 'auth_token';

  AuthRepositoryImpl(this._apiClient, this._storage);

  @override
  Future<User?> login(String email, String password) async {
    final response = await _apiClient.getAuthsApi().apiAuthsLoginPost(
      loginRequest: LoginRequest(credential: email, password: password),
    );

    final token = response.data?.payload?.accessToken;
    if (token != null) {
      await _storage.write(key: _tokenKey, value: token);
      _apiClient.setBearerAuth('Bearer', token);
      _currentUser = null; // Force refresh
      return await getCurrentUser();
    }
    return null;
  }

  @override
  Future<void> register(String email, String password, String name) async {
    await _apiClient.getAuthsApi().apiAuthsRegisterPost(
      registerRequest: RegisterRequest(
        email: email,
        password: password,
        fullName: name,
        phoneNumber: '',
        clientUri: '', // Required by the new API
      ),
    );
  }

  @override
  Future<void> logout() async {
    await _storage.delete(key: _tokenKey);
    _apiClient.setBearerAuth('Bearer', '');
    _currentUser = null;
  }

  @override
  Future<User?> getCurrentUser() async {
    if (_currentUser != null) return _currentUser;

    final token = await _storage.read(key: _tokenKey);
    if (token == null) return null;

    _apiClient.setBearerAuth('Bearer', token);

    try {
      final response = await _apiClient.getUsersApi().apiUsersMeGet();
      final userResponse = response.data?.payload;

      if (userResponse != null) {
        _currentUser = User(
          id: userResponse.id ?? '',
          email: userResponse.email,
          name: userResponse.fullName,
          avatarUrl: userResponse.profilePictureUrl,
        );
        return _currentUser;
      }
    } catch (e) {
      // Token might be invalid or expired
      await logout();
    }

    return null;
  }
}
