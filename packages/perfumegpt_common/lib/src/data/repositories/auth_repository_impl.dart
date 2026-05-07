import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:dio/dio.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../utils/media_url_resolver.dart';

class AuthRepositoryImpl implements AuthRepository {
  final PerfumegptApiClient _apiClient;
  final PerfumegptAiApiClient _aiApiClient;
  final FlutterSecureStorage _storage;
  final String? _serverClientId;
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;
  bool _isGoogleSignInInitialized = false;
  User? _currentUser;

  static const _tokenKey = 'auth_token';

  String _normalizeToken(String token) {
    var normalized = token.trim();
    if (normalized.toLowerCase().startsWith('bearer ')) {
      normalized = normalized.substring(7).trim();
    }
    if (normalized.startsWith('"') &&
        normalized.endsWith('"') &&
        normalized.length > 1) {
      normalized = normalized.substring(1, normalized.length - 1);
    }
    return normalized;
  }

  AuthRepositoryImpl(
    this._apiClient,
    this._aiApiClient,
    this._storage, [
    this._serverClientId,
  ]);

  Future<void> _ensureGoogleSignInInitialized() async {
    if (!_isGoogleSignInInitialized) {
      try {
        await _googleSignIn.initialize(serverClientId: _serverClientId);
      } catch (_) {
        // Fallback: some Android builds fail when explicit serverClientId is
        // misconfigured; default initialization can still allow sign-in.
        await _googleSignIn.initialize();
      }
      _isGoogleSignInInitialized = true;
    }
  }

  @override
  Future<User?> login(
    String credential,
    String password, {
    String? deviceType,
    String? fcmToken,
  }) async {
    final response = await _apiClient.dio.post(
      '/api/auths/login',
      data: <String, dynamic>{
        'credential': credential,
        'password': password,
        'deviceType': deviceType,
        'fcmToken': fcmToken,
      },
      options: Options(contentType: Headers.jsonContentType),
    );
    final data = response.data;
    final payload = data is Map<String, dynamic>
        ? data['payload'] as Map<String, dynamic>?
        : null;
    final token = payload?['accessToken']?.toString();
    if (token == null || token.isEmpty) {
      final message = data is Map<String, dynamic>
          ? data['message']?.toString()
          : 'Đăng nhập thất bại';
      throw Exception(message ?? 'Đăng nhập thất bại');
    }
    return _handleTokenResponse(token);
  }

  @override
  Future<User?> googleLogin() async {
    try {
      await _ensureGoogleSignInInitialized();

      GoogleSignInAccount? googleUser;

      try {
        googleUser = await _googleSignIn.authenticate(scopeHint: ['email']);
      } on GoogleSignInException catch (e) {
        final code = e.code.toString().toLowerCase();
        if (code.contains('unknown') || code.contains('failed')) {
          // Retry once with fallback initialization path.
          _isGoogleSignInInitialized = false;
          await _ensureGoogleSignInInitialized();
          googleUser = await _googleSignIn.authenticate(scopeHint: ['email']);
          // If retry succeeds, continue flow.
        }
        if (e.code == GoogleSignInExceptionCode.canceled) {
          return null; // User canceled the sign-in flow
        }
        if (googleUser == null) {
          throw Exception(_googleSignInErrorMessage(e));
        }
      }

      final GoogleSignInAuthentication googleAuth = googleUser.authentication;
      final String? idToken = googleAuth.idToken;

      if (idToken == null) {
        throw Exception('Failed to retrieve ID token from Google.');
      }

      final response = await _apiClient.getAuthsApi().apiAuthsGoogleLoginPost(
        googleLoginRequest: GoogleLoginRequest(idToken: idToken),
      );

      return _handleTokenResponse(response.data?.payload?.accessToken);
    } catch (e) {
      try {
        await _googleSignIn.signOut();
      } catch (_) {}
      if (e is Exception) rethrow;
      throw Exception(_googleSignInErrorMessage(e));
    }
  }

  String _googleSignInErrorMessage(Object error) {
    if (error is GoogleSignInException) {
      final code = error.code.toString().toLowerCase();
      if (code.contains('network')) {
        return 'Đăng nhập Google thất bại do mạng. Vui lòng kiểm tra internet và thử lại.';
      }
      if (code.contains('client') || code.contains('configuration')) {
        return 'Google Sign-In chưa cấu hình đúng cho APK release (SHA-1/SHA-256, package name, Web client ID).';
      }
      if (code.contains('unknown') ||
          code.contains('sign_in_failed') ||
          code.contains('failed')) {
        return 'Đăng nhập Google thất bại (unknownError). Thường do thiếu SHA-1/SHA-256 hoặc sai cấu hình OAuth cho package APK.';
      }
      if (code.contains('canceled')) {
        return 'Bạn đã hủy đăng nhập Google.';
      }
      return 'Đăng nhập Google thất bại (${error.code.name}).';
    }
    if (error is DioException) {
      final data = error.response?.data;
      if (data is Map) {
        final msg = data['message']?.toString().trim();
        if (msg != null && msg.isNotEmpty) return msg;
      }
      if (data is String && data.trim().isNotEmpty) return data.trim();
      if (error.response?.statusCode != null) {
        return 'Máy chủ trả về lỗi ${error.response!.statusCode} khi đăng nhập Google.';
      }
    }
    return 'Đăng nhập Google thất bại. Vui lòng thử lại.';
  }

  Future<User?> _handleTokenResponse(String? token) async {
    if (token != null) {
      final normalizedToken = _normalizeToken(token);
      await _storage.write(key: _tokenKey, value: normalizedToken);
      _apiClient.setBearerAuth('Bearer', normalizedToken);
      _aiApiClient.setBearerAuth('Bearer', normalizedToken);
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
    _aiApiClient.setBearerAuth('Bearer', '');
    _currentUser = null;
    try {
      await _googleSignIn.signOut();
    } catch (_) {
      // Ignore errors during Google sign out
    }
  }

  @override
  Future<User?> getCurrentUser() async {
    if (_currentUser != null) return _currentUser;

    final token = await _storage.read(key: _tokenKey);
    if (token == null) return null;
    final normalizedToken = _normalizeToken(token);
    if (normalizedToken.isEmpty) {
      await logout();
      return null;
    }
    _apiClient.setBearerAuth('Bearer', normalizedToken);
    _aiApiClient.setBearerAuth('Bearer', normalizedToken);

    try {
      final response = await _apiClient.getUsersApi().apiUsersMeGet();
      final userResponse = response.data?.payload;

      if (userResponse != null) {
        final base = _apiClient.dio.options.baseUrl;
        _currentUser = User(
          id: userResponse.id ?? '',
          email: userResponse.email,
          name: userResponse.fullName,
          avatarUrl: MediaUrlResolver.resolveOptional(
            userResponse.profilePictureUrl,
            base,
          ),
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
