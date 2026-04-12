import 'note_preference.dart';

class UserProfile {
  final String id;
  final String? fullName;
  final String? email;
  final String? phoneNumber;
  final String? avatarUrl;
  final DateTime? dateOfBirth;
  final String? gender;
  final num? minBudget;
  final num? maxBudget;
  final List<NotePreference> notePreferences;
  final List<FamilyPreference> familyPreferences;
  final List<AttributePreference> attributePreferences;

  const UserProfile({
    required this.id,
    this.fullName,
    this.email,
    this.phoneNumber,
    this.avatarUrl,
    this.dateOfBirth,
    this.gender,
    this.minBudget,
    this.maxBudget,
    this.notePreferences = const [],
    this.familyPreferences = const [],
    this.attributePreferences = const [],
  });
}
