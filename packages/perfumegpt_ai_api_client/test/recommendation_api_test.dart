import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';


/// tests for RecommendationApi
void main() {
  final instance = PerfumegptAiApiClient().getRecommendationApi();

  group(RecommendationApi, () {
    // Recommend đơn giản và ổn định dựa trên Order và Best Sellers (không fallback mảng rỗng)
    //
    //Future<TrendControllerGetProductTrendJobResult200Response> recommendationControllerGetRecommendationsV3Simple(String userId, { num size }) async
    test('test recommendationControllerGetRecommendationsV3Simple', () async {
      // TODO
    });

    // Manual trigger gửi daily recommendation cho user active (sync)
    //
    //Future<TrendControllerGetProductTrendJobResult200Response> recommendationControllerSendDailyRecommendationManual() async
    test('test recommendationControllerSendDailyRecommendationManual', () async {
      // TODO
    });

    // Test sinh recommendation cho user và gửi email
    //
    //Future<EmailControllerSendEmail200Response> recommendationControllerTestRecommendation(String userId) async
    test('test recommendationControllerTestRecommendation', () async {
      // TODO
    });

    // Test sinh repurchase recommendation cho user và gửi email
    //
    //Future<EmailControllerSendEmail200Response> recommendationControllerTestRepurchase(String userId, String orderId) async
    test('test recommendationControllerTestRepurchase', () async {
      // TODO
    });

  });
}
