import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for InventoryApi
void main() {
  final instance = PerfumegptApiClient().getInventoryApi();

  group(InventoryApi, () {
    //Future<BaseResponseOfPagedResultOfStockResponse> apiInventoryStockGet({ int categoryId, String batchCode, String SKU, int daysUntilExpiry, StockStatus stockStatus, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiInventoryStockGet', () async {
      // TODO
    });

    //Future<BaseResponseOfStockResponse> apiInventoryStockVariantVariantIdGet(String variantId) async
    test('test apiInventoryStockVariantVariantIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfInventorySummaryResponse> apiInventorySummaryGet() async
    test('test apiInventorySummaryGet', () async {
      // TODO
    });
  });
}
