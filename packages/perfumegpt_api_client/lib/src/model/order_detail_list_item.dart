//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_detail_list_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderDetailListItem {
  /// Returns a new [OrderDetailListItem] instance.
  OrderDetailListItem({
    this.id,

    this.variantId,

    required this.variantName,

    this.imageUrl,

    this.quantity,

    this.unitPrice,

    this.refunablePrice,

    this.total,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'variantId', required: false, includeIfNull: false)
  final String? variantId;

  @JsonKey(name: r'variantName', required: true, includeIfNull: false)
  final String variantName;

  @JsonKey(name: r'imageUrl', required: false, includeIfNull: false)
  final String? imageUrl;

  @JsonKey(name: r'quantity', required: false, includeIfNull: false)
  final int? quantity;

  @JsonKey(name: r'unitPrice', required: false, includeIfNull: false)
  final num? unitPrice;

  @JsonKey(name: r'refunablePrice', required: false, includeIfNull: false)
  final num? refunablePrice;

  @JsonKey(name: r'total', required: false, includeIfNull: false)
  final num? total;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderDetailListItem &&
          other.id == id &&
          other.variantId == variantId &&
          other.variantName == variantName &&
          other.imageUrl == imageUrl &&
          other.quantity == quantity &&
          other.unitPrice == unitPrice &&
          other.refunablePrice == refunablePrice &&
          other.total == total;

  @override
  int get hashCode =>
      id.hashCode +
      variantId.hashCode +
      variantName.hashCode +
      (imageUrl == null ? 0 : imageUrl.hashCode) +
      quantity.hashCode +
      unitPrice.hashCode +
      refunablePrice.hashCode +
      total.hashCode;

  factory OrderDetailListItem.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailListItemFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailListItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
