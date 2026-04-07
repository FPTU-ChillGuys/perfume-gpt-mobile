import '../entities/user_profile.dart';

abstract class ProfileRepository {
  Future<UserProfile> getMe();
  Future<void> updateProfile({String? fullName, String? phoneNumber, DateTime? dateOfBirth, String? gender});
}
