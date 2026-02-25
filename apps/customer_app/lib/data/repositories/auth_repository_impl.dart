import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  User? _currentUser;

  @override
  Future<User?> login(String email, String password) async {
    // Simulating API call
    await Future.delayed(const Duration(seconds: 1));
    if (email == 'test@example.com' && password == 'password') {
      _currentUser = User(id: '1', email: email, name: 'Test User');
      return _currentUser;
    }
    return null;
  }

  @override
  Future<void> register(String email, String password, String name) async {
    await Future.delayed(const Duration(seconds: 1));
    _currentUser = User(id: '2', email: email, name: name);
  }

  @override
  Future<void> logout() async {
    await Future.delayed(const Duration(milliseconds: 500));
    _currentUser = null;
  }

  @override
  Future<User?> getCurrentUser() async {
    return _currentUser;
  }
}
