import 'package:dio/dio.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../core/utils/image_url_helper.dart';
import '../../domain/entities/checkout_result.dart';
import '../../domain/entities/order.dart';
import '../../domain/repositories/order_repository.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrdersApi _ordersApi;
  final PaymentsApi _paymentsApi;
  final Dio _dio;

  OrderRepositoryImpl(this._ordersApi, this._paymentsApi, this._dio);

  @override
  Future<CheckoutResult> checkout(CheckoutRequest request) async {
    PaymentMethod? paymentMethod;
    switch (request.paymentMethod) {
      case 'CashOnDelivery':
        paymentMethod = PaymentMethod.cashOnDelivery;
        break;
      case 'VnPay':
        paymentMethod = PaymentMethod.vnPay;
        break;
      case 'Momo':
        paymentMethod = PaymentMethod.momo;
        break;
      case 'CashInStore':
        paymentMethod = PaymentMethod.cashInStore;
        break;
      case 'ExternalBankTransfer':
        paymentMethod = PaymentMethod.externalBankTransfer;
        break;
      case 'PayOs':
        paymentMethod = PaymentMethod.payOs;
        break;
    }

    DeliveryMethod? deliveryMethod;
    switch (request.deliveryMethod) {
      case 'Delivery':
        deliveryMethod = DeliveryMethod.delivery;
        break;
      case 'PickupInStore':
        deliveryMethod = DeliveryMethod.pickupInStore;
        break;
    }

    ContactAddressInformation? recipient;
    if (request.recipient != null) {
      final r = request.recipient!;
      recipient = ContactAddressInformation(
        contactName: r.contactName,
        contactPhoneNumber: r.contactPhoneNumber,
        districtId: r.districtId,
        districtName: r.districtName,
        wardCode: r.wardCode,
        wardName: r.wardName,
        provinceId: r.provinceId,
        provinceName: r.provinceName,
        fullAddress: r.fullAddress,
      );
    }

    final body = CreateOrderRequest(
      payment: PaymentInformation(
        method: paymentMethod,
        depositGateway: _mapPaymentMethod(request.depositGateway),
      ),
      deliveryMethod: deliveryMethod,
      itemIds: request.itemIds,
      expectedTotalPrice: request.expectedTotalPrice,
      voucherCode: request.voucherCode,
      savedAddressId: request.savedAddressId,
      recipient: recipient,
    );

    final response = await _ordersApi.apiOrdersCheckoutPost(
      createOrderRequest: body,
    );
    final payload = response.data?.payload;
    return CheckoutResult(
      paymentId: payload?.paymentId,
      paymentUrl: payload?.paymentUrl,
      orderId: payload?.orderId,
    );
  }

  @override
  Future<PaginatedOrders> getMyOrders({
    String? status,
    String? type,
    String? paymentStatus,
    String? searchTerm,
    int? page,
    int? pageSize,
  }) async {
    final response = await _ordersApi.apiOrdersMyOrdersGet(
      status: _mapOrderStatus(status),
      type: _mapOrderType(type),
      paymentStatus: _mapPaymentStatus(paymentStatus),
      searchTerm: (searchTerm?.isNotEmpty == true) ? searchTerm : null,
      pageNumber: page ?? 1,
      pageSize: pageSize ?? 20,
      sortBy: 'CreatedAt',
      sortOrder: 'desc',
      isDescending: true,
    );
    final payload = response.data?.payload;
    if (payload == null) {
      return const PaginatedOrders(
        items: [],
        totalCount: 0,
        totalPages: 0,
        hasNextPage: false,
        hasPreviousPage: false,
      );
    }
    final items = payload.items.map((o) {
      return OrderSummary(
        id: o.id ?? '',
        code: o.code,
        type: o.type?.value,
        status: o.status?.value,
        paymentStatus: o.paymentStatus?.value,
        totalAmount: o.totalAmount?.toDouble() ?? 0.0,
        requiredDepositAmount: o.requiredDepositAmount?.toDouble() ?? 0.0,
        depositAmount: 0.0,
        paidAmount: o.paidAmount?.toDouble() ?? 0.0,
        remainingAmount: o.remainingAmount?.toDouble() ?? 0.0,
        itemCount: o.itemCount,
        isReturnable: o.isReturnalbe,
        shippingStatus: o.shippingStatus?.value,
        createdAt: o.createdAt,
        orderDetails: (o.orderDetails)
            .map(
              (d) => OrderDetailItem(
                id: d.id ?? '',
                variantId: d.variantId ?? '',
                variantName: d.variantName,
                imageUrl: ImageUrlHelper.resolve(d.imageUrl ?? ''),
                quantity: d.quantity ?? 0,
                unitPrice: d.unitPrice?.toDouble() ?? 0.0,
                total: d.total?.toDouble() ?? 0.0,
              ),
            )
            .toList(),
      );
    }).toList();
    return PaginatedOrders(
      items: items,
      totalCount: payload.totalCount,
      totalPages: payload.totalPages ?? 0,
      hasNextPage: payload.hasNextPage ?? false,
      hasPreviousPage: payload.hasPreviousPage ?? false,
    );
  }

  @override
  Future<OrderDetail> getOrderDetail(String orderId) async {
    final response = await _ordersApi.apiOrdersMyOrdersOrderIdGet(
      orderId: orderId,
    );
    final o = response.data?.payload;
    if (o == null) {
      throw Exception('Không tải được chi tiết đơn hàng');
    }
    return OrderDetail(
      id: o.id ?? '',
      code: o.code,
      type: o.type?.value,
      status: o.status?.value,
      isReturnable: o.isReturnable ?? false,
      paymentStatus: o.paymentStatus?.value,
      totalAmount: o.totalAmount?.toDouble() ?? 0.0,
      requiredDepositAmount: o.requiredDepositAmount?.toDouble() ?? 0.0,
      depositAmount: o.depositAmount?.toDouble() ?? 0.0,
      paidAmount: o.paidAmount?.toDouble() ?? 0.0,
      remainingAmount: o.remainingAmount?.toDouble() ?? 0.0,
      subTotal: o.subTotal?.toDouble() ?? 0.0,
      shippingFee: o.shippingFee?.toDouble() ?? 0.0,
      voucherCode: o.voucherCode,
      voucherType: o.voucherType?.value,
      voucherDiscountTotal: o.voucherDiscountTotal?.toDouble() ?? 0.0,
      paymentExpiresAt: o.paymentExpiresAt,
      paidAt: o.paidAt,
      createdAt: o.createdAt,
      updatedAt: o.updatedAt,
      paymentTransactions: (o.paymentTransactions ?? [])
          .map(
            (p) => PaymentTransaction(
              id: p.id ?? '',
              transactionType: p.transactionType?.value,
              status: p.status?.value,
              paymentMethod: p.paymentMethod?.value,
              failureReason: p.failureReason,
              totalAmount: p.totalAmount?.toDouble() ?? 0.0,
            ),
          )
          .toList(),
      shippingInfo: o.shippingInfo != null
          ? ShippingInfo(
              carrierName: o.shippingInfo!.carrierName?.value,
              trackingNumber: o.shippingInfo!.trackingNumber,
              shippingFee: o.shippingInfo!.shippingFee?.toDouble() ?? 0.0,
              status: o.shippingInfo!.status?.value,
              estimatedDeliveryDate: o.shippingInfo!.estimatedDeliveryDate,
            )
          : null,
      recipientInfo: o.recipientInfo != null
          ? RecipientInfo(
              name: o.recipientInfo!.recipientName,
              phoneNumber: o.recipientInfo!.recipientPhoneNumber,
              districtName: o.recipientInfo!.districtName,
              wardName: o.recipientInfo!.wardName,
              provinceName: o.recipientInfo!.provinceName,
              fullAddress: o.recipientInfo!.fullAddress,
            )
          : null,
      orderDetails: o.orderDetails
          .map(
            (d) => OrderDetailItem(
              id: d.id ?? '',
              variantId: d.variantId ?? '',
              variantName: d.variantName,
              imageUrl: ImageUrlHelper.resolve(d.imageUrl ?? ''),
              quantity: d.quantity ?? 0,
              unitPrice: d.unitPrice?.toDouble() ?? 0.0,
              total: d.total?.toDouble() ?? 0.0,
            ),
          )
          .toList(),
    );
  }

  @override
  Future<Invoice> getInvoice(String orderId) async {
    final response = await _ordersApi.apiOrdersMyOrdersOrderIdInvoiceGet(
      orderId: orderId,
    );
    final payload = response.data?.payload;
    if (payload == null) {
      throw Exception('Không tải được hóa đơn');
    }
    return Invoice(
      orderId: payload.orderId,
      code: payload.code,
      orderDate: payload.orderDate,
      orderStatus: payload.orderStatus,
      staffName: payload.staffName,
      customerName: payload.customerName,
      recipientPhone: payload.recipientPhone,
      recipientAddress: payload.recipientAddress,
      items: payload.items
          .map(
            (i) => InvoiceItem(
              productName: i.productName,
              variantInfo: i.variantInfo,
              quantity: i.quantity ?? 0,
              unitPrice: i.unitPrice?.toDouble() ?? 0.0,
              subtotal: i.subtotal?.toDouble() ?? 0.0,
            ),
          )
          .toList(),
      subtotal: payload.subtotal?.toDouble() ?? 0.0,
      depositAmount: payload.depositeAmount?.toDouble() ?? 0.0,
      remainingAmount: payload.remainingAmount?.toDouble() ?? 0.0,
      shippingFee: payload.shippingFee?.toDouble() ?? 0.0,
      discount: payload.discount?.toDouble() ?? 0.0,
      tax: payload.tax?.toDouble() ?? 0.0,
      total: payload.total?.toDouble() ?? 0.0,
      paymentMethod: payload.paymentMethod,
      note: payload.note,
    );
  }

  @override
  Future<void> cancelOrder(
    String orderId,
    String reason, {
    String? refundBankName,
    String? refundAccountNumber,
    String? refundAccountName,
  }) async {
    CancelOrderReason? cancelReason;
    cancelReason = CancelOrderReason.values.firstWhere(
      (e) => e.value.toLowerCase() == reason.toLowerCase(),
      orElse: () => CancelOrderReason.changedMind,
    );

    await _ordersApi.apiOrdersOrderIdCancelPost(
      orderId: orderId,
      userCancelOrderRequest: UserCancelOrderRequest(
        reason: cancelReason,
        refundBankName: refundBankName,
        refundAccountNumber: refundAccountNumber,
        refundAccountName: refundAccountName,
      ),
    );
  }

  @override
  Future<String> retryPayment(
    String paymentId,
    String paymentMethod, {
    String? newDepositMethod,
    String? posSessionId,
  }) async {
    PaymentMethod? method;
    switch (paymentMethod) {
      case 'VnPay':
        method = PaymentMethod.vnPay;
        break;
      case 'Momo':
        method = PaymentMethod.momo;
        break;
      case 'CashOnDelivery':
        method = PaymentMethod.cashOnDelivery;
        break;
      case 'CashInStore':
        method = PaymentMethod.cashInStore;
        break;
      case 'ExternalBankTransfer':
        method = PaymentMethod.externalBankTransfer;
        break;
      case 'PayOs':
        method = PaymentMethod.payOs;
        break;
    }

    final isGatewayPayment =
        paymentMethod == 'VnPay' || paymentMethod == 'Momo' || paymentMethod == 'PayOs';
    final depositMethod = isGatewayPayment
        ? null
        : _mapPaymentMethod(newDepositMethod);
    final request = RetryOrChangePaymentRequest(
      newPaymentMethod: method,
      newDepositMethod: depositMethod,
      posSessionId: posSessionId,
    );
    try {
      final response = await _paymentsApi.apiPaymentsPaymentIdRetryPost(
        paymentId: paymentId,
        retryOrChangePaymentRequest: request,
      );
      return _normalizePaymentUrl(response.data?.payload ?? '');
    } on DioException catch (e) {
      // Keep this log temporary-useful: backend validation explains which retry payload is invalid.
      // ignore: avoid_print
      print('[OrderRepo] retryPayment paymentId=$paymentId body=${request.toJson()}');
      // ignore: avoid_print
      print('[OrderRepo] retryPayment error=${e.response?.data}');
      rethrow;
    }
  }

  @override
  Future<void> confirmPayment(
    String paymentId, {
    required bool isSuccess,
    String? failureReason,
  }) async {
    await _paymentsApi.apiPaymentsPaymentIdConfirmPut(
      paymentId: paymentId,
      confirmPaymentRequest: ConfirmPaymentRequest(
        isSuccess: isSuccess,
        failureReason: failureReason,
      ),
    );
  }

  String _normalizePaymentUrl(String raw) {
    if (raw.isEmpty) return raw;
    final parsed = Uri.tryParse(raw);
    if (parsed != null && parsed.hasScheme) {
      return raw;
    }
    final base = _dio.options.baseUrl;
    if (base.isEmpty) return raw;
    final baseUri = Uri.tryParse(base);
    if (baseUri == null) return raw;
    return baseUri.resolve(raw).toString();
  }

  PaymentMethod? _mapPaymentMethod(String? value) {
    if (value == null || value.isEmpty) return null;
    for (final method in PaymentMethod.values) {
      if (method.value.toLowerCase() == value.toLowerCase()) {
        return method;
      }
    }
    return null;
  }

  OrderStatus? _mapOrderStatus(String? value) {
    if (value == null || value.isEmpty) return null;
    for (final status in OrderStatus.values) {
      if (status.value.toLowerCase() == value.toLowerCase()) return status;
    }
    return null;
  }

  OrderType? _mapOrderType(String? value) {
    if (value == null || value.isEmpty) return null;
    for (final t in OrderType.values) {
      if (t.value.toLowerCase() == value.toLowerCase()) return t;
    }
    return null;
  }

  PaymentStatus? _mapPaymentStatus(String? value) {
    if (value == null || value.isEmpty) return null;
    for (final s in PaymentStatus.values) {
      if (s.value.toLowerCase() == value.toLowerCase()) return s;
    }
    return null;
  }
}
