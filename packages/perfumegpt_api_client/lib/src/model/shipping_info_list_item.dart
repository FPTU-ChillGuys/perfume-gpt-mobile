//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/shipping_status.dart';
import 'package:perfumegpt_api_client/src/model/carrier_name.dart';
import 'package:perfumegpt_api_client/src/model/shipping_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shipping_info_list_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ShippingInfoListItem {
  /// Returns a new [ShippingInfoListItem] instance.
  ShippingInfoListItem({
    this.id,

    this.orderId,

    this.carrierName,

    this.trackingNumber,

    this.shippingFee,

    this.type,

    this.status,

    this.leadTime,

    this.shippedDate,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'orderId', required: false, includeIfNull: false)
  final String? orderId;

  @JsonKey(name: r'carrierName', required: false, includeIfNull: false)
  final CarrierName? carrierName;

  @JsonKey(name: r'trackingNumber', required: false, includeIfNull: false)
  final String? trackingNumber;

  @JsonKey(name: r'shippingFee', required: false, includeIfNull: false)
  final num? shippingFee;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final ShippingType? type;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final ShippingStatus? status;

  @JsonKey(name: r'leadTime', required: false, includeIfNull: false)
  final DateTime? leadTime;

  @JsonKey(name: r'shippedDate', required: false, includeIfNull: false)
  final DateTime? shippedDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShippingInfoListItem &&
          other.id == id &&
          other.orderId == orderId &&
          other.carrierName == carrierName &&
          other.trackingNumber == trackingNumber &&
          other.shippingFee == shippingFee &&
          other.type == type &&
          other.status == status &&
          other.leadTime == leadTime &&
          other.shippedDate == shippedDate;

  @override
  int get hashCode =>
      id.hashCode +
      orderId.hashCode +
      carrierName.hashCode +
      (trackingNumber == null ? 0 : trackingNumber.hashCode) +
      shippingFee.hashCode +
      type.hashCode +
      status.hashCode +
      (leadTime == null ? 0 : leadTime.hashCode) +
      (shippedDate == null ? 0 : shippedDate.hashCode);

  factory ShippingInfoListItem.fromJson(Map<String, dynamic> json) =>
      _$ShippingInfoListItemFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingInfoListItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
