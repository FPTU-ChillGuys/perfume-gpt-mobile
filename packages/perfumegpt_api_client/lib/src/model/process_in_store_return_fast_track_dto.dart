//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/return_order_reason.dart';
import 'package:perfumegpt_api_client/src/model/return_item_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'process_in_store_return_fast_track_dto.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProcessInStoreReturnFastTrackDto {
  /// Returns a new [ProcessInStoreReturnFastTrackDto] instance.
  ProcessInStoreReturnFastTrackDto({
    required this.orderId,

    required this.orderCode,

    required this.reason,

    this.isRefundOnly,

    required this.returnItems,

    this.approvedRefundAmount,

    this.isRestocked,

    this.inspectionNote,

    this.customerNote,

    this.refundBankName,

    this.refundAccountNumber,

    this.refundAccountName,

    this.temporaryMediaIds,
  });

  @JsonKey(name: r'orderId', required: true, includeIfNull: false)
  final String orderId;

  @JsonKey(name: r'orderCode', required: true, includeIfNull: false)
  final String orderCode;

  @JsonKey(name: r'reason', required: true, includeIfNull: false)
  final ReturnOrderReason reason;

  @JsonKey(name: r'isRefundOnly', required: false, includeIfNull: false)
  final bool? isRefundOnly;

  @JsonKey(name: r'returnItems', required: true, includeIfNull: false)
  final List<ReturnItemDto> returnItems;

  // minimum: 0
  @JsonKey(name: r'approvedRefundAmount', required: false, includeIfNull: false)
  final num? approvedRefundAmount;

  @JsonKey(name: r'isRestocked', required: false, includeIfNull: false)
  final bool? isRestocked;

  @JsonKey(name: r'inspectionNote', required: false, includeIfNull: false)
  final String? inspectionNote;

  @JsonKey(name: r'customerNote', required: false, includeIfNull: false)
  final String? customerNote;

  @JsonKey(name: r'refundBankName', required: false, includeIfNull: false)
  final String? refundBankName;

  @JsonKey(name: r'refundAccountNumber', required: false, includeIfNull: false)
  final String? refundAccountNumber;

  @JsonKey(name: r'refundAccountName', required: false, includeIfNull: false)
  final String? refundAccountName;

  @JsonKey(name: r'temporaryMediaIds', required: false, includeIfNull: false)
  final List<String>? temporaryMediaIds;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProcessInStoreReturnFastTrackDto &&
          other.orderId == orderId &&
          other.orderCode == orderCode &&
          other.reason == reason &&
          other.isRefundOnly == isRefundOnly &&
          other.returnItems == returnItems &&
          other.approvedRefundAmount == approvedRefundAmount &&
          other.isRestocked == isRestocked &&
          other.inspectionNote == inspectionNote &&
          other.customerNote == customerNote &&
          other.refundBankName == refundBankName &&
          other.refundAccountNumber == refundAccountNumber &&
          other.refundAccountName == refundAccountName &&
          other.temporaryMediaIds == temporaryMediaIds;

  @override
  int get hashCode =>
      orderId.hashCode +
      orderCode.hashCode +
      reason.hashCode +
      isRefundOnly.hashCode +
      returnItems.hashCode +
      approvedRefundAmount.hashCode +
      isRestocked.hashCode +
      (inspectionNote == null ? 0 : inspectionNote.hashCode) +
      (customerNote == null ? 0 : customerNote.hashCode) +
      (refundBankName == null ? 0 : refundBankName.hashCode) +
      (refundAccountNumber == null ? 0 : refundAccountNumber.hashCode) +
      (refundAccountName == null ? 0 : refundAccountName.hashCode) +
      (temporaryMediaIds == null ? 0 : temporaryMediaIds.hashCode);

  factory ProcessInStoreReturnFastTrackDto.fromJson(
    Map<String, dynamic> json,
  ) => _$ProcessInStoreReturnFastTrackDtoFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProcessInStoreReturnFastTrackDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
