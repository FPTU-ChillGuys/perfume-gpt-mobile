import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/profile_repository_impl.dart';
import '../../../../domain/entities/note_preference.dart';
import '../../../../domain/entities/user_profile.dart';
import '../../../../domain/repositories/profile_repository.dart';

part 'profile_providers.g.dart';

@riverpod
ProfileRepository profileRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return ProfileRepositoryImpl(
    apiClient.getUsersApi(),
    apiClient.getProfilesApi(),
    apiClient.getScentNotesApi(),
    apiClient.getOlfactoryFamiliesApi(),
    apiClient.getAttributesApi(),
    apiClient.dio,
  );
}

@riverpod
FutureOr<List<ScentNoteLookup>> scentNotesLookup(Ref ref) {
  return ref.watch(profileRepositoryProvider).getScentNotesLookup();
}

@riverpod
FutureOr<List<OlfactoryFamilyLookup>> olfactoryFamiliesLookup(Ref ref) {
  return ref.watch(profileRepositoryProvider).getOlfactoryFamiliesLookup();
}

@riverpod
FutureOr<List<({int id, String name})>> attributesLookup(Ref ref) {
  return ref.watch(profileRepositoryProvider).getAttributesLookup();
}

@riverpod
FutureOr<List<AttributeValueLookup>> attributeValuesLookup(Ref ref, int attributeId) {
  return ref.watch(profileRepositoryProvider).getAttributeValuesLookup(attributeId);
}

@riverpod
class ProfileController extends _$ProfileController {
  @override
  FutureOr<UserProfile> build() {
    return ref.watch(profileRepositoryProvider).getMe();
  }

  Future<void> updateMe({
    required String fullName,
    required String phoneNumber,
  }) async {
    await ref.read(profileRepositoryProvider).updateMe(
      fullName: fullName,
      phoneNumber: phoneNumber,
    );
    ref.invalidateSelf();
  }

  Future<void> updateProfile({
    DateTime? dateOfBirth,
    num? minBudget,
    num? maxBudget,
    List<NotePreference>? notePreferences,
    List<int>? familyPreferenceIds,
    List<int>? attributePreferenceIds,
  }) async {
    await ref.read(profileRepositoryProvider).updateProfile(
      dateOfBirth: dateOfBirth,
      minBudget: minBudget,
      maxBudget: maxBudget,
      notePreferences: notePreferences,
      familyPreferenceIds: familyPreferenceIds,
      attributePreferenceIds: attributePreferenceIds,
    );
    ref.invalidateSelf();
  }

  Future<String?> uploadAvatar(String filePath) async {
    final url = await ref.read(profileRepositoryProvider).uploadAvatar(filePath);
    ref.invalidateSelf();
    return url;
  }

  Future<void> deleteAvatar() async {
    await ref.read(profileRepositoryProvider).deleteAvatar();
    ref.invalidateSelf();
  }
}
