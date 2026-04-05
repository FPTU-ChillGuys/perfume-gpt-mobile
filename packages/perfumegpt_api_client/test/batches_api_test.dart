import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for BatchesApi
void main() {
  final instance = PerfumegptApiClient().getBatchesApi();

  group(BatchesApi, () {
    //Future<BaseResponseOfPagedResultOfBatchDetailResponse> apiBatchesGet({ String variantId, String searchTerm, bool isExpired, bool isExpiringSoon, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiBatchesGet', () async {
      // TODO
    });

    //Future<BaseResponseOfBatchDetailResponse> apiBatchesIdGet(String id) async
    test('test apiBatchesIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfBatchLookupResponse> apiBatchesLookupGet() async
    test('test apiBatchesLookupGet', () async {
      // TODO
    });
  });
}
