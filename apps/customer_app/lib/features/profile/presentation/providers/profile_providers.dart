import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/profile_repository_impl.dart';
import '../../../../domain/entities/user_profile.dart';
import '../../../../domain/repositories/profile_repository.dart';

part 'profile_providers.g.dart';

@riverpod
ProfileRepository profileRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return ProfileRepositoryImpl(
    apiClient.getUsersApi(),
    apiClient.getProfilesApi(),
  );
}

@riverpod
class ProfileController extends _$ProfileController {
  @override
  FutureOr<UserProfile> build() {
    return ref.watch(profileRepositoryProvider).getMe();
  }

  Future<void> updateProfile({String? fullName, String? phoneNumber, DateTime? dateOfBirth, String? gender}) async {
    await ref.read(profileRepositoryProvider).updateProfile(
      fullName: fullName,
      phoneNumber: phoneNumber,
      dateOfBirth: dateOfBirth,
      gender: gender,
    );
    ref.invalidateSelf();
  }
}
