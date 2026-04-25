import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final PerfumegptApiClient _apiClient;
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
    if (normalized.startsWith('"') && normalized.endsWith('"') && normalized.length > 1) {
      normalized = normalized.substring(1, normalized.length - 1);
    }
    return normalized;
  }

  AuthRepositoryImpl(this._apiClient, this._storage, [this._serverClientId]);

  Future<void> _ensureGoogleSignInInitialized() async {
    if (!_isGoogleSignInInitialized) {
      await _googleSignIn.initialize(serverClientId: _serverClientId);
      _isGoogleSignInInitialized = true;
    }
  }

  @override
  Future<User?> login(String email, String password) async {
    final response = await _apiClient.getAuthsApi().apiAuthsLoginPost(
      loginRequest: LoginRequest(credential: email, password: password),
    );

    return _handleTokenResponse(response.data?.payload?.accessToken);
  }

  @override
  Future<User?> googleLogin() async {
    try {
      await _ensureGoogleSignInInitialized();

      GoogleSignInAccount? googleUser;

      try {
        // Ensure a clean state before authenticating
        try {
          await _googleSignIn.signOut();
        } catch (_) {}

        googleUser = await _googleSignIn.authenticate(scopeHint: ['email']);
      } on GoogleSignInException catch (e) {
        if (e.code == GoogleSignInExceptionCode.canceled) {
          return null; // User canceled the sign-in flow
        }
        rethrow;
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
      rethrow;
    }
  }

  Future<User?> _handleTokenResponse(String? token) async {
    if (token != null) {
      final normalizedToken = _normalizeToken(token);
      await _storage.write(key: _tokenKey, value: normalizedToken);
      _apiClient.setBearerAuth('Bearer', normalizedToken);
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
