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
      'subTotal': subTotal,
    };
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      cartItemId: json['cartItemId'],
      variantId: json['variantId'],
      variantName: json['variantName'],
      imageUrl: json['imageUrl'],
      volumeMl: json['volumeMl'],
      type: json['type'],
      variantPrice: (json['variantPrice'] as num).toDouble(),
      quantity: json['quantity'] as int,
      isAvailable: json['isAvailable'] as bool? ?? true,
      subTotal: (json['subTotal'] as num).toDouble(),
    );
  }
}
