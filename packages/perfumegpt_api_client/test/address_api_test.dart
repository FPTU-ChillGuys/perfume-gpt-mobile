import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for AddressApi
void main() {
  final instance = PerfumegptApiClient().getAddressApi();

  group(AddressApi, () {
    //Future<BaseResponseOfAddressResponse> apiAddressDefaultGet() async
    test('test apiAddressDefaultGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfDistrictResponse> apiAddressDistrictsGet({ int provinceId }) async
    test('test apiAddressDistrictsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfAddressResponse> apiAddressGet() async
    test('test apiAddressGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiAddressIdDelete(String id) async
    test('test apiAddressIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfAddressResponse> apiAddressIdGet(String id) async
    test('test apiAddressIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiAddressIdPut(String id, UpdateAddressRequest updateAddressRequest) async
    test('test apiAddressIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiAddressIdSetDefaultPut(String id) async
    test('test apiAddressIdSetDefaultPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiAddressPost(CreateAddressRequest createAddressRequest) async
    test('test apiAddressPost', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfProvinceResponse> apiAddressProvincesGet() async
    test('test apiAddressProvincesGet', () async {
      // TODO
    });

    //Future<BaseResponseOfAddressLevel4Response> apiAddressStreetsGet({ String province, String district, String wardStreet }) async
    test('test apiAddressStreetsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfWardResponse> apiAddressWardsGet({ int districtId }) async
    test('test apiAddressWardsGet', () async {
      // TODO
    });

  });
}
