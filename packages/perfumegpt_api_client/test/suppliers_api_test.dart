import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for SuppliersApi
void main() {
  final instance = PerfumegptApiClient().getSuppliersApi();

  group(SuppliersApi, () {
    //Future<BaseResponseOfListOfSupplierLookupItem> apiSuppliersLookupGet() async
    test('test apiSuppliersLookupGet', () async {
      // TODO
    });
  });
}
