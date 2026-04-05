//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variant_lookup_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VariantLookupItem {
  /// Returns a new [VariantLookupItem] instance.
  VariantLookupItem({
    this.id,

    required this.barcode,

    required this.sku,

    required this.displayName,

    this.volumeMl,

    required this.concentrationName,

    this.basePrice,

    this.primaryImageUrl,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'barcode', required: true, includeIfNull: false)
  final String barcode;

  @JsonKey(name: r'sku', required: true, includeIfNull: false)
  final String sku;

  @JsonKey(name: r'displayName', required: true, includeIfNull: false)
  final String displayName;

  @JsonKey(name: r'volumeMl', required: false, includeIfNull: false)
  final int? volumeMl;

  @JsonKey(name: r'concentrationName', required: true, includeIfNull: false)
  final String concentrationName;

  @JsonKey(name: r'basePrice', required: false, includeIfNull: false)
  final num? basePrice;

  @JsonKey(name: r'primaryImageUrl', required: false, includeIfNull: false)
  final String? primaryImageUrl;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VariantLookupItem &&
          other.id == id &&
          other.barcode == barcode &&
          other.sku == sku &&
          other.displayName == displayName &&
          other.volumeMl == volumeMl &&
          other.concentrationName == concentrationName &&
          other.basePrice == basePrice &&
          other.primaryImageUrl == primaryImageUrl;

  @override
  int get hashCode =>
      id.hashCode +
      barcode.hashCode +
      sku.hashCode +
      displayName.hashCode +
      volumeMl.hashCode +
      concentrationName.hashCode +
      basePrice.hashCode +
      (primaryImageUrl == null ? 0 : primaryImageUrl.hashCode);

  factory VariantLookupItem.fromJson(Map<String, dynamic> json) =>
      _$VariantLookupItemFromJson(json);

  Map<String, dynamic> toJson() => _$VariantLookupItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
