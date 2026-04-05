import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for StockAdjustmentsApi
void main() {
  final instance = PerfumegptApiClient().getStockAdjustmentsApi();

  group(StockAdjustmentsApi, () {
    //Future<BaseResponseOfstring> apiStockadjustmentsAdjustmentIdVerifyPost(String adjustmentId, VerifyStockAdjustmentRequest verifyStockAdjustmentRequest) async
    test('test apiStockadjustmentsAdjustmentIdVerifyPost', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfStockAdjustmentListItem> apiStockadjustmentsGet({ StockAdjustmentReason reason, StockAdjustmentStatus status, DateTime fromDate, DateTime toDate, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiStockadjustmentsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiStockadjustmentsIdDelete(String id) async
    test('test apiStockadjustmentsIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfStockAdjustmentResponse> apiStockadjustmentsIdGet(String id) async
    test('test apiStockadjustmentsIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiStockadjustmentsIdStatusPut(String id, UpdateStockAdjustmentStatusRequest updateStockAdjustmentStatusRequest) async
    test('test apiStockadjustmentsIdStatusPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiStockadjustmentsPost(CreateStockAdjustmentRequest createStockAdjustmentRequest) async
    test('test apiStockadjustmentsPost', () async {
      // TODO
    });

  });
}
