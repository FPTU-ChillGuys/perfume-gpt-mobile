import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for SuppliersApi
void main() {
  final instance = PerfumegptApiClient().getSuppliersApi();

  group(SuppliersApi, () {
    //Future<BaseResponseOfListOfSupplierResponse> apiSuppliersGet() async
    test('test apiSuppliersGet', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiSuppliersIdDelete(int id) async
    test('test apiSuppliersIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfSupplierResponse> apiSuppliersIdGet(int id) async
    test('test apiSuppliersIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfSupplierResponse> apiSuppliersIdPut(int id, UpdateSupplierRequest updateSupplierRequest) async
    test('test apiSuppliersIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfSupplierLookupItem> apiSuppliersLookupGet() async
    test('test apiSuppliersLookupGet', () async {
      // TODO
    });

    //Future<BaseResponseOfSupplierResponse> apiSuppliersPost(CreateSupplierRequest createSupplierRequest) async
    test('test apiSuppliersPost', () async {
      // TODO
    });
  });
}
