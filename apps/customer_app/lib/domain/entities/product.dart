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
  final List<ProductVariant> variants;
  final String imageUrl;
  final List<String> imageUrls;
  final List<String> scentNotes;
  final List<ProductScentNote> scentNoteDetails;
  final String brand;
  final int? brandId;
  final int? categoryId;
  final String? categoryName;
  final String? gender;
  final String? origin;
  final int? releaseYear;
  final double rating;
  final int reviewCount;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.minPrice,
    this.maxPrice,
    this.variantPrices,
    this.variants = const [],
    required this.imageUrl,
    this.imageUrls = const [],
    required this.scentNotes,
    this.scentNoteDetails = const [],
    required this.brand,
    this.brandId,
    this.categoryId,
    this.categoryName,
    this.gender,
    this.origin,
    this.releaseYear,
    required this.rating,
    required this.reviewCount,
  });
}
