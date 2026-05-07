import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';

/// tests for AIAcceptanceApi
void main() {
  final instance = PerfumegptAiApiClient().getAIAcceptanceApi();

  group(AIAcceptanceApi, () {
    // Đánh dấu click chấp nhận theo aiAcceptanceId
    //
    //Future<AIAcceptanceControllerCreatePendingResponseAcceptance200Response> aIAcceptanceControllerClickAIAcceptance(String aiAcceptanceId) async
    test('test aIAcceptanceControllerClickAIAcceptance', () async {
      // TODO
    });

    // Tạo AI acceptance pending theo response-level (backend-first)
    //
    //Future<AIAcceptanceControllerCreatePendingResponseAcceptance200Response> aIAcceptanceControllerCreatePendingResponseAcceptance(CreateResponseAIAcceptanceRequest createResponseAIAcceptanceRequest) async
    test(
      'test aIAcceptanceControllerCreatePendingResponseAcceptance',
      () async {
        // TODO
      },
    );

    // Lấy metrics acceptance theo context (accepted/pending/no-click)
    //
    //Future<SurveyControllerReorderQuestions200Response> aIAcceptanceControllerGetAIAcceptanceMetrics({ String contextType }) async
    test('test aIAcceptanceControllerGetAIAcceptanceMetrics', () async {
      // TODO
    });

    // Lấy tỷ lệ chấp nhận AI theo trạng thái
    //
    //Future<AIAcceptanceControllerGetAIAcceptanceRate200Response> aIAcceptanceControllerGetAIAcceptanceRate(String isAccepted, { String contextType }) async
    test('test aIAcceptanceControllerGetAIAcceptanceRate', () async {
      // TODO
    });

    // Lấy trạng thái chấp nhận AI của tất cả gợi ý
    //
    //Future<AIAcceptanceControllerCreatePendingResponseAcceptance200Response> aIAcceptanceControllerGetAllAIAcceptanceStatus() async
    test('test aIAcceptanceControllerGetAllAIAcceptanceStatus', () async {
      // TODO
    });

    // Cập nhật trạng thái chấp nhận AI theo ID
    //
    //Future<AIAcceptanceControllerCreatePendingResponseAcceptance200Response> aIAcceptanceControllerUpdateAIAcceptanceData(String id, String status) async
    test('test aIAcceptanceControllerUpdateAIAcceptanceData', () async {
      // TODO
    });
  });
}
