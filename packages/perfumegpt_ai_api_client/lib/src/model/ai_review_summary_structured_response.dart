//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/ai_response_metadata.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ai_review_summary_structured_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AIReviewSummaryStructuredResponse {
  /// Returns a new [AIReviewSummaryStructuredResponse] instance.
  AIReviewSummaryStructuredResponse({
    required this.summary,

    required this.variantId,

    required this.reviewCount,

    required this.generatedAt,

    this.metadata,
  });

  /// Nội dung tóm tắt đánh giá
  @JsonKey(name: r'summary', required: true, includeIfNull: false)
  final String summary;

  /// Variant ID liên quan
  @JsonKey(name: r'variantId', required: true, includeIfNull: false)
  final String variantId;

  /// Số lượng review đã phân tích
  @JsonKey(name: r'reviewCount', required: true, includeIfNull: false)
  final num reviewCount;

  /// Thời điểm tạo kết quả
  @JsonKey(name: r'generatedAt', required: true, includeIfNull: false)
  final DateTime generatedAt;

  /// Thông tin bổ sung
  @JsonKey(name: r'metadata', required: false, includeIfNull: false)
  final AIResponseMetadata? metadata;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AIReviewSummaryStructuredResponse &&
          other.summary == summary &&
          other.variantId == variantId &&
          other.reviewCount == reviewCount &&
          other.generatedAt == generatedAt &&
          other.metadata == metadata;

  @override
  int get hashCode =>
      summary.hashCode +
      variantId.hashCode +
      reviewCount.hashCode +
      generatedAt.hashCode +
      metadata.hashCode;

  factory AIReviewSummaryStructuredResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AIReviewSummaryStructuredResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AIReviewSummaryStructuredResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
