import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for AIApi
void main() {
  final instance = PerfumegptApiClient().getAIApi();

  group(AIApi, () {
    // Tìm kiếm sản phẩm bằng AI
    //
    //Future<EmailControllerSendEmail200Response> aIControllerSearchProductWithAI(String prompt) async
    test('test aIControllerSearchProductWithAI', () async {
      // TODO
    });

  });
}
