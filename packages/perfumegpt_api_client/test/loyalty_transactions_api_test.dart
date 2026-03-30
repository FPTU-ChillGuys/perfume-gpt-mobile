import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for LoyaltyTransactionsApi
void main() {
  final instance = Openapi().getLoyaltyTransactionsApi();

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
