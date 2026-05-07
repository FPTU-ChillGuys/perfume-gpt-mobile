//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/product_attribute_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductResponse {
  /// Returns a new [ProductResponse] instance.
  ProductResponse({
    required this.id,

    required this.name,

    required this.brandId,

    required this.brandName,

    required this.categoryId,

    required this.categoryName,

    this.description,

    required this.primaryImage,

    required this.attributes,
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
  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  /// URL hình ảnh chính
  @JsonKey(name: r'primaryImage', required: true, includeIfNull: true)
  final Object? primaryImage;

  /// Danh sách thuộc tính sản phẩm
  @JsonKey(name: r'attributes', required: true, includeIfNull: false)
  final List<ProductAttributeResponse> attributes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductResponse &&
          other.id == id &&
          other.name == name &&
          other.brandId == brandId &&
          other.brandName == brandName &&
          other.categoryId == categoryId &&
          other.categoryName == categoryName &&
          other.description == description &&
          other.primaryImage == primaryImage &&
          other.attributes == attributes;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      brandId.hashCode +
      brandName.hashCode +
      categoryId.hashCode +
      categoryName.hashCode +
      (description == null ? 0 : description.hashCode) +
      (primaryImage == null ? 0 : primaryImage.hashCode) +
      attributes.hashCode;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
