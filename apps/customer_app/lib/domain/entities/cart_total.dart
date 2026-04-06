class CartTotal {
  final double subtotal;
  final double shippingFee;
  final double discount;
  final double totalPrice;

  const CartTotal({
    required this.subtotal,
    required this.shippingFee,
    required this.discount,
    required this.totalPrice,
  });
}
