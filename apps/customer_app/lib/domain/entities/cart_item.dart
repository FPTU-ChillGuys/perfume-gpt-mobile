import 'product.dart';

class CartItem {
  final Product product;
  final String? selectedVariantId;
  final String? selectedVariantName;
  final double? selectedVariantPrice;
  final int quantity;

  const CartItem({
    required this.product,
    this.selectedVariantId,
    this.selectedVariantName,
    this.selectedVariantPrice,
    required this.quantity,
  });

  CartItem copyWith({
    Product? product,
    String? selectedVariantId,
    String? selectedVariantName,
    double? selectedVariantPrice,
    int? quantity,
  }) {
    return CartItem(
      product: product ?? this.product,
      selectedVariantId: selectedVariantId ?? this.selectedVariantId,
      selectedVariantName: selectedVariantName ?? this.selectedVariantName,
      selectedVariantPrice: selectedVariantPrice ?? this.selectedVariantPrice,
      quantity: quantity ?? this.quantity,
    );
  }

  double get unitPrice => selectedVariantPrice ?? product.price;

  double get totalPrice => unitPrice * quantity;
}
