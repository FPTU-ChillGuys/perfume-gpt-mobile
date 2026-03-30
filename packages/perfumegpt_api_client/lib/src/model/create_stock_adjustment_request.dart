//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/create_stock_adjustment_detail_request.dart';
import 'package:perfumegpt_api_client/src/model/stock_adjustment_reason.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_stock_adjustment_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateStockAdjustmentRequest {
  /// Returns a new [CreateStockAdjustmentRequest] instance.
  CreateStockAdjustmentRequest({

    required  this.adjustmentDate,

     this.reason,

     this.note,

    required  this.adjustmentDetails,
  });

  @JsonKey(
    
    name: r'adjustmentDate',
    required: true,
    includeIfNull: false,
  )


  final DateTime adjustmentDate;



  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false,
  )


  final StockAdjustmentReason? reason;



  @JsonKey(
    
    name: r'note',
    required: false,
    includeIfNull: false,
  )


  final String? note;



  @JsonKey(
    
    name: r'adjustmentDetails',
    required: true,
    includeIfNull: false,
  )


  final List<CreateStockAdjustmentDetailRequest> adjustmentDetails;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateStockAdjustmentRequest &&
      other.adjustmentDate == adjustmentDate &&
      other.reason == reason &&
      other.note == note &&
      other.adjustmentDetails == adjustmentDetails;

    @override
    int get hashCode =>
        adjustmentDate.hashCode +
        reason.hashCode +
        (note == null ? 0 : note.hashCode) +
        adjustmentDetails.hashCode;

  factory CreateStockAdjustmentRequest.fromJson(Map<String, dynamic> json) => _$CreateStockAdjustmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateStockAdjustmentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

