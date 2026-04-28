import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';


/// tests for SourcingApi
void main() {
  final instance = PerfumegptAiApiClient().getSourcingApi();

  group(SourcingApi, () {
    // Test get catalogs for a specific variant via Redis Pub/Sub
    //
    // Sends a catalog_request to the main backend and awaits a response.
    //
    //Future<BaseResponseAPI> sourcingControllerGetCatalogs(String variantId) async
    test('test sourcingControllerGetCatalogs', () async {
      // TODO
    });

  });
}
