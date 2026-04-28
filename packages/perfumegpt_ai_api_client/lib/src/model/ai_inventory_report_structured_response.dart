//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/ai_response_metadata.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ai_inventory_report_structured_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AIInventoryReportStructuredResponse {
  /// Returns a new [AIInventoryReportStructuredResponse] instance.
  AIInventoryReportStructuredResponse({

    required  this.report,

    required  this.generatedAt,

     this.metadata,
  });

      /// Nội dung báo cáo tồn kho AI
  @JsonKey(
    
    name: r'report',
    required: true,
    includeIfNull: false,
  )


  final String report;



      /// Thời điểm tạo kết quả
  @JsonKey(
    
    name: r'generatedAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime generatedAt;



      /// Thông tin bổ sung
  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false,
  )


  final AIResponseMetadata? metadata;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AIInventoryReportStructuredResponse &&
      other.report == report &&
      other.generatedAt == generatedAt &&
      other.metadata == metadata;

    @override
    int get hashCode =>
        report.hashCode +
        generatedAt.hashCode +
        metadata.hashCode;

  factory AIInventoryReportStructuredResponse.fromJson(Map<String, dynamic> json) => _$AIInventoryReportStructuredResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AIInventoryReportStructuredResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

