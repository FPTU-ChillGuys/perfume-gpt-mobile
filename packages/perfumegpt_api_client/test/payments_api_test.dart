import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for PaymentsApi
void main() {
  final instance = PerfumegptApiClient().getPaymentsApi();

  group(PaymentsApi, () {
    //Future<BaseResponseOfPaymentTransactionOverviewResponse> apiPaymentsManagementTransactionsGet({ DateTime fromDate, DateTime toDate, PaymentMethod paymentMethod, TransactionType transactionType, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiPaymentsManagementTransactionsGet', () async {
      // TODO
    });

    //Future apiPaymentsMomoReturnGet() async
    test('test apiPaymentsMomoReturnGet', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiPaymentsPaymentIdConfirmPut(String paymentId, ConfirmPaymentRequest confirmPaymentRequest) async
    test('test apiPaymentsPaymentIdConfirmPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiPaymentsPaymentIdRetryPost(String paymentId, { PaymentInformation paymentInformation }) async
    test('test apiPaymentsPaymentIdRetryPost', () async {
      // TODO
    });

    //Future apiPaymentsPayosCancelGet() async
    test('test apiPaymentsPayosCancelGet', () async {
      // TODO
    });

    //Future apiPaymentsPayosReturnGet() async
    test('test apiPaymentsPayosReturnGet', () async {
      // TODO
    });

    //Future apiPaymentsVnpayReturnGet() async
    test('test apiPaymentsVnpayReturnGet', () async {
      // TODO
    });

  });
}
