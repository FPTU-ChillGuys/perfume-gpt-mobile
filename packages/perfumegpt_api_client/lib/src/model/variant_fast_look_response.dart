//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variant_fast_look_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VariantFastLookResponse {
  /// Returns a new [VariantFastLookResponse] instance.
  VariantFastLookResponse({
    this.id,

    required this.sku,

    required this.displayName,

    this.price,

    this.retailPrice,

    this.stockQuantity,

    this.media,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'sku', required: true, includeIfNull: false)
  final String sku;

  @JsonKey(name: r'displayName', required: true, includeIfNull: false)
  final String displayName;

  @JsonKey(name: r'price', required: false, includeIfNull: false)
  final num? price;

  @JsonKey(name: r'retailPrice', required: false, includeIfNull: false)
  final num? retailPrice;

  @JsonKey(name: r'stockQuantity', required: false, includeIfNull: false)
  final int? stockQuantity;

  @JsonKey(name: r'media', required: false, includeIfNull: false)
  final MediaResponse? media;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VariantFastLookResponse &&
          other.id == id &&
          other.sku == sku &&
          other.displayName == displayName &&
          other.price == price &&
          other.retailPrice == retailPrice &&
          other.stockQuantity == stockQuantity &&
          other.media == media;

  @override
  int get hashCode =>
      id.hashCode +
      sku.hashCode +
      displayName.hashCode +
      price.hashCode +
      (retailPrice == null ? 0 : retailPrice.hashCode) +
      stockQuantity.hashCode +
      (media == null ? 0 : media.hashCode);

  factory VariantFastLookResponse.fromJson(Map<String, dynamic> json) =>
      _$VariantFastLookResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VariantFastLookResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
