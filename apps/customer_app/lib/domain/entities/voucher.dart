class Voucher {
  final String id;
  final String code;
  final String? description;
  final String discountType; // Percentage, FixedAmount
  final double discountValue;
  final double? minOrderValue;
  final double? maxDiscount;
  final DateTime? startDate;
  final DateTime? endDate;
  final int? usageLimit;
  final int? usedCount;
  final bool isActive;

  const Voucher({
    required this.id,
    required this.code,
    this.description,
    required this.discountType,
    required this.discountValue,
    this.minOrderValue,
    this.maxDiscount,
    this.startDate,
    this.endDate,
    this.usageLimit,
    this.usedCount,
    this.isActive = true,
  });

  String get discountLabel {
    if (discountType == 'Percentage') {
      return '-${discountValue.toInt()}%';
    }
    return '-${discountValue.toStringAsFixed(0)}đ';
  }
}
