/// A cart item as returned by the server API (GET /api/cart/items).
/// The server is the source of truth — no local Product reference needed.
class CartItem {
  final String cartItemId;
  final String variantId;
  final String variantName;
  final String imageUrl;
  final int? volumeMl;
  final String? type;
  final double variantPrice;
  final int quantity;
  final bool isAvailable;
  final double subTotal;

  const CartItem({
    required this.cartItemId,
    required this.variantId,
    required this.variantName,
    required this.imageUrl,
    this.volumeMl,
    this.type,
    required this.variantPrice,
    required this.quantity,
    required this.isAvailable,
    required this.subTotal,
  });

  CartItem copyWith({
    String? cartItemId,
    String? variantId,
    String? variantName,
    String? imageUrl,
    int? volumeMl,
    String? type,
    double? variantPrice,
    int? quantity,
    bool? isAvailable,
    double? subTotal,
  }) {
    return CartItem(
      cartItemId: cartItemId ?? this.cartItemId,
      variantId: variantId ?? this.variantId,
      variantName: variantName ?? this.variantName,
      imageUrl: imageUrl ?? this.imageUrl,
      volumeMl: volumeMl ?? this.volumeMl,
      type: type ?? this.type,
      variantPrice: variantPrice ?? this.variantPrice,
      quantity: quantity ?? this.quantity,
      isAvailable: isAvailable ?? this.isAvailable,
      subTotal: subTotal ?? this.subTotal,
    );
  }
}

