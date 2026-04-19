import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';

/// tests for AIApi
void main() {
  final instance = PerfumegptAiApiClient().getAIApi();

  group(AIApi, () {
    // Tìm kiếm sản phẩm bằng AI
    //
    //Future<EmailControllerSendEmail200Response> aIControllerSearchProductWithAI(String prompt) async
    test('test aIControllerSearchProductWithAI', () async {
      // TODO
    });
  });
}
