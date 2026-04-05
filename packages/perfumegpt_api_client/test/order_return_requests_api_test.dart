import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for OrderReturnRequestsApi
void main() {
  final instance = PerfumegptApiClient().getOrderReturnRequestsApi();

  group(OrderReturnRequestsApi, () {
    //Future<BaseResponseOfPagedResultOfOrderReturnRequestResponse> apiOrderreturnrequestsGet({ String customerId, ReturnRequestStatus status, bool isRefunded, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiOrderreturnrequestsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrderreturnrequestsIdCompleteInspectionPost(String id, RecordInspectionDto recordInspectionDto) async
    test('test apiOrderreturnrequestsIdCompleteInspectionPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrderreturnrequestsIdFailInspectionPost(String id, RejectInspectionDto rejectInspectionDto) async
    test('test apiOrderreturnrequestsIdFailInspectionPost', () async {
      // TODO
    });

    //Future<BaseResponseOfOrderReturnRequestResponse> apiOrderreturnrequestsIdGet(String id) async
    test('test apiOrderreturnrequestsIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrderreturnrequestsIdRefundPost(String id, ProcessRefundRequest processRefundRequest) async
    test('test apiOrderreturnrequestsIdRefundPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrderreturnrequestsIdReviewPost(String id, ProcessInitialReturnDto processInitialReturnDto) async
    test('test apiOrderreturnrequestsIdReviewPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrderreturnrequestsIdStartInspectionPost(String id, StartInspectionDto startInspectionDto) async
    test('test apiOrderreturnrequestsIdStartInspectionPost', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfOrderReturnRequestResponse> apiOrderreturnrequestsMyRequestsGet({ ReturnRequestStatus status, bool isRefunded, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiOrderreturnrequestsMyRequestsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrderreturnrequestsPost(CreateReturnRequestDto createReturnRequestDto) async
    test('test apiOrderreturnrequestsPost', () async {
      // TODO
    });

    //Future<BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse> apiOrderreturnrequestsVideosTemporaryPost({ List<MultipartFile> videos, List<MultipartFile> images }) async
    test('test apiOrderreturnrequestsVideosTemporaryPost', () async {
      // TODO
    });
  });
}
