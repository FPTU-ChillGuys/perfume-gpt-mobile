//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_temp_item_dto_variants_inner.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductTempItemDtoVariantsInner {
  /// Returns a new [ProductTempItemDtoVariantsInner] instance.
  ProductTempItemDtoVariantsInner({this.id, this.price});

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'price', required: false, includeIfNull: false)
  final num? price;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductTempItemDtoVariantsInner &&
          other.id == id &&
          other.price == price;

  @override
  int get hashCode => id.hashCode + price.hashCode;

  factory ProductTempItemDtoVariantsInner.fromJson(Map<String, dynamic> json) =>
      _$ProductTempItemDtoVariantsInnerFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductTempItemDtoVariantsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
