import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final PerfumegptApiClient _apiClient;
  User? _currentUser;

  AuthRepositoryImpl(this._apiClient);

  @override
  Future<User?> login(String email, String password) async {
    final response = await _apiClient.getAuthsApi().apiAuthsLoginPost(
      loginRequest: LoginRequest(credential: email, password: password),
    );

    final token = response.data?.payload?.accessToken;
    if (token != null) {
      // Set bearer token for subsequent calls
      _apiClient.setBearerAuth('Bearer', token);

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
        phoneNumber: '', // Assuming not strictly req
      ),
    );
    // Usually requires login afterwards or automatically logs in depending on API
  }

  @override
  Future<void> logout() async {
    _apiClient.setBearerAuth('Bearer', ''); // Clear token
    _currentUser = null;
  }

  @override
  Future<User?> getCurrentUser() async {
    if (_currentUser != null) return _currentUser;

    try {
      final response = await _apiClient.getUsersApi().apiUsersMeGet();
      final userResponse = response.data?.payload;

      if (userResponse != null) {
        _currentUser = User(
          id: userResponse.id ?? '',
          email: userResponse.email ?? '',
          name: userResponse.fullName,
        );
        return _currentUser;
      }
    } catch (e) {
      // Token might be invalid or not set
    }

    return null;
  }
}
