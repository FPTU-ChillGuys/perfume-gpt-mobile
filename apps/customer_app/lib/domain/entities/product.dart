import 'product_variant.dart';
import 'product_scent_note.dart';

class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double? minPrice;
  final double? maxPrice;
  final List<double>? variantPrices;
  final String imageUrl;
  final List<String> imageUrls;
  final List<String> scentNotes;
  final String brand;
  final double rating;
  final int reviewCount;
  final String? gender;
  final int? brandId;
  final int? categoryId;
  final String? categoryName;
  final String? origin;
  final int? releaseYear;
  final List<ProductVariant> variants;
  final List<ProductScentNote> scentNoteDetails;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.minPrice,
    this.maxPrice,
    this.variantPrices,
    required this.imageUrl,
    this.imageUrls = const [],
    required this.scentNotes,
    required this.brand,
    required this.rating,
    required this.reviewCount,
    this.gender,
    this.brandId,
    this.categoryId,
    this.categoryName,
    this.origin,
    this.releaseYear,
    this.variants = const [],
    this.scentNoteDetails = const [],
  });
}
