import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for OrdersApi
void main() {
  final instance = PerfumegptApiClient().getOrdersApi();

  group(OrdersApi, () {
    //Future<BaseResponseOfUserOrderResponse> apiOrdersByordercodeGet({ String orderCode }) async
    test('test apiOrdersByordercodeGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrdersCheckoutInStorePost(CreateInStoreOrderRequest createInStoreOrderRequest) async
    test('test apiOrdersCheckoutInStorePost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrdersCheckoutPost(CreateOrderRequest createOrderRequest) async
    test('test apiOrdersCheckoutPost', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfOrderListItem> apiOrdersGet({ String userId, OrderStatus status, OrderType type, PaymentStatus paymentStatus, DateTime fromDate, DateTime toDate, String searchTerm, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiOrdersGet', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfOrderListItem> apiOrdersMyOrdersGet({ String userId, OrderStatus status, OrderType type, PaymentStatus paymentStatus, DateTime fromDate, DateTime toDate, String searchTerm, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiOrdersMyOrdersGet', () async {
      // TODO
    });

    //Future<BaseResponseOfUserOrderResponse> apiOrdersMyOrdersOrderIdGet(String orderId) async
    test('test apiOrdersMyOrdersOrderIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfReceiptResponse> apiOrdersMyOrdersOrderIdInvoiceGet(String orderId) async
    test('test apiOrdersMyOrdersOrderIdInvoiceGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrdersOrderIdAddressPut(String orderId, UpdateOrderAddressRequest updateOrderAddressRequest) async
    test('test apiOrdersOrderIdAddressPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrdersOrderIdCancelPost(String orderId, UserCancelOrderRequest userCancelOrderRequest) async
    test('test apiOrdersOrderIdCancelPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrdersOrderIdDeliverInStorePut(String orderId) async
    test('test apiOrdersOrderIdDeliverInStorePut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrdersOrderIdFulfillPost(String orderId, FulfillOrderRequest fulfillOrderRequest) async
    test('test apiOrdersOrderIdFulfillPost', () async {
      // TODO
    });

    //Future<BaseResponseOfOrderResponse> apiOrdersOrderIdGet(String orderId) async
    test('test apiOrdersOrderIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfReceiptResponse> apiOrdersOrderIdInvoiceGet(String orderId) async
    test('test apiOrdersOrderIdInvoiceGet', () async {
      // TODO
    });

    //Future<BaseResponseOfPickListResponse> apiOrdersOrderIdPicklistGet(String orderId) async
    test('test apiOrdersOrderIdPicklistGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiOrdersOrderIdStaffCancelPost(String orderId, StaffCancelOrderRequest staffCancelOrderRequest) async
    test('test apiOrdersOrderIdStaffCancelPost', () async {
      // TODO
    });

    //Future<BaseResponseOfPickListResponse> apiOrdersOrderIdStaffPreparePut(String orderId) async
    test('test apiOrdersOrderIdStaffPreparePut', () async {
      // TODO
    });

    //Future<BaseResponseOfSwapDamagedStockResponse> apiOrdersOrderIdSwapDamagedPost(String orderId, SwapDamagedStockRequest swapDamagedStockRequest) async
    test('test apiOrdersOrderIdSwapDamagedPost', () async {
      // TODO
    });

  });
}
