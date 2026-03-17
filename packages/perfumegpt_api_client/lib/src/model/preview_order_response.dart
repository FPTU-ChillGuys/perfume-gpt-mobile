//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/order_detail_list_items.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'preview_order_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PreviewOrderResponse {
  /// Returns a new [PreviewOrderResponse] instance.
  PreviewOrderResponse({
    this.items,

    this.subTotal,

    this.shippingFee,

    this.discount,

    this.total,
  });

  @JsonKey(name: r'items', required: false, includeIfNull: false)
  final List<OrderDetailListItems>? items;

  @JsonKey(name: r'subTotal', required: false, includeIfNull: false)
  final num? subTotal;

  @JsonKey(name: r'shippingFee', required: false, includeIfNull: false)
  final num? shippingFee;

  @JsonKey(name: r'discount', required: false, includeIfNull: false)
  final num? discount;

  @JsonKey(name: r'total', required: false, includeIfNull: false)
  final num? total;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PreviewOrderResponse &&
          other.items == items &&
          other.subTotal == subTotal &&
          other.shippingFee == shippingFee &&
          other.discount == discount &&
          other.total == total;

  @override
  int get hashCode =>
      items.hashCode +
      subTotal.hashCode +
      shippingFee.hashCode +
      discount.hashCode +
      total.hashCode;

  factory PreviewOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$PreviewOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewOrderResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
