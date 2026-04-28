import '../entities/user.dart';

abstract class AuthRepository {
  Future<User?> login(
    String credential,
    String password, {
    String? deviceType,
    String? fcmToken,
  });
  Future<User?> googleLogin();
  Future<void> register(String email, String password, String name);
  Future<void> logout();
  Future<User?> getCurrentUser();
}
