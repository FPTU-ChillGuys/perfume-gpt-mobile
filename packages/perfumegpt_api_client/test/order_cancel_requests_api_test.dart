import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for OrderCancelRequestsApi
void main() {
  final instance = PerfumegptApiClient().getOrderCancelRequestsApi();

  group(OrderCancelRequestsApi, () {
    //Future<BaseResponseOfPagedResultOfOrderCancelRequestResponse> apiOrdercancelrequestsGet({ CancelRequestStatus status, bool isRefundRequired, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiOrdercancelrequestsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrdercancelrequestsIdProcessPost(String id, ProcessCancelRequest processCancelRequest) async
    test('test apiOrdercancelrequestsIdProcessPost', () async {
      // TODO
    });

  });
}
