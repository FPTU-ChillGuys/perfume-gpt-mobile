class CheckoutResult {
  final String? paymentId;
  final String? paymentUrl;
  final String? orderId;

  const CheckoutResult({this.paymentId, this.paymentUrl, this.orderId});

  factory CheckoutResult.fromJson(Map<String, dynamic> json) {
    // Support both camelCase and PascalCase keys from API
    return CheckoutResult(
      paymentId: (json['paymentId'] ?? json['PaymentId']) as String?,
      paymentUrl: (json['paymentUrl'] ?? json['PaymentUrl']) as String?,
      orderId: (json['orderId'] ?? json['OrderId']) as String?,
    );
  }
}
