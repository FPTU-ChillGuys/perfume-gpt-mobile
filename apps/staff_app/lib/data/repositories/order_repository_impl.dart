import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';

part 'order_repository_impl.g.dart';

class OrderRepositoryImpl {
  final PerfumegptApiClient _apiClient;

  OrderRepositoryImpl(this._apiClient);

  OrdersApi get _ordersApi => _apiClient.getOrdersApi();
  ProductVariantsApi get _productVariantsApi => _apiClient.getProductVariantsApi();
  PaymentsApi get _paymentsApi => _apiClient.getPaymentsApi();

  Future<UserOrderResponse?> getOrderById(String orderCode) async {
    final response = await _ordersApi.apiOrdersByordercodeGet(orderCode: orderCode);
    return response.data?.payload;
  }

  Future<String?> checkoutInStore({
    required List<PosScanItemRequest> scannedItems,
    required String paymentMethod,
    bool isPickupInStore = true,
    String? voucherCode,
    ContactAddressInformation? recipient,
    num? expectedTotalPrice,
  }) async {
    final method = PaymentMethod.values.firstWhere(
      (e) => e.value == paymentMethod,
      orElse: () => PaymentMethod.cashInStore,
    );

    final request = CreateInStoreOrderRequest(
      scannedItems: scannedItems,
      payment: PaymentInformation(method: method),
      isPickupInStore: isPickupInStore,
      voucherCode: voucherCode,
      recipient: recipient,
      expectedTotalPrice: expectedTotalPrice,
    );

    final response = await _ordersApi.apiOrdersCheckoutInStorePost(
      createInStoreOrderRequest: request,
    );
    return response.data?.payload;
  }

  Future<String?> retryPayment(
    String paymentId,
    String paymentMethod,
  ) async {
    final method = PaymentMethod.values.firstWhere(
      (e) => e.value == paymentMethod,
      orElse: () => PaymentMethod.cashInStore,
    );

    final response = await _paymentsApi.apiPaymentsPaymentIdRetryPost(
      paymentId: paymentId,
      paymentInformation: PaymentInformation(method: method),
    );
    return response.data?.payload;
  }

  Future<bool> confirmPayment(String paymentId, bool isSuccess) async {
    final response = await _paymentsApi.apiPaymentsPaymentIdConfirmPut(
      paymentId: paymentId,
      confirmPaymentRequest: ConfirmPaymentRequest(isSuccess: isSuccess),
    );
    return response.data?.payload ?? false;
  }

  Future<ProductVariantForPosResponse?> getVariantById(String variantId) async {
    final response = await _productVariantsApi.apiProductvariantsVariantIdGet(
      variantId: variantId,
    );
    final variant = response.data?.payload;
    if (variant == null) return null;

    String? primaryUrl;
    try {
      primaryUrl = variant.media.firstWhere((m) => m.isPrimary == true).url;
    } catch (_) {
      if (variant.media.isNotEmpty) {
        primaryUrl = variant.media.first.url;
      }
    }

    return ProductVariantForPosResponse(
      id: variant.id,
      barcode: variant.barcode,
      sku: variant.sku,
      name: variant.productName,
      displayName: '${variant.productName} - ${variant.concentrationName}',
      concentrationName: variant.concentrationName,
      basePrice: variant.basePrice,
      primaryImageUrl: primaryUrl,
    );
  }
}

@riverpod
OrderRepositoryImpl orderRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return OrderRepositoryImpl(apiClient);
}
