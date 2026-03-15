import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for InventoryApi
void main() {
  final instance = PerfumegptApiClient().getInventoryApi();

  group(InventoryApi, () {
    //Future<BaseResponseOfBatchDetailResponse> apiInventoryBatchesBatchIdGet(String batchId) async
    test('test apiInventoryBatchesBatchIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfBatchDetailResponse> apiInventoryBatchesGet({ String variantId, String searchTerm, bool isExpired, bool isExpiringSoon, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiInventoryBatchesGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfBatchDetailResponse> apiInventoryBatchesVariantVariantIdGet(String variantId) async
    test('test apiInventoryBatchesVariantVariantIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfStockResponse> apiInventoryStockGet({ String variantId, String searchTerm, bool isLowStock, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
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
