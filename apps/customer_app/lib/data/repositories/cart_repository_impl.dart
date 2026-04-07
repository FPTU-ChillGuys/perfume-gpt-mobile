import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../core/utils/image_url_helper.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/entities/cart_total.dart';
import '../../domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final CartApi _api;

  CartRepositoryImpl(this._api);

  @override
  Future<List<CartItem>> getItems() async {
    final response = await _api.apiCartItemsGet();
    final items = response.data?.payload?.items ?? [];
    return items.map(_mapItem).toList();
  }

  @override
  Future<void> addItem(String variantId, {int quantity = 1}) async {
    await _api.apiCartItemsPost(
      createCartItemRequest: CreateCartItemRequest(
        variantId: variantId,
        quantity: quantity,
      ),
    );
  }

  @override
  Future<void> updateItem(String cartItemId, int quantity) async {
    await _api.apiCartItemsIdPut(
      id: cartItemId,
      updateCartItemRequest: UpdateCartItemRequest(quantity: quantity),
    );
  }

  @override
  Future<void> removeItem(String cartItemId) async {
    await _api.apiCartItemsIdDelete(id: cartItemId);
  }

  @override
  Future<void> clearCart() async {
    await _api.apiCartClearDelete();
  }

  @override
  Future<CartTotal> getTotal({
    String? voucherCode,
    List<String>? itemIds,
  }) async {
    final response = await _api.apiCartTotalGet(
      voucherCode: voucherCode,
      itemIds: itemIds,
    );
    final data = response.data?.payload;
    return CartTotal(
      subtotal: data?.subtotal?.toDouble() ?? 0.0,
      shippingFee: data?.shippingFee?.toDouble() ?? 0.0,
      discount: data?.discount?.toDouble() ?? 0.0,
      totalPrice: data?.totalPrice?.toDouble() ?? 0.0,
    );
  }

  CartItem _mapItem(GetCartItemResponse r) => CartItem(
    cartItemId: r.cartItemId ?? '',
    variantId: r.variantId ?? '',
    variantName: r.variantName,
    imageUrl: ImageUrlHelper.resolve(r.imageUrl),
    volumeMl: r.volumeMl,
    type: r.type?.name,
    variantPrice: r.variantPrice?.toDouble() ?? 0.0,
    quantity: r.quantity ?? 1,
    isAvailable: r.isAvailable ?? true,
    subTotal: r.subTotal?.toDouble() ?? 0.0,
  );
}
