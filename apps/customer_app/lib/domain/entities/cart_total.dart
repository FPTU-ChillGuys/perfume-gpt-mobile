class CartTotal {
  final double subtotal;
  final double shippingFee;
  final double discount;
  final double totalPrice;
  final String? warningMessage;
  final DepositPolicy? depositPolicy;

  const CartTotal({
    required this.subtotal,
    required this.shippingFee,
    required this.discount,
    required this.totalPrice,
    this.warningMessage,
    this.depositPolicy,
  });
}

class DepositPolicy {
  final bool isDepositRequired;
  final double depositRate;
  final double depositAmount;
  final double remainingAmount;

  const DepositPolicy({
    required this.isDepositRequired,
    required this.depositRate,
    required this.depositAmount,
    required this.remainingAmount,
  });
}
