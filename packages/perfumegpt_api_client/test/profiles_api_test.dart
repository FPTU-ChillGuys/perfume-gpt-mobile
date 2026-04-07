import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for ProfilesApi
void main() {
  final instance = PerfumegptApiClient().getProfilesApi();

  group(ProfilesApi, () {
    //Future<BaseResponseOfProfileResponse> apiProfilesMeGet() async
    test('test apiProfilesMeGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiProfilesPut(UpdateProfileRequest updateProfileRequest) async
    test('test apiProfilesPut', () async {
      // TODO
    });

  });
}
