class Voucher {
  final String id;
  final String code;
  final String discountType; // Percentage, FixedAmount
  final double discountValue;
  final double? minOrderValue;
  final DateTime? expiryDate;
  final int? remainingQuantity;
  final int? requiredPoints;
  final bool isUsed;
  final bool isExpired;
  final String? status;
  final DateTime? redeemedAt;
  final bool isPublic;
  final bool isMemberOnly;
  final String? campaignId;
  final double? maxDiscountAmount;
  final int? maxUsagePerUser;

  const Voucher({
    required this.id,
    required this.code,
    required this.discountType,
    required this.discountValue,
    this.minOrderValue,
    this.expiryDate,
    this.remainingQuantity,
    this.requiredPoints,
    this.isUsed = false,
    this.isExpired = false,
    this.status,
    this.redeemedAt,
    this.isPublic = true,
    this.isMemberOnly = false,
    this.campaignId,
    this.maxDiscountAmount,
    this.maxUsagePerUser,
  });

  bool get isActive => !isUsed && !isExpired;

  bool get isCampaignVoucher => campaignId != null && campaignId!.isNotEmpty;

  String get discountLabel {
    if (discountType == 'Percentage') {
      return '-${discountValue.toInt()}%';
    }
    return '-${_formatNumber(discountValue)}đ';
  }

  static String _formatNumber(double value) {
    final str = value.toStringAsFixed(0);
    final buf = StringBuffer();
    for (var i = 0; i < str.length; i++) {
      if (i > 0 && (str.length - i) % 3 == 0) buf.write('.');
      buf.write(str[i]);
    }
    return buf.toString();
  }
}
