import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for LedgersApi
void main() {
  final instance = PerfumegptApiClient().getLedgersApi();

  group(LedgersApi, () {
    //Future<BaseResponseOfPagedResultOfCashFlowLedgerItemResponse> apiLedgersCashFlowGet({ DateTime fromDate, DateTime toDate, CashFlowType flowType, CashFlowCategory category, String referenceId, String referenceCode, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiLedgersCashFlowGet', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfInventoryLedgerItemResponse> apiLedgersInventoryGet({ DateTime fromDate, DateTime toDate, String variantId, String batchId, StockTransactionType type, String referenceId, String actorId, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiLedgersInventoryGet', () async {
      // TODO
    });
  });
}
