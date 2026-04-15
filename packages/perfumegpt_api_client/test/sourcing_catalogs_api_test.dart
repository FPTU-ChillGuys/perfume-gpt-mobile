import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for SourcingCatalogsApi
void main() {
  final instance = PerfumegptApiClient().getSourcingCatalogsApi();

  group(SourcingCatalogsApi, () {
    //Future<BaseResponseOfIEnumerableOfCatalogItemResponse> apiSourcingcatalogsGet({ int supplierId, String variantId }) async
    test('test apiSourcingcatalogsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiSourcingcatalogsIdDelete(String id) async
    test('test apiSourcingcatalogsIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiSourcingcatalogsIdPut(String id, UpdateCatalogItemRequest updateCatalogItemRequest) async
    test('test apiSourcingcatalogsIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiSourcingcatalogsIdSetPrimaryPut(String id) async
    test('test apiSourcingcatalogsIdSetPrimaryPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiSourcingcatalogsPost(CreateCatalogItemRequest createCatalogItemRequest) async
    test('test apiSourcingcatalogsPost', () async {
      // TODO
    });

  });
}
