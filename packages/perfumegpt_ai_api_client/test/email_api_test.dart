import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';


/// tests for EmailApi
void main() {
  final instance = PerfumegptAiApiClient().getEmailApi();

  group(EmailApi, () {
    // Gửi email text cơ bản
    //
    //Future<EmailControllerSendEmail200Response> emailControllerSendEmail(SendEmailRequestDto sendEmailRequestDto) async
    test('test emailControllerSendEmail', () async {
      // TODO
    });

  });
}
