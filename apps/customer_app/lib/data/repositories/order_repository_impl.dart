import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../core/utils/image_url_helper.dart';
import '../../domain/entities/checkout_result.dart';
import '../../domain/entities/order.dart';
import '../../domain/repositories/order_repository.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrdersApi _ordersApi;
  final PaymentsApi _paymentsApi;

  OrderRepositoryImpl(this._ordersApi, this._paymentsApi);

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
      payment: PaymentInformation(method: paymentMethod),
      deliveryMethod: deliveryMethod,
      itemIds: request.itemIds,
      expectedTotalPrice: request.expectedTotalPrice,
      voucherCode: request.voucherCode,
      savedAddressId: request.savedAddressId,
      recipient: recipient,
    );

    try {
      final response = await _ordersApi.apiOrdersCheckoutPost(
        createOrderRequest: body,
      );
      // If deserialization succeeded, payload is a string (old format)
      return _parseCheckoutPayload(response.data?.payload);
    } on DioException catch (e) {
      // The generated client expects BaseResponseOfstring but API may return
      // CreatePaymentResponseDto as payload object. If HTTP was successful
      // but deserialization failed, parse from the raw response.
      if (e.response != null &&
          e.response!.statusCode != null &&
          e.response!.statusCode! >= 200 &&
          e.response!.statusCode! < 300) {
        return _parseRawCheckoutResponse(e.response!.data);
      }
      final message = e.response?.data is Map
          ? (e.response!.data as Map)['message']?.toString()
          : null;
      throw Exception(message ?? 'Checkout failed');
    }
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
    OrderStatus? orderStatus;
    if (status != null) {
      orderStatus = OrderStatus.values.firstWhere(
        (e) => e.value.toLowerCase() == status.toLowerCase(),
        orElse: () => OrderStatus.pending,
      );
    }

    OrderType? orderType;
    if (type != null) {
      orderType = OrderType.values.firstWhere(
        (e) => e.value.toLowerCase() == type.toLowerCase(),
        orElse: () => OrderType.online,
      );
    }

    PaymentStatus? pStatus;
    if (paymentStatus != null) {
      pStatus = PaymentStatus.values.firstWhere(
        (e) => e.value.toLowerCase() == paymentStatus.toLowerCase(),
        orElse: () => PaymentStatus.unpaid,
      );
    }

    final response = await _ordersApi.apiOrdersMyOrdersGet(
      status: orderStatus,
      type: orderType,
      paymentStatus: pStatus,
      searchTerm: searchTerm,
      pageNumber: page,
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
        id: o.id?.toString() ?? '',
        code: o.code,
        type: o.type?.value,
        status: o.status?.value,
        paymentStatus: o.paymentStatus?.value,
        totalAmount: o.totalAmount?.toDouble() ?? 0.0,
        itemCount: o.itemCount,
        isReturnable: o.isReturnalbe ?? false,
        shippingStatus: o.shippingStatus?.value,
        createdAt: o.createdAt,
        orderDetails: o.orderDetails
            .map(
              (d) => OrderDetailItem(
                id: d.id?.toString() ?? '',
                variantId: d.variantId?.toString() ?? '',
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
    final o = response.data!.payload!;
    return OrderDetail(
      id: o.id?.toString() ?? '',
      code: o.code,
      type: o.type?.value,
      status: o.status?.value,
      isReturnable: o.isReturnable ?? false,
      paymentStatus: o.paymentStatus?.value,
      totalAmount: o.totalAmount?.toDouble() ?? 0.0,
      voucherCode: o.voucherCode,
      paymentExpiresAt: o.paymentExpiresAt,
      paidAt: o.paidAt,
      createdAt: o.createdAt,
      updatedAt: o.updatedAt,
      paymentTransactions:
          o.paymentTransactions
              ?.map(
                (p) => PaymentTransaction(
                  id: p.id?.toString() ?? '',
                  transactionType: p.transactionType?.value,
                  status: p.status?.value,
                  paymentMethod: p.paymentMethod?.value,
                  failureReason: p.failureReason,
                  totalAmount: p.totalAmount?.toDouble() ?? 0.0,
                ),
              )
              .toList() ??
          [],
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
              id: d.id?.toString() ?? '',
              variantId: d.variantId?.toString() ?? '',
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
    final r = response.data!.payload!;
    return Invoice(
      orderId: r.orderId?.toString(),
      code: r.code,
      orderDate: r.orderDate,
      orderStatus: r.orderStatus,
      staffName: r.staffName,
      customerName: r.customerName,
      recipientPhone: r.recipientPhone,
      recipientAddress: r.recipientAddress,
      items: r.items
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
      subtotal: r.subtotal?.toDouble() ?? 0.0,
      discount: r.discount?.toDouble() ?? 0.0,
      tax: r.tax?.toDouble() ?? 0.0,
      total: r.total?.toDouble() ?? 0.0,
      paymentMethod: r.paymentMethod,
      note: r.note,
    );
  }

  @override
  Future<void> updateOrderAddress(
    String orderId, {
    String? savedAddressId,
    RecipientAddress? recipient,
  }) async {
    ContactAddressInformation? recipientInfo;
    if (recipient != null) {
      recipientInfo = ContactAddressInformation(
        contactName: recipient.contactName,
        contactPhoneNumber: recipient.contactPhoneNumber,
        districtId: recipient.districtId,
        districtName: recipient.districtName,
        wardCode: recipient.wardCode,
        wardName: recipient.wardName,
        provinceId: recipient.provinceId,
        provinceName: recipient.provinceName,
        fullAddress: recipient.fullAddress,
      );
    }

    await _ordersApi.apiOrdersOrderIdAddressPut(
      orderId: orderId,
      updateOrderAddressRequest: UpdateOrderAddressRequest(
        savedAddressId: savedAddressId,
        recipientInformation: recipientInfo,
      ),
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
  Future<String> retryPayment(String paymentId, String paymentMethod) async {
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

    final response = await _paymentsApi.apiPaymentsPaymentIdRetryPost(
      paymentId: paymentId,
      paymentInformation: PaymentInformation(method: method),
    );
    return response.data?.payload ?? '';
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

  // ─── Checkout response parsing helpers ─────────────────────────
  CheckoutResult _parseCheckoutPayload(dynamic payload) {
    if (payload == null) return const CheckoutResult();
    if (payload is Map<String, dynamic>) {
      return CheckoutResult.fromJson(payload);
    }
    if (payload is String && payload.isNotEmpty) {
      try {
        final json = jsonDecode(payload) as Map<String, dynamic>;
        return CheckoutResult.fromJson(json);
      } catch (_) {
        return CheckoutResult(orderId: payload);
      }
    }
    return const CheckoutResult();
  }

  CheckoutResult _parseRawCheckoutResponse(dynamic responseData) {
    final data = responseData is String
        ? jsonDecode(responseData) as Map<String, dynamic>
        : responseData as Map<String, dynamic>;
    final payload = data['payload'] ?? data['Payload'];
    return _parseCheckoutPayload(payload);
  }
}
