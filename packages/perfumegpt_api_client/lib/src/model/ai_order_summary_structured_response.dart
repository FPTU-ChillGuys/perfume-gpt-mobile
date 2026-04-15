//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/ai_response_metadata.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ai_order_summary_structured_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AIOrderSummaryStructuredResponse {
  /// Returns a new [AIOrderSummaryStructuredResponse] instance.
  AIOrderSummaryStructuredResponse({

    required  this.summary,

    required  this.userId,

    required  this.generatedAt,

     this.metadata,
  });

      /// Nội dung tóm tắt đơn hàng
  @JsonKey(
    
    name: r'summary',
    required: true,
    includeIfNull: false,
  )


  final String summary;



      /// User ID liên quan
  @JsonKey(
    
    name: r'userId',
    required: true,
    includeIfNull: false,
  )


  final String userId;



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
    bool operator ==(Object other) => identical(this, other) || other is AIOrderSummaryStructuredResponse &&
      other.summary == summary &&
      other.userId == userId &&
      other.generatedAt == generatedAt &&
      other.metadata == metadata;

    @override
    int get hashCode =>
        summary.hashCode +
        userId.hashCode +
        generatedAt.hashCode +
        metadata.hashCode;

  factory AIOrderSummaryStructuredResponse.fromJson(Map<String, dynamic> json) => _$AIOrderSummaryStructuredResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AIOrderSummaryStructuredResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

