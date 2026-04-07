import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';

part 'order_repository_impl.g.dart';

const _secureAuth = {
  'secure': <Map<String, String>>[
    {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
  ],
};

class OrderRepositoryImpl {
  final Dio _dio;

  OrderRepositoryImpl(this._dio);

  Future<Map<String, dynamic>?> getOrderById(String orderId) async {
    final response = await _dio.request<dynamic>(
      '/api/orders/$orderId',
      options: Options(method: 'GET', extra: _secureAuth),
    );
    final data = response.data;
    if (data is Map<String, dynamic>) {
      return data['payload'] as Map<String, dynamic>?;
    }
    return null;
  }

  Future<String?> checkoutInStore({
    required List<Map<String, dynamic>> orderDetails,
    required String paymentMethod,
    bool isPickupInStore = true,
    String? voucherCode,
    Map<String, dynamic>? recipient,
  }) async {
    final body = <String, dynamic>{
      'orderDetails': orderDetails,
      'payment': {'method': paymentMethod},
      'isPickupInStore': isPickupInStore,
    };
    if (voucherCode != null && voucherCode.isNotEmpty) {
      body['voucherCode'] = voucherCode;
    }
    if (recipient != null) {
      body['recipient'] = recipient;
    }

    final response = await _dio.request<dynamic>(
      '/api/orders/checkout-in-store',
      data: jsonEncode(body),
      options: Options(
        method: 'POST',
        contentType: 'application/json',
        extra: _secureAuth,
      ),
    );
    final data = response.data;
    if (data is Map<String, dynamic>) {
      return data['payload'] as String?;
    }
    return null;
  }

  Future<String?> retryPayment(
    String paymentId,
    String paymentMethod,
  ) async {
    final response = await _dio.request<dynamic>(
      '/api/payments/$paymentId/retry',
      data: jsonEncode({'method': paymentMethod}),
      options: Options(
        method: 'POST',
        contentType: 'application/json',
        extra: _secureAuth,
      ),
    );
    final data = response.data;
    if (data is Map<String, dynamic>) {
      return data['payload'] as String?;
    }
    return null;
  }

  Future<bool> confirmPayment(String paymentId, bool isSuccess) async {
    final response = await _dio.request<dynamic>(
      '/api/payments/$paymentId/confirm',
      data: jsonEncode({
        'isSuccess': isSuccess,
      }),
      options: Options(
        method: 'PUT',
        contentType: 'application/json',
        extra: _secureAuth,
      ),
    );
    return response.statusCode == 200;
  }

  Future<Map<String, dynamic>?> getVariantById(String variantId) async {
    final response = await _dio.request<dynamic>(
      '/api/productvariants/$variantId',
      options: Options(method: 'GET', extra: _secureAuth),
    );
    final data = response.data;
    if (data is Map<String, dynamic>) {
      return data['payload'] as Map<String, dynamic>?;
    }
    return null;
  }
}

@riverpod
OrderRepositoryImpl orderRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return OrderRepositoryImpl(apiClient.dio);
}
