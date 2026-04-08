import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../domain/entities/cart_item.dart';

class LocalCartDataSource {
  final FlutterSecureStorage _storage;
  static const _cartKey = 'local_cart';

  LocalCartDataSource(this._storage);

  Future<List<CartItem>> getCart() async {
    final cartJson = await _storage.read(key: _cartKey);
    if (cartJson == null) return [];
    final List<dynamic> decoded = jsonDecode(cartJson);
    return decoded.map((item) => CartItem.fromJson(item)).toList();
  }

  Future<void> saveCart(List<CartItem> cart) async {
    final cartJson = jsonEncode(cart.map((item) => item.toJson()).toList());
    await _storage.write(key: _cartKey, value: cartJson);
  }

  Future<void> clearCart() async {
    await _storage.delete(key: _cartKey);
  }
}
