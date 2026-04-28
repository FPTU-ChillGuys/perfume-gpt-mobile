import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';


/// tests for ProfileApi
void main() {
  final instance = PerfumegptAiApiClient().getProfileApi();

  group(ProfileApi, () {
    // Lấy thông tin profile của người dùng hiện tại
    //
    //Future<ProfileControllerGetOwnProfile200Response> profileControllerGetOwnProfile() async
    test('test profileControllerGetOwnProfile', () async {
      // TODO
    });

    // Tạo báo cáo profile dưới dạng text
    //
    //Future<EmailControllerSendEmail200Response> profileControllerGetProfileReport() async
    test('test profileControllerGetProfileReport', () async {
      // TODO
    });

  });
}
