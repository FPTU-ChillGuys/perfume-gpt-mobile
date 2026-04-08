//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/cancel_request_status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_cancel_request_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderCancelRequestResponse {
  /// Returns a new [OrderCancelRequestResponse] instance.
  OrderCancelRequestResponse({

     this.id,

     this.orderId,

    required  this.orderCode,

     this.requestedById,

     this.requestedByEmail,

     this.processedById,

    required  this.reason,

     this.staffNote,

     this.status,

     this.isRefundRequired,

     this.refundAmount,

     this.isRefunded,

     this.refundBankName,

     this.refundAccountName,

     this.refundAccountNumber,

     this.vnpTransactionNo,

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
    
    name: r'requestedById',
    required: false,
    includeIfNull: false,
  )


  final String? requestedById;



  @JsonKey(
    
    name: r'requestedByEmail',
    required: false,
    includeIfNull: false,
  )


  final String? requestedByEmail;



  @JsonKey(
    
    name: r'processedById',
    required: false,
    includeIfNull: false,
  )


  final String? processedById;



  @JsonKey(
    
    name: r'reason',
    required: true,
    includeIfNull: false,
  )


  final String reason;



  @JsonKey(
    
    name: r'staffNote',
    required: false,
    includeIfNull: false,
  )


  final String? staffNote;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final CancelRequestStatus? status;



  @JsonKey(
    
    name: r'isRefundRequired',
    required: false,
    includeIfNull: false,
  )


  final bool? isRefundRequired;



  @JsonKey(
    
    name: r'refundAmount',
    required: false,
    includeIfNull: false,
  )


  final num? refundAmount;



  @JsonKey(
    
    name: r'isRefunded',
    required: false,
    includeIfNull: false,
  )


  final bool? isRefunded;



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
    bool operator ==(Object other) => identical(this, other) || other is OrderCancelRequestResponse &&
      other.id == id &&
      other.orderId == orderId &&
      other.orderCode == orderCode &&
      other.requestedById == requestedById &&
      other.requestedByEmail == requestedByEmail &&
      other.processedById == processedById &&
      other.reason == reason &&
      other.staffNote == staffNote &&
      other.status == status &&
      other.isRefundRequired == isRefundRequired &&
      other.refundAmount == refundAmount &&
      other.isRefunded == isRefunded &&
      other.refundBankName == refundBankName &&
      other.refundAccountName == refundAccountName &&
      other.refundAccountNumber == refundAccountNumber &&
      other.vnpTransactionNo == vnpTransactionNo &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        id.hashCode +
        orderId.hashCode +
        orderCode.hashCode +
        requestedById.hashCode +
        (requestedByEmail == null ? 0 : requestedByEmail.hashCode) +
        (processedById == null ? 0 : processedById.hashCode) +
        reason.hashCode +
        (staffNote == null ? 0 : staffNote.hashCode) +
        status.hashCode +
        isRefundRequired.hashCode +
        (refundAmount == null ? 0 : refundAmount.hashCode) +
        isRefunded.hashCode +
        (refundBankName == null ? 0 : refundBankName.hashCode) +
        (refundAccountName == null ? 0 : refundAccountName.hashCode) +
        (refundAccountNumber == null ? 0 : refundAccountNumber.hashCode) +
        (vnpTransactionNo == null ? 0 : vnpTransactionNo.hashCode) +
        createdAt.hashCode +
        (updatedAt == null ? 0 : updatedAt.hashCode);

  factory OrderCancelRequestResponse.fromJson(Map<String, dynamic> json) => _$OrderCancelRequestResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderCancelRequestResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

