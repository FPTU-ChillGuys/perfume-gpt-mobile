import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/user_profile.dart';
import '../../domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final UsersApi _usersApi;
  final ProfilesApi _profilesApi;

  ProfileRepositoryImpl(this._usersApi, this._profilesApi);

  @override
  Future<UserProfile> getMe() async {
    final credentialsResponse = await _usersApi.apiUsersMeGet();
    final profileResponse = await _profilesApi.apiProfilesMeGet();

    final creds = credentialsResponse.data!.payload!;
    final prof = profileResponse.data?.payload;

    return UserProfile(
      id: creds.id ?? '',
      fullName: creds.fullName,
      email: creds.email,
      phoneNumber: creds.phoneNumber,
      avatarUrl: creds.profilePictureUrl,
      dateOfBirth: prof?.dateOfBirth,
      gender: null, // Gender not available in ProfileResponse anymore?
    );
  }

  @override
  Future<void> updateProfile({String? fullName, String? phoneNumber, DateTime? dateOfBirth, String? gender}) async {
    // Note: Backend might need separate calls for User details and Profile preferences
    // For now, only updating demographics/preferences via ProfilesApi
    await _profilesApi.apiProfilesPut(
      updateProfileRequest: UpdateProfileRequest(
        dateOfBirth: dateOfBirth,
      ),
    );
  }
}
