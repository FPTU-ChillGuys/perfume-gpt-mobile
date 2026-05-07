import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for ShippingsApi
void main() {
  final instance = PerfumegptApiClient().getShippingsApi();

  group(ShippingsApi, () {
    //Future<BaseResponseOfPagedResultOfShippingInfoListItem> apiShippingsMeGet({ ShippingStatus status, CarrierName carrierName, ShippingType shippingType, String orderId, String trackingNumber, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiShippingsMeGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiShippingsMeSyncShippingStatusPost() async
    test('test apiShippingsMeSyncShippingStatusPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiShippingsOrderInfoUrlPost(GetOrderInfoRequest getOrderInfoRequest) async
    test('test apiShippingsOrderInfoUrlPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiShippingsSyncShippingStatusTrackingNumberPost(String trackingNumber) async
    test('test apiShippingsSyncShippingStatusTrackingNumberPost', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfShippingInfoListItem> apiShippingsUserUserIdGet(String userId, { ShippingStatus status, CarrierName carrierName, ShippingType shippingType, String orderId, String trackingNumber, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiShippingsUserUserIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiShippingsUserUserIdSyncShippingStatusPost(String userId) async
    test('test apiShippingsUserUserIdSyncShippingStatusPost', () async {
      // TODO
    });
  });
}
