import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for BrandsApi
void main() {
  final instance = PerfumegptApiClient().getBrandsApi();

  group(BrandsApi, () {
    //Future<BaseResponseOfListOfBrandResponse> apiBrandsGet() async
    test('test apiBrandsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiBrandsIdDelete(int id) async
    test('test apiBrandsIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfBrandResponse> apiBrandsIdGet(int id) async
    test('test apiBrandsIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfBrandResponse> apiBrandsIdPut(int id, UpdateBrandRequest updateBrandRequest) async
    test('test apiBrandsIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfBrandLookupItem> apiBrandsLookupGet() async
    test('test apiBrandsLookupGet', () async {
      // TODO
    });

    //Future<BaseResponseOfBrandResponse> apiBrandsPost(CreateBrandRequest createBrandRequest) async
    test('test apiBrandsPost', () async {
      // TODO
    });

  });
}
