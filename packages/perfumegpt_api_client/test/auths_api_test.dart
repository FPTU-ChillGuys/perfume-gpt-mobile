import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for AuthsApi
void main() {
  final instance = PerfumegptApiClient().getAuthsApi();

  group(AuthsApi, () {
    //Future<BaseResponseOfstring> apiAuthsAdminRegisterPost(RegisterRequest registerRequest, { UserRole role }) async
    test('test apiAuthsAdminRegisterPost', () async {
      // TODO
    });

    //Future<BaseResponseOfTokenResponse> apiAuthsApiTokenPost() async
    test('test apiAuthsApiTokenPost', () async {
      // TODO
    });

    //Future<BaseResponseOfTokenResponse> apiAuthsGoogleLoginPost(GoogleLoginRequest googleLoginRequest) async
    test('test apiAuthsGoogleLoginPost', () async {
      // TODO
    });

    //Future<BaseResponseOfTokenResponse> apiAuthsLoginPost(LoginRequest loginRequest) async
    test('test apiAuthsLoginPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiAuthsRegisterPost(RegisterRequest registerRequest) async
    test('test apiAuthsRegisterPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiAuthsVerifyEmailGet({ String email, String token }) async
    test('test apiAuthsVerifyEmailGet', () async {
      // TODO
    });
  });
}
