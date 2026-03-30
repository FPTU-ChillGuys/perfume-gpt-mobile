class Product {
  final String id;
  final String variantId;
  final String batchId;
  final String sku;
  final String name;
  final String description;
  final double price;
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
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.scentNotes,
    required this.brand,
    required this.rating,
    required this.reviewCount,
    required this.stockQuantity,
  });
}
