//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/product_card_variant_output_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_card_output_item_dto.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductCardOutputItemDto {
  /// Returns a new [ProductCardOutputItemDto] instance.
  ProductCardOutputItemDto({
    required this.id,

    required this.name,

    required this.brandName,

    this.primaryImage,

    required this.variants,

    this.reasoning,

    this.source_,
  });

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  @JsonKey(name: r'brandName', required: true, includeIfNull: false)
  final String brandName;

  @JsonKey(name: r'primaryImage', required: false, includeIfNull: false)
  final Object? primaryImage;

  @JsonKey(name: r'variants', required: true, includeIfNull: false)
  final List<ProductCardVariantOutputDto> variants;

  @JsonKey(name: r'reasoning', required: false, includeIfNull: false)
  final Object? reasoning;

  @JsonKey(name: r'source', required: false, includeIfNull: false)
  final Object? source_;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductCardOutputItemDto &&
          other.id == id &&
          other.name == name &&
          other.brandName == brandName &&
          other.primaryImage == primaryImage &&
          other.variants == variants &&
          other.reasoning == reasoning &&
          other.source_ == source_;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      brandName.hashCode +
      (primaryImage == null ? 0 : primaryImage.hashCode) +
      variants.hashCode +
      (reasoning == null ? 0 : reasoning.hashCode) +
      (source_ == null ? 0 : source_.hashCode);

  factory ProductCardOutputItemDto.fromJson(Map<String, dynamic> json) =>
      _$ProductCardOutputItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCardOutputItemDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
