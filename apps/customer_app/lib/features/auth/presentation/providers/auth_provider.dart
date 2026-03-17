import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/providers/api_client_provider.dart';
import '../../../../data/repositories/auth_repository_impl.dart';
import '../../../../domain/entities/user.dart';
import '../../../../domain/repositories/auth_repository.dart';

part 'auth_provider.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return AuthRepositoryImpl(apiClient);
}

@riverpod
class Auth extends _$Auth {
  @override
  FutureOr<User?> build() async {
    return ref.watch(authRepositoryProvider).getCurrentUser();
  }

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      return ref.read(authRepositoryProvider).login(email, password);
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
