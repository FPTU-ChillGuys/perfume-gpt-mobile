import '../../domain/entities/cart_item.dart';

abstract class CartRepository {
  Future<List<CartItem>> getCart({bool isAuthenticated = false});
  Future<void> addToCart(
    String variantId,
    int quantity, {
    bool isAuthenticated = false,
  });
  Future<void> updateCartItem(
    String cartItemIdOrVariantId,
    int quantity, {
    bool isAuthenticated = false,
  });
  Future<void> removeFromCart(
    String cartItemIdOrVariantId, {
    bool isAuthenticated = false,
  });
  Future<void> clearCart({bool isAuthenticated = false});
  Future<void> mergeCart(List<CartItem> localItems);
}
