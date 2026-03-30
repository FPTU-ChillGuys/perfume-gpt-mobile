//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/create_return_request_detail_dto.dart';
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

    required  this.reason,

     this.requestedRefundAmount,

     this.customerNote,

     this.temporaryMediaIds,

    required  this.returnItems,
  });

  @JsonKey(
    
    name: r'orderId',
    required: true,
    includeIfNull: false,
  )


  final String orderId;



  @JsonKey(
    
    name: r'reason',
    required: true,
    includeIfNull: false,
  )


  final String reason;



          // minimum: 0
  @JsonKey(
    
    name: r'requestedRefundAmount',
    required: false,
    includeIfNull: false,
  )


  final num? requestedRefundAmount;



  @JsonKey(
    
    name: r'customerNote',
    required: false,
    includeIfNull: false,
  )


  final String? customerNote;



  @JsonKey(
    
    name: r'temporaryMediaIds',
    required: false,
    includeIfNull: false,
  )


  final List<String>? temporaryMediaIds;



  @JsonKey(
    
    name: r'returnItems',
    required: true,
    includeIfNull: false,
  )


  final List<CreateReturnRequestDetailDto> returnItems;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateReturnRequestDto &&
      other.orderId == orderId &&
      other.reason == reason &&
      other.requestedRefundAmount == requestedRefundAmount &&
      other.customerNote == customerNote &&
      other.temporaryMediaIds == temporaryMediaIds &&
      other.returnItems == returnItems;

    @override
    int get hashCode =>
        orderId.hashCode +
        reason.hashCode +
        requestedRefundAmount.hashCode +
        (customerNote == null ? 0 : customerNote.hashCode) +
        (temporaryMediaIds == null ? 0 : temporaryMediaIds.hashCode) +
        returnItems.hashCode;

  factory CreateReturnRequestDto.fromJson(Map<String, dynamic> json) => _$CreateReturnRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreateReturnRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

