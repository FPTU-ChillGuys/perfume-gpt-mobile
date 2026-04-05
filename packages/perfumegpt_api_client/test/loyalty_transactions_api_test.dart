import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for LoyaltyTransactionsApi
void main() {
  final instance = PerfumegptApiClient().getLoyaltyTransactionsApi();

  group(LoyaltyTransactionsApi, () {
    //Future<BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse> apiLoyaltytransactionsGet({ String userId, LoyaltyTransactionType transactionType, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiLoyaltytransactionsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse> apiLoyaltytransactionsMeHistoryGet({ LoyaltyTransactionType transactionType, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiLoyaltytransactionsMeHistoryGet', () async {
      // TODO
    });

    //Future<BaseResponseOfLoyaltyTransactionTotalsResponse> apiLoyaltytransactionsMeTotalGet() async
    test('test apiLoyaltytransactionsMeTotalGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiLoyaltytransactionsUserIdManualChangePost(String userId, ManualChangeRequest manualChangeRequest) async
    test('test apiLoyaltytransactionsUserIdManualChangePost', () async {
      // TODO
    });

  });
}
