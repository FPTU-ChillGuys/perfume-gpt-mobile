import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for CartApi
void main() {
  final instance = PerfumegptApiClient().getCartApi();

  group(CartApi, () {
    //Future<BaseResponseOfstring> apiCartClearDelete() async
    test('test apiCartClearDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfGetCartItemsResponse> apiCartItemsGet({ List<String> itemIds }) async
    test('test apiCartItemsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfGetCartTotalResponse> apiCartTotalGet({ String voucherCode, List<String> itemIds, String savedAddressId, String recipientPeriodFullName, String recipientPeriodPhone, int recipientPeriodDistrictId, String recipientPeriodDistrictName, String recipientPeriodWardCode, String recipientPeriodWardName, int recipientPeriodProvinceId, String recipientPeriodProvinceName, String recipientPeriodFullAddress }) async
    test('test apiCartTotalGet', () async {
      // TODO
    });
  });
}
