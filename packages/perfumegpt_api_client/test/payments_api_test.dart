import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for PaymentsApi
void main() {
  final instance = PerfumegptApiClient().getPaymentsApi();

  group(PaymentsApi, () {
    //Future apiPaymentsMomoReturnGet() async
    test('test apiPaymentsMomoReturnGet', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiPaymentsPaymentIdConfirmPut(String paymentId, ConfirmPaymentRequest confirmPaymentRequest) async
    test('test apiPaymentsPaymentIdConfirmPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiPaymentsPaymentIdMethodPut(String paymentId, PaymentInformation paymentInformation) async
    test('test apiPaymentsPaymentIdMethodPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiPaymentsPaymentIdRetryPost(String paymentId, { PaymentInformation paymentInformation }) async
    test('test apiPaymentsPaymentIdRetryPost', () async {
      // TODO
    });

    //Future apiPaymentsVnpayReturnGet() async
    test('test apiPaymentsVnpayReturnGet', () async {
      // TODO
    });

  });
}
