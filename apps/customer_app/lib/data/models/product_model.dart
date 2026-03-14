import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/product.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    required String name,
    required String description,
    required double price,
    required String imageUrl,
    required List<String> scentNotes,
    required String brand,
    required double rating,
    required int reviewCount,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  factory ProductModel.fromEntity(Product product) => ProductModel(
    id: product.id,
    name: product.name,
    description: product.description,
    price: product.price,
    imageUrl: product.imageUrl,
    scentNotes: product.scentNotes,
    brand: product.brand,
    rating: product.rating,
    reviewCount: product.reviewCount,
  );
}

extension ProductModelX on ProductModel {
  Product toEntity() => Product(
    id: id,
    name: name,
    description: description,
    price: price,
    imageUrl: imageUrl,
    scentNotes: scentNotes,
    brand: brand,
    rating: rating,
    reviewCount: reviewCount,
  );
}
