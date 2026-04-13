class ProductVariant {
  final String id;
  final String sku;
  final String barcode;
  final int? volumeMl;
  final String concentrationName;
  final String type;
  final double basePrice;
  final double? retailPrice;
  final double? discountedPrice;
  final String status;
  final int stockQuantity;
  final int? sillage;
  final int? longevity;
  final List<String> imageUrls;
  final String? primaryImageUrl;
  final String? campaignName;
  final String? voucherCode;

  const ProductVariant({
    required this.id,
    required this.sku,
    required this.barcode,
    this.volumeMl,
    required this.concentrationName,
    required this.type,
    required this.basePrice,
    this.retailPrice,
    this.discountedPrice,
    required this.status,
    required this.stockQuantity,
    this.sillage,
    this.longevity,
    required this.imageUrls,
    this.primaryImageUrl,
    this.campaignName,
    this.voucherCode,
  });

  double get effectivePrice => discountedPrice ?? retailPrice ?? basePrice;

  bool get isActive => status == 'Active';

  bool get isInStock => stockQuantity > 0;

  bool get hasCampaignDiscount =>
      discountedPrice != null &&
      discountedPrice! > 0 &&
      basePrice > 0 &&
      discountedPrice! < basePrice;

  String get displayName {
    final parts = <String>[];
    if (volumeMl != null) parts.add('${volumeMl}ml');
    if (concentrationName.isNotEmpty) parts.add(concentrationName);
    if (type != 'Standard') parts.add(type);
    return parts.join(' · ');
  }
}
