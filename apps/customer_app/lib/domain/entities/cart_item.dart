/// A cart item as returned by the server API (GET /api/cart/items).
/// The server is the source of truth — no local Product reference needed.
class CartItem {
  final String? cartItemId; // Nullable for guest items not yet synced
  final String variantId;
  final String variantName;
  final String imageUrl;
  final int? volumeMl;
  final String? type;
  final double variantPrice;
  final int quantity;
  final bool isAvailable;
  final double discount;
  final double finalTotal;
  final double subTotal;

  const CartItem({
    this.cartItemId,
    required this.variantId,
    required this.variantName,
    required this.imageUrl,
    this.volumeMl,
    this.type,
    required this.variantPrice,
    required this.quantity,
    this.isAvailable = true,
    this.discount = 0.0,
    this.finalTotal = 0.0,
    required this.subTotal,
  });

  bool get hasDiscount => discount > 0 && subTotal > 0;
  double get unitFinalPrice =>
      quantity > 0 && finalTotal > 0 ? finalTotal / quantity : variantPrice;

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
    double? discount,
    double? finalTotal,
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
      discount: discount ?? this.discount,
      finalTotal: finalTotal ?? this.finalTotal,
      subTotal: subTotal ?? this.subTotal,
    );
  }

  double get totalPrice => variantPrice * quantity;

  Map<String, dynamic> toJson() {
    return {
      'cartItemId': cartItemId,
      'variantId': variantId,
      'variantName': variantName,
      'imageUrl': imageUrl,
      'volumeMl': volumeMl,
      'type': type,
      'variantPrice': variantPrice,
      'quantity': quantity,
      'isAvailable': isAvailable,
      'discount': discount,
      'finalTotal': finalTotal,
      'subTotal': subTotal,
    };
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      cartItemId: json['cartItemId'] as String?,
      variantId: (json['variantId'] as String?) ?? '',
      variantName: (json['variantName'] as String?) ?? '',
      imageUrl: (json['imageUrl'] as String?) ?? '',
      volumeMl: json['volumeMl'] as int?,
      type: json['type'] as String?,
      variantPrice: (json['variantPrice'] as num?)?.toDouble() ?? 0.0,
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      isAvailable: json['isAvailable'] as bool? ?? true,
      discount: (json['discount'] as num?)?.toDouble() ?? 0.0,
      finalTotal: (json['finalTotal'] as num?)?.toDouble() ?? 0.0,
      subTotal: (json['subTotal'] as num?)?.toDouble() ?? 0.0,
    );
  }
}
