import '../entities/note_preference.dart';
import '../entities/user_profile.dart';

abstract class ProfileRepository {
  Future<UserProfile> getMe();

  /// Preferred avatar endpoint: GET /api/users/avatar
  /// (backend can return canonical CDN/protected media URL).
  Future<String?> getAvatarUrl();
  Future<void> updateMe({
    required String fullName,
    required String phoneNumber,
  });
  Future<void> updateProfile({
    DateTime? dateOfBirth,
    num? minBudget,
    num? maxBudget,
    List<NotePreference>? notePreferences,
    List<int>? familyPreferenceIds,
    List<int>? attributePreferenceIds,
  });
  Future<String?> uploadAvatar(String filePath);
  Future<void> deleteAvatar();
  Future<List<ScentNoteLookup>> getScentNotesLookup();
  Future<List<OlfactoryFamilyLookup>> getOlfactoryFamiliesLookup();
  Future<List<AttributeValueLookup>> getAttributeValuesLookup(int attributeId);
  Future<List<({int id, String name})>> getAttributesLookup();
}
