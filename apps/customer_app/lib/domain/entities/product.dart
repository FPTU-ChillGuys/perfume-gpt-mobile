import 'product_variant.dart';

class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double? minPrice;
  final double? maxPrice;
  final double? minRetailPrice;
  final double? minDiscountedPrice;
  final String? campaignName;
  final List<double>? variantPrices;
  final List<ProductVariant> variants;
  final String imageUrl;
  final List<String> imageUrls;
  final List<String> scentNotes;
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
    this.minRetailPrice,
    this.minDiscountedPrice,
    this.campaignName,
    this.variantPrices,
    this.variants = const [],
    required this.imageUrl,
    this.imageUrls = const [],
    this.scentNotes = const [],
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

  /// True when retailPrice > basePrice (has a "was" price to show)
  bool get hasRetailComparison =>
      minRetailPrice != null && minPrice != null && minRetailPrice! > minPrice!;

  /// True when a campaign discount is active
  bool get hasCampaignDiscount =>
      minDiscountedPrice != null &&
      minPrice != null &&
      minDiscountedPrice! > 0 &&
      minDiscountedPrice! < minPrice!;
}
