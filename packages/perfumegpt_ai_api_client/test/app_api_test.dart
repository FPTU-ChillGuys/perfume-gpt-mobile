import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';

/// tests for AppApi
void main() {
  final instance = PerfumegptAiApiClient().getAppApi();

  group(AppApi, () {
    // Health check - Kiểm tra trạng thái server
    //
    //Future<String> appControllerCheckHealth() async
    test('test appControllerCheckHealth', () async {
      // TODO
    });
  });
}
