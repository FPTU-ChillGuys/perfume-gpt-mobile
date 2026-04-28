import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../data/repositories/auth_repository_impl.dart';
import '../domain/entities/user.dart';
import '../domain/repositories/auth_repository.dart';
import 'api_client_provider.dart';
import 'storage_provider.dart';

import 'google_signin_config_provider.dart';

part 'auth_provider.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  final storage = ref.watch(flutterSecureStorageProvider);
  final serverClientId = ref.watch(googleSignInServerClientIdProvider);
  return AuthRepositoryImpl(apiClient, storage, serverClientId);
}

@riverpod
class Auth extends _$Auth {
  @override
  FutureOr<User?> build() async {
    return ref.watch(authRepositoryProvider).getCurrentUser();
  }

  Future<void> login(
    String credential,
    String password, {
    String? deviceType,
    String? fcmToken,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return ref.read(authRepositoryProvider).login(
            credential,
            password,
            deviceType: deviceType,
            fcmToken: fcmToken,
          );
    });
  }

  Future<void> googleLogin() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return ref.read(authRepositoryProvider).googleLogin();
    });
  }

  Future<void> register(String email, String password, String name) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      await ref.read(authRepositoryProvider).register(email, password, name);
      return ref.read(authRepositoryProvider).getCurrentUser();
    });
  }

  Future<void> logout() async {
    state = const AsyncValue.loading();
    await ref.read(authRepositoryProvider).logout();
    state = const AsyncValue.data(null);
  }
}
