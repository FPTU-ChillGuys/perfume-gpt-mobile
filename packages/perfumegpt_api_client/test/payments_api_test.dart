import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for PaymentsApi
void main() {
  final instance = PerfumegptApiClient().getPaymentsApi();

  group(PaymentsApi, () {
    //Future<BaseResponseOfstring> apiPaymentsChangeMethodPaymentIdPut(String paymentId, PaymentInformation paymentInformation) async
    test('test apiPaymentsChangeMethodPaymentIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiPaymentsConfirmPaymentIdPut(String paymentId, { bool isSuccess, String failureReason }) async
    test('test apiPaymentsConfirmPaymentIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiPaymentsRetryPaymentIdPost(String paymentId, { PaymentInformation paymentInformation }) async
    test('test apiPaymentsRetryPaymentIdPost', () async {
      // TODO
    });

    //Future apiPaymentsVnpayReturnGet() async
    test('test apiPaymentsVnpayReturnGet', () async {
      // TODO
    });
  });
}
