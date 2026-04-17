class Product {
  final String id;
  final String variantId;
  final String batchId;
  final String sku;
  final String barcode;
  final String name;
  final String description;
  final double price;
  final double? retailPrice;
  final double? basePrice;
  final double? discountedPrice;
  final String imageUrl;
  final List<String> scentNotes;
  final String brand;
  final double rating;
  final int reviewCount;
  final int stockQuantity;

  const Product({
    required this.id,
    required this.variantId,
    required this.batchId,
    required this.sku,
    required this.barcode,
    required this.name,
    required this.description,
    required this.price,
    this.retailPrice,
    this.basePrice,
    this.discountedPrice,
    required this.imageUrl,
    required this.scentNotes,
    required this.brand,
    required this.rating,
    required this.reviewCount,
    required this.stockQuantity,
  });
}
