//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_card_variant_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductCardVariantResponse {
  /// Returns a new [ProductCardVariantResponse] instance.
  ProductCardVariantResponse({
    required this.id,

    required this.sku,

    required this.volumeMl,

    required this.basePrice,
  });

  /// ID variant
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// SKU variant
  @JsonKey(name: r'sku', required: true, includeIfNull: false)
  final String sku;

  /// Dung tich cua variant (ml)
  @JsonKey(name: r'volumeMl', required: true, includeIfNull: false)
  final num volumeMl;

  /// Gia goc cua variant
  @JsonKey(name: r'basePrice', required: true, includeIfNull: false)
  final num basePrice;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductCardVariantResponse &&
          other.id == id &&
          other.sku == sku &&
          other.volumeMl == volumeMl &&
          other.basePrice == basePrice;

  @override
  int get hashCode =>
      id.hashCode + sku.hashCode + volumeMl.hashCode + basePrice.hashCode;

  factory ProductCardVariantResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductCardVariantResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCardVariantResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
