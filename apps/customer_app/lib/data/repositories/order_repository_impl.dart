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
  final Dio _dio;

  OrderRepositoryImpl(this._ordersApi, this._paymentsApi, this._dio);

  static const Map<String, String> _bearerSecure = {
    'type': 'http',
    'scheme': 'bearer',
    'name': 'Bearer',
  };

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
      final bodyJson = body.toJson();
      if (request.depositGateway != null && request.depositGateway!.isNotEmpty) {
        bodyJson['payment'] = {
          ...(bodyJson['payment'] as Map<String, dynamic>? ??
              <String, dynamic>{}),
          'depositGateway': request.depositGateway,
        };
      }
      final response = await _dio.post(
        '/api/orders/checkout',
        data: bodyJson,
        options: Options(extra: const {'secure': [_bearerSecure]}),
      );
      final payload = (response.data as Map<String, dynamic>?)?['payload'];
      if (payload != null) {
        final payloadMap = payload as Map<String, dynamic>;
        return CheckoutResult(
          paymentId: payloadMap['paymentId']?.toString(),
          paymentUrl: payloadMap['paymentUrl']?.toString(),
          orderId: payloadMap['orderId']?.toString(),
        );
      }
      return const CheckoutResult();
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
    final response = await _dio.get(
      '/api/orders/my-orders',
      queryParameters: <String, dynamic>{
        if (status != null && status.isNotEmpty) 'Status': status,
        if (type != null && type.isNotEmpty) 'Type': type,
        if (paymentStatus != null && paymentStatus.isNotEmpty)
          'PaymentStatus': paymentStatus,
        if (searchTerm != null && searchTerm.isNotEmpty) 'SearchTerm': searchTerm,
        'PageNumber': page ?? 1,
        'PageSize': pageSize ?? 20,
        'SortBy': 'CreatedAt',
        'SortOrder': 'desc',
        'IsDescending': true,
      },
      options: Options(extra: const {'secure': [_bearerSecure]}),
    );
    final payload = (response.data as Map<String, dynamic>?)?['payload']
        as Map<String, dynamic>?;
    if (payload == null) {
      return const PaginatedOrders(
        items: [],
        totalCount: 0,
        totalPages: 0,
        hasNextPage: false,
        hasPreviousPage: false,
      );
    }
    final payloadItems =
        (payload['items'] as List?)?.cast<Map<String, dynamic>>() ??
        const <Map<String, dynamic>>[];
    final items = payloadItems.map((o) {
      final detailItems =
          (o['orderDetails'] as List?)?.cast<Map<String, dynamic>>() ??
          const <Map<String, dynamic>>[];
      return OrderSummary(
        id: o['id']?.toString() ?? '',
        code: o['code']?.toString() ?? '',
        type: o['type']?.toString(),
        status: o['status']?.toString(),
        paymentStatus: o['paymentStatus']?.toString(),
        totalAmount: (o['totalAmount'] as num?)?.toDouble() ?? 0.0,
        requiredDepositAmount:
            (o['requiredDepositAmount'] as num?)?.toDouble() ?? 0.0,
        depositAmount: (o['depositAmount'] as num?)?.toDouble() ?? 0.0,
        paidAmount: (o['paidAmount'] as num?)?.toDouble() ?? 0.0,
        remainingAmount: (o['remainingAmount'] as num?)?.toDouble() ?? 0.0,
        itemCount: (o['itemCount'] as num?)?.toInt(),
        isReturnable:
            (o['isReturnable'] as bool?) ?? (o['isReturnalbe'] as bool?),
        shippingStatus: o['shippingStatus']?.toString(),
        createdAt: DateTime.tryParse(o['createdAt']?.toString() ?? ''),
        orderDetails: detailItems
            .map(
              (d) => OrderDetailItem(
                id: d['id']?.toString() ?? '',
                variantId: d['variantId']?.toString() ?? '',
                variantName: d['variantName']?.toString() ?? '',
                imageUrl: ImageUrlHelper.resolve(d['imageUrl']?.toString() ?? ''),
                quantity: (d['quantity'] as num?)?.toInt() ?? 0,
                unitPrice: (d['unitPrice'] as num?)?.toDouble() ?? 0.0,
                total:
                    (d['total'] as num?)?.toDouble() ??
                    (d['itemTotal'] as num?)?.toDouble() ??
                    0.0,
              ),
            )
            .toList(),
      );
    }).toList();
    return PaginatedOrders(
      items: items,
      totalCount: (payload['totalCount'] as num?)?.toInt() ?? 0,
      totalPages: (payload['totalPages'] as num?)?.toInt() ?? 0,
      hasNextPage: payload['hasNextPage'] as bool? ?? false,
      hasPreviousPage: payload['hasPreviousPage'] as bool? ?? false,
    );
  }

  @override
  Future<OrderDetail> getOrderDetail(String orderId) async {
    final response = await _dio.get(
      '/api/orders/my-orders/$orderId',
      options: Options(extra: const {'secure': [_bearerSecure]}),
    );
    final o = (response.data as Map<String, dynamic>?)?['payload']
        as Map<String, dynamic>? ?? <String, dynamic>{};
    final paymentTransactions =
        (o['paymentTransactions'] as List?)?.cast<Map<String, dynamic>>() ??
        const <Map<String, dynamic>>[];
    final orderDetails =
        (o['orderDetails'] as List?)?.cast<Map<String, dynamic>>() ??
        const <Map<String, dynamic>>[];
    final shippingInfo = o['shippingInfo'] as Map<String, dynamic>?;
    final recipientInfo = o['recipientInfo'] as Map<String, dynamic>?;
    return OrderDetail(
      id: o['id']?.toString() ?? '',
      code: o['code']?.toString() ?? '',
      type: o['type']?.toString(),
      status: o['status']?.toString(),
      isReturnable: o['isReturnable'] as bool? ?? false,
      paymentStatus: o['paymentStatus']?.toString(),
      totalAmount: (o['totalAmount'] as num?)?.toDouble() ?? 0.0,
      requiredDepositAmount:
          (o['requiredDepositAmount'] as num?)?.toDouble() ?? 0.0,
      depositAmount: (o['depositAmount'] as num?)?.toDouble() ?? 0.0,
      paidAmount: (o['paidAmount'] as num?)?.toDouble() ?? 0.0,
      remainingAmount: (o['remainingAmount'] as num?)?.toDouble() ?? 0.0,
      subTotal: (o['subTotal'] as num?)?.toDouble() ?? 0.0,
      shippingFee: (o['shippingFee'] as num?)?.toDouble() ?? 0.0,
      voucherCode: o['voucherCode']?.toString(),
      voucherType: o['voucherType']?.toString(),
      voucherDiscountTotal:
          (o['voucherDiscountTotal'] as num?)?.toDouble() ?? 0.0,
      paymentExpiresAt: DateTime.tryParse(o['paymentExpiresAt']?.toString() ?? ''),
      paidAt: DateTime.tryParse(o['paidAt']?.toString() ?? ''),
      createdAt: DateTime.tryParse(o['createdAt']?.toString() ?? ''),
      updatedAt: DateTime.tryParse(o['updatedAt']?.toString() ?? ''),
      paymentTransactions: paymentTransactions
          .map(
            (p) => PaymentTransaction(
              id: p['id']?.toString() ?? '',
              transactionType: p['transactionType']?.toString(),
              status: p['status']?.toString(),
              paymentMethod: p['paymentMethod']?.toString(),
              failureReason: p['failureReason']?.toString(),
              totalAmount: (p['totalAmount'] as num?)?.toDouble() ?? 0.0,
            ),
          )
          .toList(),
      shippingInfo: shippingInfo != null
          ? ShippingInfo(
              carrierName: shippingInfo['carrierName']?.toString(),
              trackingNumber: shippingInfo['trackingNumber']?.toString(),
              shippingFee:
                  (shippingInfo['shippingFee'] as num?)?.toDouble() ?? 0.0,
              status: shippingInfo['status']?.toString(),
              estimatedDeliveryDate: DateTime.tryParse(
                shippingInfo['estimatedDeliveryDate']?.toString() ?? '',
              ),
            )
          : null,
      recipientInfo: recipientInfo != null
          ? RecipientInfo(
              name: recipientInfo['recipientName']?.toString(),
              phoneNumber: recipientInfo['recipientPhoneNumber']?.toString(),
              districtName: recipientInfo['districtName']?.toString(),
              wardName: recipientInfo['wardName']?.toString(),
              provinceName: recipientInfo['provinceName']?.toString(),
              fullAddress: recipientInfo['fullAddress']?.toString(),
            )
          : null,
      orderDetails: orderDetails
          .map(
            (d) => OrderDetailItem(
              id: d['id']?.toString() ?? '',
              variantId: d['variantId']?.toString() ?? '',
              variantName: d['variantName']?.toString() ?? '',
              imageUrl: ImageUrlHelper.resolve(d['imageUrl']?.toString() ?? ''),
              quantity: (d['quantity'] as num?)?.toInt() ?? 0,
              unitPrice: (d['unitPrice'] as num?)?.toDouble() ?? 0.0,
              total:
                  (d['total'] as num?)?.toDouble() ??
                  (d['itemTotal'] as num?)?.toDouble() ??
                  0.0,
            ),
          )
          .toList(),
    );
  }

  @override
  Future<Invoice> getInvoice(String orderId) async {
    final response = await _dio.get(
      '/api/orders/my-orders/$orderId/invoice',
      options: Options(extra: const {'secure': [_bearerSecure]}),
    );
    final payload = (response.data as Map<String, dynamic>?)?['payload']
        as Map<String, dynamic>? ?? <String, dynamic>{};
    final itemsPayload =
        (payload['items'] as List?)?.cast<Map<String, dynamic>>() ??
        const <Map<String, dynamic>>[];
    return Invoice(
      orderId: payload['orderId']?.toString(),
      code: payload['code']?.toString() ?? '',
      orderDate: DateTime.tryParse(payload['orderDate']?.toString() ?? ''),
      orderStatus: payload['orderStatus']?.toString() ?? '',
      staffName: payload['staffName']?.toString() ?? '',
      customerName: payload['customerName']?.toString() ?? '',
      recipientPhone: payload['recipientPhone']?.toString() ?? '',
      recipientAddress: payload['recipientAddress']?.toString() ?? '',
      items: itemsPayload
          .map(
            (i) => InvoiceItem(
              productName: i['productName']?.toString() ?? '',
              variantInfo: i['variantInfo']?.toString() ?? '',
              quantity: (i['quantity'] as num?)?.toInt() ?? 0,
              unitPrice: (i['unitPrice'] as num?)?.toDouble() ?? 0.0,
              subtotal: (i['subtotal'] as num?)?.toDouble() ?? 0.0,
            ),
          )
          .toList(),
      subtotal: (payload['subtotal'] as num?)?.toDouble() ?? 0.0,
      depositAmount:
          (payload['depositeAmount'] as num?)?.toDouble() ??
          (payload['depositAmount'] as num?)?.toDouble() ??
          0.0,
      remainingAmount: (payload['remainingAmount'] as num?)?.toDouble() ?? 0.0,
      shippingFee: (payload['shippingFee'] as num?)?.toDouble() ?? 0.0,
      discount: (payload['discount'] as num?)?.toDouble() ?? 0.0,
      tax: (payload['tax'] as num?)?.toDouble() ?? 0.0,
      total: (payload['total'] as num?)?.toDouble() ?? 0.0,
      paymentMethod: payload['paymentMethod']?.toString() ?? '',
      note: payload['note']?.toString(),
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

    final payload = <String, dynamic>{
      'newPaymentMethod': method?.value,
      'newDepositMethod': newDepositMethod,
      'posSessionId': posSessionId,
    };
    final response = await _dio.post(
      '/api/payments/$paymentId/retry',
      data: payload,
      options: Options(extra: const {'secure': [_bearerSecure]}),
    );
    final payloadData = (response.data as Map<String, dynamic>?)?['payload'];
    if (payloadData is String) {
      return _normalizePaymentUrl(payloadData);
    }
    if (payloadData is Map<String, dynamic>) {
      final paymentUrl = payloadData['paymentUrl']?.toString();
      return _normalizePaymentUrl(paymentUrl ?? '');
    }
    return '';
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
}
