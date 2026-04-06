import 'package:dio/dio.dart';
import '../../core/utils/image_url_helper.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/entities/cart_total.dart';
import '../../domain/repositories/cart_repository.dart';

const _authExtra = <String, dynamic>{
  'secure': <Map<String, String>>[
    {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
  ],
};

class CartRepositoryImpl implements CartRepository {
  final Dio _dio;

  CartRepositoryImpl(this._dio);

  @override
  Future<List<CartItem>> getItems() async {
    final response = await _dio.get<Map<String, dynamic>>(
      '/api/cart/items',
      options: Options(extra: _authExtra),
    );
    final payload = response.data?['payload'] as Map<String, dynamic>?;
    final items = (payload?['items'] as List?)?.cast<Map<String, dynamic>>() ?? [];
    return items.map(_mapItem).toList();
  }

  @override
  Future<void> addItem(String variantId, {int quantity = 1}) async {
    await _dio.post(
      '/api/cart/items',
      data: {'variantId': variantId, 'quantity': quantity},
      options: Options(
        contentType: 'application/json',
        extra: _authExtra,
      ),
    );
  }

  @override
  Future<void> updateItem(String cartItemId, int quantity) async {
    await _dio.put(
      '/api/cart/items/$cartItemId',
      data: {'quantity': quantity},
      options: Options(
        contentType: 'application/json',
        extra: _authExtra,
      ),
    );
  }

  @override
  Future<void> removeItem(String cartItemId) async {
    await _dio.delete(
      '/api/cart/items/$cartItemId',
      options: Options(extra: _authExtra),
    );
  }

  @override
  Future<void> clearCart() async {
    await _dio.delete(
      '/api/cart/clear',
      options: Options(extra: _authExtra),
    );
  }

  @override
  Future<CartTotal> getTotal({String? voucherCode, List<String>? itemIds}) async {
    final queryParams = <String, dynamic>{};
    if (voucherCode != null) queryParams['voucherCode'] = voucherCode;
    if (itemIds != null && itemIds.isNotEmpty) queryParams['itemIds'] = itemIds;

    final response = await _dio.get<Map<String, dynamic>>(
      '/api/cart/total',
      queryParameters: queryParams,
      options: Options(extra: _authExtra),
    );
    final data = response.data?['payload'] as Map<String, dynamic>?;
    return CartTotal(
      subtotal: _toDouble(data?['subtotal']),
      shippingFee: _toDouble(data?['shippingFee']),
      discount: _toDouble(data?['discount']),
      totalPrice: _toDouble(data?['totalPrice']),
    );
  }

  double _toDouble(dynamic v) => (v is num) ? v.toDouble() : 0.0;

  CartItem _mapItem(Map<String, dynamic> r) => CartItem(
        cartItemId: r['cartItemId'] as String? ?? '',
        variantId: r['variantId'] as String? ?? '',
        variantName: r['variantName'] as String? ?? '',
        imageUrl: ImageUrlHelper.resolve(r['imageUrl'] as String? ?? ''),
        volumeMl: r['volumeMl'] as int?,
        type: r['type'] as String?,
        variantPrice: _toDouble(r['variantPrice']),
        quantity: r['quantity'] as int? ?? 1,
        isAvailable: r['isAvailable'] as bool? ?? true,
        subTotal: _toDouble(r['subTotal']),
      );
}
