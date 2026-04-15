import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for AppApi
void main() {
  final instance = PerfumegptApiClient().getAppApi();

  group(AppApi, () {
    // Health check - Kiểm tra trạng thái server
    //
    //Future<String> appControllerCheckHealth() async
    test('test appControllerCheckHealth', () async {
      // TODO
    });

  });
}
