class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final List<String> scentNotes;
  final String brand;
  final double rating;
  final int reviewCount;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.scentNotes,
    required this.brand,
    required this.rating,
    required this.reviewCount,
  });
}
