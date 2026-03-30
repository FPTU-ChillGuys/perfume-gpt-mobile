//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/record_inspection_detail_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_inspection_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RecordInspectionDto {
  /// Returns a new [RecordInspectionDto] instance.
  RecordInspectionDto({

     this.approvedRefundAmount,

    required  this.inspectionResults,
  });

          // minimum: 0
  @JsonKey(
    
    name: r'approvedRefundAmount',
    required: false,
    includeIfNull: false,
  )


  final num? approvedRefundAmount;



  @JsonKey(
    
    name: r'inspectionResults',
    required: true,
    includeIfNull: false,
  )


  final List<RecordInspectionDetailDto> inspectionResults;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RecordInspectionDto &&
      other.approvedRefundAmount == approvedRefundAmount &&
      other.inspectionResults == inspectionResults;

    @override
    int get hashCode =>
        approvedRefundAmount.hashCode +
        inspectionResults.hashCode;

  factory RecordInspectionDto.fromJson(Map<String, dynamic> json) => _$RecordInspectionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RecordInspectionDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

