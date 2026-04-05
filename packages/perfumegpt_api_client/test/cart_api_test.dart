import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for CartApi
void main() {
  final instance = PerfumegptApiClient().getCartApi();

  group(CartApi, () {
    //Future<BaseResponseOfstring> apiCartClearDelete({ List<String> itemIds }) async
    test('test apiCartClearDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfGetCartItemsResponse> apiCartItemsGet({ List<String> itemIds, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiCartItemsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCartItemsIdDelete(String id) async
    test('test apiCartItemsIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCartItemsIdPut(String id, UpdateCartItemRequest updateCartItemRequest) async
    test('test apiCartItemsIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCartItemsPost(CreateCartItemRequest createCartItemRequest) async
    test('test apiCartItemsPost', () async {
      // TODO
    });

    //Future<BaseResponseOfGetCartTotalResponse> apiCartTotalGet({ String voucherCode, List<String> itemIds, String savedAddressId, String recipientPeriodContactName, String recipientPeriodContactPhoneNumber, int recipientPeriodDistrictId, String recipientPeriodDistrictName, String recipientPeriodWardCode, String recipientPeriodWardName, int recipientPeriodProvinceId, String recipientPeriodProvinceName, String recipientPeriodFullAddress }) async
    test('test apiCartTotalGet', () async {
      // TODO
    });
  });
}
