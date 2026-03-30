//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/verify_stock_adjustment_detail_request.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verify_stock_adjustment_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VerifyStockAdjustmentRequest {
  /// Returns a new [VerifyStockAdjustmentRequest] instance.
  VerifyStockAdjustmentRequest({

    required  this.adjustmentDetails,
  });

  @JsonKey(
    
    name: r'adjustmentDetails',
    required: true,
    includeIfNull: false,
  )


  final List<VerifyStockAdjustmentDetailRequest> adjustmentDetails;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VerifyStockAdjustmentRequest &&
      other.adjustmentDetails == adjustmentDetails;

    @override
    int get hashCode =>
        adjustmentDetails.hashCode;

  factory VerifyStockAdjustmentRequest.fromJson(Map<String, dynamic> json) => _$VerifyStockAdjustmentRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyStockAdjustmentRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

