//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_detail_list_items.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderDetailListItems {
  /// Returns a new [OrderDetailListItems] instance.
  OrderDetailListItems({
    this.variantId,

    this.variantName,

    this.imageUrl,

    this.quantity,

    this.total,
  });

  @JsonKey(name: r'variantId', required: false, includeIfNull: false)
  final String? variantId;

  @JsonKey(name: r'variantName', required: false, includeIfNull: false)
  final String? variantName;

  @JsonKey(name: r'imageUrl', required: false, includeIfNull: false)
  final String? imageUrl;

  @JsonKey(name: r'quantity', required: false, includeIfNull: false)
  final int? quantity;

  @JsonKey(name: r'total', required: false, includeIfNull: false)
  final int? total;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderDetailListItems &&
          other.variantId == variantId &&
          other.variantName == variantName &&
          other.imageUrl == imageUrl &&
          other.quantity == quantity &&
          other.total == total;

  @override
  int get hashCode =>
      variantId.hashCode +
      variantName.hashCode +
      imageUrl.hashCode +
      quantity.hashCode +
      total.hashCode;

  factory OrderDetailListItems.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailListItemsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailListItemsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
