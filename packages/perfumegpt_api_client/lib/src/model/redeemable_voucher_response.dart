//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/discount_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'redeemable_voucher_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RedeemableVoucherResponse {
  /// Returns a new [RedeemableVoucherResponse] instance.
  RedeemableVoucherResponse({
    this.id,

    required this.code,

    this.discountValue,

    this.discountType,

    this.requiredPoints,

    this.minOrderValue,

    this.expiryDate,

    this.isExpired,

    this.remainingQuantity,

    this.createdAt,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'code', required: true, includeIfNull: false)
  final String code;

  @JsonKey(name: r'discountValue', required: false, includeIfNull: false)
  final num? discountValue;

  @JsonKey(name: r'discountType', required: false, includeIfNull: false)
  final DiscountType? discountType;

  @JsonKey(name: r'requiredPoints', required: false, includeIfNull: false)
  final int? requiredPoints;

  @JsonKey(name: r'minOrderValue', required: false, includeIfNull: false)
  final num? minOrderValue;

  @JsonKey(name: r'expiryDate', required: false, includeIfNull: false)
  final DateTime? expiryDate;

  @JsonKey(name: r'isExpired', required: false, includeIfNull: false)
  final bool? isExpired;

  @JsonKey(name: r'remainingQuantity', required: false, includeIfNull: false)
  final int? remainingQuantity;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RedeemableVoucherResponse &&
          other.id == id &&
          other.code == code &&
          other.discountValue == discountValue &&
          other.discountType == discountType &&
          other.requiredPoints == requiredPoints &&
          other.minOrderValue == minOrderValue &&
          other.expiryDate == expiryDate &&
          other.isExpired == isExpired &&
          other.remainingQuantity == remainingQuantity &&
          other.createdAt == createdAt;

  @override
  int get hashCode =>
      id.hashCode +
      code.hashCode +
      discountValue.hashCode +
      discountType.hashCode +
      (requiredPoints == null ? 0 : requiredPoints.hashCode) +
      (minOrderValue == null ? 0 : minOrderValue.hashCode) +
      expiryDate.hashCode +
      isExpired.hashCode +
      (remainingQuantity == null ? 0 : remainingQuantity.hashCode) +
      createdAt.hashCode;

  factory RedeemableVoucherResponse.fromJson(Map<String, dynamic> json) =>
      _$RedeemableVoucherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RedeemableVoucherResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
