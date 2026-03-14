import '../../core/config/injectable.dart';
import '../../core/network/main/login_client.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../models/base_response_model.dart';
import '../models/login_request_model.dart';
import '../models/register_request_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final LoginClient _loginClient;

  AuthRepositoryImpl({LoginClient? loginClient})
    : _loginClient = loginClient ?? getIt<LoginClient>();

  User? _currentUser;

  @override
  Future<User?> login(String email, String password) async {
    final response = await _loginClient.login(
      LoginRequestModel(credential: email, password: password),
    );

    if (!response.success || response.payload == null) {
      throw Exception(_formatError(response));
    }

    _currentUser = User(
      id: 'current-user',
      email: email,
      name: email.contains('@') ? email.split('@').first : email,
    );
    return _currentUser;
  }

  @override
  Future<void> register(String email, String password, String name) async {
    final response = await _loginClient.register(
      RegisterRequestModel(email: email, password: password, name: name),
    );

    if (!response.success) {
      throw Exception(_formatError(response));
    }

    _currentUser = User(id: '2', email: email, name: name);
  }

  @override
  Future<void> logout() async {
    _currentUser = null;
  }

  @override
  Future<User?> getCurrentUser() async {
    return _currentUser;
  }

  String _formatError(BaseResponseModel<dynamic> response) {
    final buffer = StringBuffer();
    buffer.write(response.message);

    if (response.errorType != null && response.errorType != ResponseErrorTypeModel.none) {
      buffer.write(' (${response.errorType!.name})');
    }

    if (response.errors != null && response.errors!.isNotEmpty) {
      buffer.write(': ${response.errors!.join(', ')}');
    }

    return buffer.toString();
  }
}
