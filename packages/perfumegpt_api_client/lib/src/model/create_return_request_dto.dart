//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/return_order_reason.dart';
import 'package:perfumegpt_api_client/src/model/contact_address_information.dart';
import 'package:perfumegpt_api_client/src/model/return_item_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_return_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateReturnRequestDto {
  /// Returns a new [CreateReturnRequestDto] instance.
  CreateReturnRequestDto({

    required  this.orderId,

    required  this.orderCode,

    required  this.reason,

     this.isRefundOnly,

    required  this.returnItems,

     this.customerNote,

     this.refundBankName,

     this.refundAccountNumber,

     this.refundAccountName,

     this.savedAddressId,

     this.recipient,

     this.temporaryMediaIds,
  });

  @JsonKey(
    
    name: r'orderId',
    required: true,
    includeIfNull: false,
  )


  final String orderId;



  @JsonKey(
    
    name: r'orderCode',
    required: true,
    includeIfNull: false,
  )


  final String orderCode;



  @JsonKey(
    
    name: r'reason',
    required: true,
    includeIfNull: false,
  )


  final ReturnOrderReason reason;



  @JsonKey(
    
    name: r'isRefundOnly',
    required: false,
    includeIfNull: false,
  )


  final bool? isRefundOnly;



  @JsonKey(
    
    name: r'returnItems',
    required: true,
    includeIfNull: false,
  )


  final List<ReturnItemDto> returnItems;



  @JsonKey(
    
    name: r'customerNote',
    required: false,
    includeIfNull: false,
  )


  final String? customerNote;



  @JsonKey(
    
    name: r'refundBankName',
    required: false,
    includeIfNull: false,
  )


  final String? refundBankName;



  @JsonKey(
    
    name: r'refundAccountNumber',
    required: false,
    includeIfNull: false,
  )


  final String? refundAccountNumber;



  @JsonKey(
    
    name: r'refundAccountName',
    required: false,
    includeIfNull: false,
  )


  final String? refundAccountName;



  @JsonKey(
    
    name: r'savedAddressId',
    required: false,
    includeIfNull: false,
  )


  final String? savedAddressId;



  @JsonKey(
    
    name: r'recipient',
    required: false,
    includeIfNull: false,
  )


  final ContactAddressInformation? recipient;



  @JsonKey(
    
    name: r'temporaryMediaIds',
    required: false,
    includeIfNull: false,
  )


  final List<String>? temporaryMediaIds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateReturnRequestDto &&
      other.orderId == orderId &&
      other.orderCode == orderCode &&
      other.reason == reason &&
      other.isRefundOnly == isRefundOnly &&
      other.returnItems == returnItems &&
      other.customerNote == customerNote &&
      other.refundBankName == refundBankName &&
      other.refundAccountNumber == refundAccountNumber &&
      other.refundAccountName == refundAccountName &&
      other.savedAddressId == savedAddressId &&
      other.recipient == recipient &&
      other.temporaryMediaIds == temporaryMediaIds;

    @override
    int get hashCode =>
        orderId.hashCode +
        orderCode.hashCode +
        reason.hashCode +
        isRefundOnly.hashCode +
        returnItems.hashCode +
        (customerNote == null ? 0 : customerNote.hashCode) +
        (refundBankName == null ? 0 : refundBankName.hashCode) +
        (refundAccountNumber == null ? 0 : refundAccountNumber.hashCode) +
        (refundAccountName == null ? 0 : refundAccountName.hashCode) +
        (savedAddressId == null ? 0 : savedAddressId.hashCode) +
        (recipient == null ? 0 : recipient.hashCode) +
        (temporaryMediaIds == null ? 0 : temporaryMediaIds.hashCode);

  factory CreateReturnRequestDto.fromJson(Map<String, dynamic> json) => _$CreateReturnRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreateReturnRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

