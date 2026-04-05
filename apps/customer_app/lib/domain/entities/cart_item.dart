import 'product.dart';

class CartItem {
  final String? id; // Server-side cart item ID
  final String variantId;
  final Product product;
  final int quantity;

  const CartItem({
    this.id,
    required this.variantId,
    required this.product,
    required this.quantity,
  });

  CartItem copyWith({
    String? id,
    String? variantId,
    Product? product,
    int? quantity,
  }) {
    return CartItem(
      id: id ?? this.id,
      variantId: variantId ?? this.variantId,
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }

  double get totalPrice => product.price * quantity;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'variantId': variantId,
      'product_id': product.id,
      'product_name': product.name,
      'product_price': product.price,
      'product_imageUrl': product.imageUrl,
      'quantity': quantity,
    };
  }

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      id: json['id'],
      variantId: json['variantId'],
      product: Product(
        id: json['product_id'],
        name: json['product_name'],
        price: json['product_price'],
        imageUrl: json['product_imageUrl'],
        description: '',
        scentNotes: [],
        brand: '',
        rating: 0,
        reviewCount: 0,
      ),
      quantity: json['quantity'],
    );
  }
}
