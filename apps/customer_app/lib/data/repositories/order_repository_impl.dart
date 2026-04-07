import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../core/utils/image_url_helper.dart';
import '../../domain/entities/order.dart';
import '../../domain/repositories/order_repository.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrdersApi _ordersApi;
  // ignore: unused_field - kept for potential future use
  final PaymentsApi _paymentsApi;
  final Dio _dio;

  OrderRepositoryImpl(this._ordersApi, this._paymentsApi, this._dio);

  @override
  Future<String> checkout(CheckoutRequest request) async {
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

    try {
      final response = await _ordersApi.apiOrdersCheckoutPost(
        createOrderRequest: CreateOrderRequest(
          payment: PaymentInformation(method: paymentMethod),
          deliveryMethod: deliveryMethod,
          itemIds: request.itemIds,
          expectedTotalPrice: request.expectedTotalPrice,
          voucherCode: request.voucherCode,
          savedAddressId: request.savedAddressId,
          recipient: recipient,
        ),
      );
      return response.data?.payload ?? '';
    } on DioException catch (e) {
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
    final queryParameters = <String, dynamic>{
      if (status != null) 'Status': status,
      if (type != null) 'Type': type,
      if (paymentStatus != null) 'PaymentStatus': paymentStatus,
      if (searchTerm != null) 'SearchTerm': searchTerm,
      if (page != null) 'PageNumber': page,
      'PageSize': pageSize ?? 20,
      'SortBy': 'CreatedAt',
      'SortOrder': 'desc',
      'IsDescending': true,
    };

    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/orders/my-orders',
        queryParameters: queryParameters,
        options: Options(
          extra: <String, dynamic>{
            'secure': <Map<String, String>>[
              {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
            ],
          },
        ),
      );
      return _parseMyOrdersFromRaw(response.data);
    } on DioException catch (e) {
      final statusCode = e.response?.statusCode;
      if (statusCode != null && statusCode >= 200 && statusCode < 300) {
        return _parseMyOrdersFromRaw(e.response?.data);
      }
      rethrow;
    }
  }

  PaginatedOrders _parseMyOrdersFromRaw(dynamic raw) {
    if (raw is! Map<String, dynamic>) {
      return const PaginatedOrders(
        items: [], totalCount: 0, totalPages: 0,
        hasNextPage: false, hasPreviousPage: false,
      );
    }
    final payload = raw['payload'] as Map<String, dynamic>?;
    if (payload == null) {
      return const PaginatedOrders(
        items: [], totalCount: 0, totalPages: 0,
        hasNextPage: false, hasPreviousPage: false,
      );
    }
    final rawItems = (payload['items'] as List?)?.cast<Map<String, dynamic>>() ?? [];
    final items = rawItems.map((o) {
        final details = (o['orderDetails'] as List?)?.cast<Map<String, dynamic>>() ?? [];
        return OrderSummary(
          id: (o['id'] ?? '').toString(),
          code: (o['code'] ?? '').toString(),
          type: o['type']?.toString(),
          status: o['status']?.toString(),
          paymentStatus: o['paymentStatus']?.toString(),
          totalAmount: (o['totalAmount'] as num? ?? 0).toDouble(),
          itemCount: o['itemCount'] as int?,
          isReturnable: o['isReturnalbe'] as bool?,
          shippingStatus: o['shippingStatus']?.toString(),
          createdAt: o['createdAt'] != null ? DateTime.tryParse(o['createdAt'].toString()) : null,
          orderDetails: details.map((d) => OrderDetailItem(
            id: (d['id'] ?? '').toString(),
            variantId: (d['variantId'] ?? '').toString(),
            variantName: (d['variantName'] ?? '').toString(),
            imageUrl: d['imageUrl'] != null ? ImageUrlHelper.resolve(d['imageUrl'].toString()) : null,
            quantity: (d['quantity'] as num? ?? 0).toInt(),
            unitPrice: (d['unitPrice'] as num? ?? 0).toDouble(),
            total: (d['total'] as num? ?? 0).toDouble(),
          )).toList(),
        );
      }).toList()
        ..sort((a, b) {
          final aDate = a.createdAt;
          final bDate = b.createdAt;
          if (aDate == null && bDate == null) return 0;
          if (aDate == null) return 1;
          if (bDate == null) return -1;
          return bDate.compareTo(aDate); // newest first
        });
    return PaginatedOrders(
      items: items,
      totalCount: (payload['totalCount'] as num? ?? 0).toInt(),
      totalPages: (payload['totalPages'] as num? ?? 0).toInt(),
      hasNextPage: payload['hasNextPage'] as bool? ?? false,
      hasPreviousPage: payload['hasPreviousPage'] as bool? ?? false,
    );
  }

  @override
  Future<OrderDetail> getOrderDetail(String orderId) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/orders/my-orders/$orderId',
        options: Options(
          extra: <String, dynamic>{
            'secure': <Map<String, String>>[
              {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
            ],
          },
        ),
      );
      return _parseOrderDetailFromRaw(response.data);
    } on DioException catch (e) {
      final status = e.response?.statusCode;
      if (status != null && status >= 200 && status < 300) {
        return _parseOrderDetailFromRaw(e.response?.data);
      }
      rethrow;
    }
  }

  OrderDetail _parseOrderDetailFromRaw(dynamic raw) {
    final data = raw is Map<String, dynamic> ? raw : <String, dynamic>{};
    final o = data['payload'] as Map<String, dynamic>? ?? {};
    final txns = (o['paymentTransactions'] as List?)?.cast<Map<String, dynamic>>() ?? [];
    debugPrint('[getOrderDetail] orderId=${o['id']}, txns=$txns');
    final shipping = o['shippingInfo'] as Map<String, dynamic>?;
    final recipient = o['recipientInfo'] as Map<String, dynamic>?;
    final details = (o['orderDetails'] as List?)?.cast<Map<String, dynamic>>() ?? [];
    return OrderDetail(
      id: (o['id'] ?? '').toString(),
      code: (o['code'] ?? '').toString(),
      type: o['type']?.toString(),
      status: o['status']?.toString(),
      isReturnable: o['isReturnable'] as bool?,
      paymentStatus: o['paymentStatus']?.toString(),
      totalAmount: (o['totalAmount'] as num? ?? 0).toDouble(),
      voucherCode: o['voucherCode']?.toString(),
      paymentExpiresAt: o['paymentExpiresAt'] != null ? DateTime.tryParse(o['paymentExpiresAt'].toString()) : null,
      paidAt: o['paidAt'] != null ? DateTime.tryParse(o['paidAt'].toString()) : null,
      createdAt: o['createdAt'] != null ? DateTime.tryParse(o['createdAt'].toString()) : null,
      updatedAt: o['updatedAt'] != null ? DateTime.tryParse(o['updatedAt'].toString()) : null,
      paymentTransactions: txns.map((p) => PaymentTransaction(
        id: (p['id'] ?? '').toString(),
        transactionType: p['transactionType']?.toString(),
        status: p['status']?.toString(),
        paymentMethod: p['paymentMethod']?.toString(),
        failureReason: p['failureReason']?.toString(),
        totalAmount: (p['totalAmount'] as num? ?? 0).toDouble(),
      )).toList(),
      shippingInfo: shipping != null ? ShippingInfo(
        carrierName: shipping['carrierName']?.toString(),
        trackingNumber: shipping['trackingNumber']?.toString(),
        shippingFee: (shipping['shippingFee'] as num? ?? 0).toDouble(),
        status: shipping['status']?.toString(),
        estimatedDeliveryDate: shipping['estimatedDeliveryDate'] != null
            ? DateTime.tryParse(shipping['estimatedDeliveryDate'].toString())
            : null,
      ) : null,
      recipientInfo: recipient != null ? RecipientInfo(
        name: recipient['recipientName']?.toString(),
        phoneNumber: recipient['recipientPhoneNumber']?.toString(),
        districtName: recipient['districtName']?.toString(),
        wardName: recipient['wardName']?.toString(),
        provinceName: recipient['provinceName']?.toString(),
        fullAddress: recipient['fullAddress']?.toString(),
      ) : null,
      orderDetails: details.map((d) => OrderDetailItem(
        id: (d['id'] ?? '').toString(),
        variantId: (d['variantId'] ?? '').toString(),
        variantName: (d['variantName'] ?? '').toString(),
        imageUrl: d['imageUrl'] != null ? ImageUrlHelper.resolve(d['imageUrl'].toString()) : null,
        quantity: (d['quantity'] as num? ?? 0).toInt(),
        unitPrice: (d['unitPrice'] as num? ?? 0).toDouble(),
        total: (d['total'] as num? ?? 0).toDouble(),
      )).toList(),
    );
  }

  @override
  Future<Invoice> getInvoice(String orderId) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/api/orders/my-orders/$orderId/invoice',
        options: Options(
          extra: <String, dynamic>{
            'secure': <Map<String, String>>[
              {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
            ],
          },
        ),
      );
      return _parseInvoiceFromRaw(response.data);
    } on DioException catch (e) {
      final status = e.response?.statusCode;
      if (status != null && status >= 200 && status < 300) {
        return _parseInvoiceFromRaw(e.response?.data);
      }
      rethrow;
    }
  }

  Invoice _parseInvoiceFromRaw(dynamic raw) {
    final data = raw is Map<String, dynamic> ? raw : <String, dynamic>{};
    final r = data['payload'] as Map<String, dynamic>? ?? {};
    final rawItems = (r['items'] as List?)?.cast<Map<String, dynamic>>() ?? [];
    return Invoice(
      orderId: r['orderId']?.toString(),
      code: (r['code'] ?? '').toString(),
      orderDate: r['orderDate'] != null ? DateTime.tryParse(r['orderDate'].toString()) : null,
      orderStatus: (r['orderStatus'] ?? '').toString(),
      staffName: (r['staffName'] ?? '').toString(),
      customerName: (r['customerName'] ?? '').toString(),
      recipientPhone: (r['recipientPhone'] ?? '').toString(),
      recipientAddress: (r['recipientAddress'] ?? '').toString(),
      items: rawItems.map((i) => InvoiceItem(
        productName: (i['productName'] ?? '').toString(),
        variantInfo: (i['variantInfo'] ?? '').toString(),
        quantity: (i['quantity'] as num? ?? 0).toInt(),
        unitPrice: (i['unitPrice'] as num? ?? 0).toDouble(),
        subtotal: (i['subtotal'] as num? ?? 0).toDouble(),
      )).toList(),
      subtotal: (r['subtotal'] as num? ?? 0).toDouble(),
      discount: (r['discount'] as num? ?? 0).toDouble(),
      tax: (r['tax'] as num? ?? 0).toDouble(),
      total: (r['total'] as num? ?? 0).toDouble(),
      paymentMethod: (r['paymentMethod'] ?? '').toString(),
      note: r['note']?.toString(),
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

    try {
      await _ordersApi.apiOrdersOrderIdAddressPut(
        orderId: orderId,
        updateOrderAddressRequest: UpdateOrderAddressRequest(
          savedAddressId: savedAddressId,
          recipientInformation: recipientInfo,
        ),
      );
    } on DioException catch (e) {
      final status = e.response?.statusCode;
      if (status != null && status >= 200 && status < 300) return;
      final message = e.response?.data is Map
          ? (e.response!.data as Map)['message']?.toString()
          : null;
      throw Exception(message ?? 'Failed to update address');
    }
  }

  @override
  Future<void> cancelOrder(String orderId, String reason) async {
    CancelOrderReason? cancelReason;
    switch (reason) {
      case 'ChangedMind':
        cancelReason = CancelOrderReason.changedMind;
        break;
      case 'FoundBetterPrice':
        cancelReason = CancelOrderReason.foundBetterPrice;
        break;
      case 'WrongShippingInformation':
        cancelReason = CancelOrderReason.wrongShippingInformation;
        break;
      case 'PaymentIssue':
        cancelReason = CancelOrderReason.paymentIssue;
        break;
      case 'DeliveryTooLate':
        cancelReason = CancelOrderReason.deliveryTooLate;
        break;
      case 'InsufficientStock':
        cancelReason = CancelOrderReason.insufficientStock;
        break;
    }

    try {
      await _ordersApi.apiOrdersOrderIdCancelPost(
        orderId: orderId,
        userCancelOrderRequest: UserCancelOrderRequest(
          reason: cancelReason,
        ),
      );
    } on DioException catch (e) {
      final status = e.response?.statusCode;
      if (status != null && status >= 200 && status < 300) return;
      rethrow;
    }
  }

  @override
  Future<String> retryPayment(String paymentId, String paymentMethod) async {
    debugPrint('[retryPayment] paymentId=$paymentId, method=$paymentMethod');
    try {
      final response = await _dio.post<dynamic>(
        '/api/payments/$paymentId/retry',
        data: {'method': paymentMethod},
        options: Options(
          contentType: 'application/json',
          extra: <String, dynamic>{
            'secure': <Map<String, String>>[
              {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
            ],
          },
        ),
      );
      final data = response.data;
      if (data is Map<String, dynamic>) {
        return (data['payload'] as String?) ?? '';
      }
      return '';
    } on DioException catch (e) {
      final status = e.response?.statusCode;
      if (status != null && status >= 200 && status < 300) {
        final data = e.response?.data;
        if (data is Map<String, dynamic>) {
          return (data['payload'] as String?) ?? '';
        }
        return '';
      }
      final message = e.response?.data is Map
          ? (e.response!.data as Map)['message']?.toString()
          : null;
      throw Exception(message ?? 'Retry payment failed');
    }
  }

  @override
  Future<void> confirmPayment(String paymentId, {required bool isSuccess, String? failureReason}) async {
    try {
      await _dio.put<Map<String, dynamic>>(
        '/api/payments/$paymentId/confirm',
        data: {
          'isSuccess': isSuccess,
          'failureReason': failureReason,
        },
        options: Options(
          contentType: 'application/json',
          extra: <String, dynamic>{
            'secure': <Map<String, String>>[
              {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
            ],
          },
        ),
      );
    } on DioException catch (e) {
      final status = e.response?.statusCode;
      if (status != null && status >= 200 && status < 300) return;
      rethrow;
    }
  }
}
