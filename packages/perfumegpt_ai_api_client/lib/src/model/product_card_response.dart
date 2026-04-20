//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/product_card_variant_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_card_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductCardResponse {
  /// Returns a new [ProductCardResponse] instance.
  ProductCardResponse({
    required this.id,

    required this.name,

    required this.brandName,

    required this.primaryImage,

    required this.variants,

    required this.sizesCount,

    required this.displayPrice,

    this.aiAcceptanceId,
  });

  /// ID san pham
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Ten san pham
  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  /// Ten thuong hieu
  @JsonKey(name: r'brandName', required: true, includeIfNull: false)
  final String brandName;

  /// Anh chinh cua san pham
  @JsonKey(name: r'primaryImage', required: true, includeIfNull: true)
  final Object? primaryImage;

  /// Danh sach variants da sap xep theo uu tien ban chay
  @JsonKey(name: r'variants', required: true, includeIfNull: false)
  final List<ProductCardVariantResponse> variants;

  /// So luong size hien co
  @JsonKey(name: r'sizesCount', required: true, includeIfNull: false)
  final num sizesCount;

  /// Gia hien thi cua variant uu tien
  @JsonKey(name: r'displayPrice', required: true, includeIfNull: false)
  final num displayPrice;

  /// ID AI Acceptance dùng chung cho các sản phẩm cùng response
  @JsonKey(name: r'aiAcceptanceId', required: false, includeIfNull: false)
  final String? aiAcceptanceId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductCardResponse &&
          other.id == id &&
          other.name == name &&
          other.brandName == brandName &&
          other.primaryImage == primaryImage &&
          other.variants == variants &&
          other.sizesCount == sizesCount &&
          other.displayPrice == displayPrice &&
          other.aiAcceptanceId == aiAcceptanceId;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      brandName.hashCode +
      (primaryImage == null ? 0 : primaryImage.hashCode) +
      variants.hashCode +
      sizesCount.hashCode +
      displayPrice.hashCode +
      aiAcceptanceId.hashCode;

  factory ProductCardResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductCardResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCardResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
