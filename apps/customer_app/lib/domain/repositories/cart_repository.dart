import '../entities/cart_item.dart';
import '../entities/cart_total.dart';

abstract class CartRepository {
  Future<List<CartItem>> getItems();
  Future<void> addItem(String variantId, {int quantity = 1});
  Future<void> updateItem(String cartItemId, int quantity);
  Future<void> removeItem(String cartItemId);
  Future<void> clearCart();
  Future<CartTotal> getTotal({String? voucherCode, List<String>? itemIds});
}
