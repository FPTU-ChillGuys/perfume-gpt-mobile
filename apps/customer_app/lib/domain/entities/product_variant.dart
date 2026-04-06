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
  });

  double get effectivePrice => discountedPrice ?? retailPrice ?? basePrice;

  bool get isActive => status == 'Active';

  bool get isInStock => stockQuantity > 0;

  String get displayName {
    final parts = <String>[];
    if (volumeMl != null) parts.add('${volumeMl}ml');
    if (concentrationName.isNotEmpty) parts.add(concentrationName);
    if (type != 'Standard') parts.add(type);
    return parts.join(' · ');
  }
}
