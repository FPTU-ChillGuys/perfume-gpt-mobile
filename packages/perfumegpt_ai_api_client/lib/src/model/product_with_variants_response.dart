//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/product_variant_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_attribute_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_with_variants_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductWithVariantsResponse {
  /// Returns a new [ProductWithVariantsResponse] instance.
  ProductWithVariantsResponse({
    required this.id,

    required this.name,

    required this.brandId,

    required this.brandName,

    required this.categoryId,

    required this.categoryName,

    required this.description,

    this.primaryImage,

    required this.variants,

    required this.scentNotes,

    required this.olfactoryFamilies,

    required this.attributes,

    required this.createdAt,

    this.updatedAt,
  });

  /// ID sản phẩm
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Tên sản phẩm
  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  /// ID thương hiệu
  @JsonKey(name: r'brandId', required: true, includeIfNull: false)
  final num brandId;

  /// Tên thương hiệu
  @JsonKey(name: r'brandName', required: true, includeIfNull: false)
  final String brandName;

  /// ID danh mục
  @JsonKey(name: r'categoryId', required: true, includeIfNull: false)
  final num categoryId;

  /// Tên danh mục
  @JsonKey(name: r'categoryName', required: true, includeIfNull: false)
  final String categoryName;

  /// Mô tả sản phẩm
  @JsonKey(name: r'description', required: true, includeIfNull: false)
  final String description;

  /// URL hình ảnh chính
  @JsonKey(name: r'primaryImage', required: false, includeIfNull: false)
  final Object? primaryImage;

  /// Danh sách biến thể
  @JsonKey(name: r'variants', required: true, includeIfNull: false)
  final List<ProductVariantResponse> variants;

  /// Danh sách nốt hương
  @JsonKey(name: r'scentNotes', required: true, includeIfNull: false)
  final List<String> scentNotes;

  /// Danh sách nhóm hương
  @JsonKey(name: r'olfactoryFamilies', required: true, includeIfNull: false)
  final List<String> olfactoryFamilies;

  /// Danh sách thuộc tính sản phẩm
  @JsonKey(name: r'attributes', required: true, includeIfNull: false)
  final List<ProductAttributeResponse> attributes;

  /// Ngày tạo
  @JsonKey(name: r'createdAt', required: true, includeIfNull: false)
  final String createdAt;

  /// Ngày cập nhật
  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final Object? updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductWithVariantsResponse &&
          other.id == id &&
          other.name == name &&
          other.brandId == brandId &&
          other.brandName == brandName &&
          other.categoryId == categoryId &&
          other.categoryName == categoryName &&
          other.description == description &&
          other.primaryImage == primaryImage &&
          other.variants == variants &&
          other.scentNotes == scentNotes &&
          other.olfactoryFamilies == olfactoryFamilies &&
          other.attributes == attributes &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      brandId.hashCode +
      brandName.hashCode +
      categoryId.hashCode +
      categoryName.hashCode +
      description.hashCode +
      (primaryImage == null ? 0 : primaryImage.hashCode) +
      variants.hashCode +
      scentNotes.hashCode +
      olfactoryFamilies.hashCode +
      attributes.hashCode +
      createdAt.hashCode +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  factory ProductWithVariantsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductWithVariantsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductWithVariantsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
