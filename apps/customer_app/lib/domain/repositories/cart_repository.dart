import '../entities/cart_item.dart';
import '../entities/cart_total.dart';

abstract class CartRepository {
  Future<List<CartItem>> getItems({bool isAuthenticated = false});
  Future<void> addItem(String variantId, {int quantity = 1, bool isAuthenticated = false});
  Future<void> updateItem(String cartItemId, int quantity, {bool isAuthenticated = false});
  Future<void> removeItem(String cartItemId, {bool isAuthenticated = false});
  Future<void> clearCart({bool isAuthenticated = false});
  Future<void> mergeCart(List<CartItem> localItems);
  Future<CartTotal> getTotal({
    String? voucherCode,
    List<String>? itemIds,
    String? savedAddressId,
    String? recipientContactName,
    String? recipientContactPhoneNumber,
    int? recipientDistrictId,
    String? recipientDistrictName,
    String? recipientWardCode,
    String? recipientWardName,
    int? recipientProvinceId,
    String? recipientProvinceName,
    String? recipientFullAddress,
  });
}
