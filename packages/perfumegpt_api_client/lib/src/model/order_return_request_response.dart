//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/return_shipping_info_response.dart';
import 'package:perfumegpt_api_client/src/model/order_return_request_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/return_request_status.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_return_request_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderReturnRequestResponse {
  /// Returns a new [OrderReturnRequestResponse] instance.
  OrderReturnRequestResponse({

     this.id,

     this.orderId,

    required  this.orderCode,

     this.customerId,

     this.customerEmail,

     this.processedById,

     this.processedByName,

     this.inspectedById,

     this.inspectedByName,

    required  this.reason,

     this.customerNote,

     this.staffNote,

     this.inspectionNote,

     this.status,

     this.requestedRefundAmount,

     this.refundedShippingFee,

     this.approvedRefundAmount,

     this.isRefunded,

     this.isRefundOnly,

     this.refundBankName,

     this.refundAccountName,

     this.refundAccountNumber,

     this.vnpTransactionNo,

     this.isRestocked,

     this.returnShippingInfo,

     this.returnDetails,

     this.proofImages,

     this.createdAt,

     this.updatedAt,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'orderId',
    required: false,
    includeIfNull: false,
  )


  final String? orderId;



  @JsonKey(
    
    name: r'orderCode',
    required: true,
    includeIfNull: false,
  )


  final String orderCode;



  @JsonKey(
    
    name: r'customerId',
    required: false,
    includeIfNull: false,
  )


  final String? customerId;



  @JsonKey(
    
    name: r'customerEmail',
    required: false,
    includeIfNull: false,
  )


  final String? customerEmail;



  @JsonKey(
    
    name: r'processedById',
    required: false,
    includeIfNull: false,
  )


  final String? processedById;



  @JsonKey(
    
    name: r'processedByName',
    required: false,
    includeIfNull: false,
  )


  final String? processedByName;



  @JsonKey(
    
    name: r'inspectedById',
    required: false,
    includeIfNull: false,
  )


  final String? inspectedById;



  @JsonKey(
    
    name: r'inspectedByName',
    required: false,
    includeIfNull: false,
  )


  final String? inspectedByName;



  @JsonKey(
    
    name: r'reason',
    required: true,
    includeIfNull: false,
  )


  final String reason;



  @JsonKey(
    
    name: r'customerNote',
    required: false,
    includeIfNull: false,
  )


  final String? customerNote;



  @JsonKey(
    
    name: r'staffNote',
    required: false,
    includeIfNull: false,
  )


  final String? staffNote;



  @JsonKey(
    
    name: r'inspectionNote',
    required: false,
    includeIfNull: false,
  )


  final String? inspectionNote;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final ReturnRequestStatus? status;



  @JsonKey(
    
    name: r'requestedRefundAmount',
    required: false,
    includeIfNull: false,
  )


  final num? requestedRefundAmount;



  @JsonKey(
    
    name: r'refundedShippingFee',
    required: false,
    includeIfNull: false,
  )


  final num? refundedShippingFee;



  @JsonKey(
    
    name: r'approvedRefundAmount',
    required: false,
    includeIfNull: false,
  )


  final num? approvedRefundAmount;



  @JsonKey(
    
    name: r'isRefunded',
    required: false,
    includeIfNull: false,
  )


  final bool? isRefunded;



  @JsonKey(
    
    name: r'isRefundOnly',
    required: false,
    includeIfNull: false,
  )


  final bool? isRefundOnly;



  @JsonKey(
    
    name: r'refundBankName',
    required: false,
    includeIfNull: false,
  )


  final String? refundBankName;



  @JsonKey(
    
    name: r'refundAccountName',
    required: false,
    includeIfNull: false,
  )


  final String? refundAccountName;



  @JsonKey(
    
    name: r'refundAccountNumber',
    required: false,
    includeIfNull: false,
  )


  final String? refundAccountNumber;



  @JsonKey(
    
    name: r'vnpTransactionNo',
    required: false,
    includeIfNull: false,
  )


  final String? vnpTransactionNo;



  @JsonKey(
    
    name: r'isRestocked',
    required: false,
    includeIfNull: false,
  )


  final bool? isRestocked;



  @JsonKey(
    
    name: r'returnShippingInfo',
    required: false,
    includeIfNull: false,
  )


  final ReturnShippingInfoResponse? returnShippingInfo;



  @JsonKey(
    
    name: r'returnDetails',
    required: false,
    includeIfNull: false,
  )


  final List<OrderReturnRequestDetailResponse>? returnDetails;



  @JsonKey(
    
    name: r'proofImages',
    required: false,
    includeIfNull: false,
  )


  final List<MediaResponse>? proofImages;



  @JsonKey(
    
    name: r'createdAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;



  @JsonKey(
    
    name: r'updatedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is OrderReturnRequestResponse &&
      other.id == id &&
      other.orderId == orderId &&
      other.orderCode == orderCode &&
      other.customerId == customerId &&
      other.customerEmail == customerEmail &&
      other.processedById == processedById &&
      other.processedByName == processedByName &&
      other.inspectedById == inspectedById &&
      other.inspectedByName == inspectedByName &&
      other.reason == reason &&
      other.customerNote == customerNote &&
      other.staffNote == staffNote &&
      other.inspectionNote == inspectionNote &&
      other.status == status &&
      other.requestedRefundAmount == requestedRefundAmount &&
      other.refundedShippingFee == refundedShippingFee &&
      other.approvedRefundAmount == approvedRefundAmount &&
      other.isRefunded == isRefunded &&
      other.isRefundOnly == isRefundOnly &&
      other.refundBankName == refundBankName &&
      other.refundAccountName == refundAccountName &&
      other.refundAccountNumber == refundAccountNumber &&
      other.vnpTransactionNo == vnpTransactionNo &&
      other.isRestocked == isRestocked &&
      other.returnShippingInfo == returnShippingInfo &&
      other.returnDetails == returnDetails &&
      other.proofImages == proofImages &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        id.hashCode +
        orderId.hashCode +
        orderCode.hashCode +
        customerId.hashCode +
        (customerEmail == null ? 0 : customerEmail.hashCode) +
        (processedById == null ? 0 : processedById.hashCode) +
        (processedByName == null ? 0 : processedByName.hashCode) +
        (inspectedById == null ? 0 : inspectedById.hashCode) +
        (inspectedByName == null ? 0 : inspectedByName.hashCode) +
        reason.hashCode +
        (customerNote == null ? 0 : customerNote.hashCode) +
        (staffNote == null ? 0 : staffNote.hashCode) +
        (inspectionNote == null ? 0 : inspectionNote.hashCode) +
        status.hashCode +
        requestedRefundAmount.hashCode +
        refundedShippingFee.hashCode +
        (approvedRefundAmount == null ? 0 : approvedRefundAmount.hashCode) +
        isRefunded.hashCode +
        isRefundOnly.hashCode +
        (refundBankName == null ? 0 : refundBankName.hashCode) +
        (refundAccountName == null ? 0 : refundAccountName.hashCode) +
        (refundAccountNumber == null ? 0 : refundAccountNumber.hashCode) +
        (vnpTransactionNo == null ? 0 : vnpTransactionNo.hashCode) +
        isRestocked.hashCode +
        (returnShippingInfo == null ? 0 : returnShippingInfo.hashCode) +
        (returnDetails == null ? 0 : returnDetails.hashCode) +
        (proofImages == null ? 0 : proofImages.hashCode) +
        createdAt.hashCode +
        (updatedAt == null ? 0 : updatedAt.hashCode);

  factory OrderReturnRequestResponse.fromJson(Map<String, dynamic> json) => _$OrderReturnRequestResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderReturnRequestResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

