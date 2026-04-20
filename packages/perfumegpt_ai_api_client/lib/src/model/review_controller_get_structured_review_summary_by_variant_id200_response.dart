//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/ai_review_summary_structured_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review_controller_get_structured_review_summary_by_variant_id200_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReviewControllerGetStructuredReviewSummaryByVariantId200Response {
  /// Returns a new [ReviewControllerGetStructuredReviewSummaryByVariantId200Response] instance.
  ReviewControllerGetStructuredReviewSummaryByVariantId200Response({
    required this.success,

    this.error,

    this.details,

    this.data,
  });

  /// Kết quả xử lý
  @JsonKey(name: r'success', required: true, includeIfNull: false)
  final bool success;

  /// Thông báo lỗi
  @JsonKey(name: r'error', required: false, includeIfNull: false)
  final Object? error;

  /// Chi tiết lỗi
  @JsonKey(name: r'details', required: false, includeIfNull: false)
  final Object? details;

  @JsonKey(name: r'data', required: false, includeIfNull: false)
  final AIReviewSummaryStructuredResponse? data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReviewControllerGetStructuredReviewSummaryByVariantId200Response &&
          other.success == success &&
          other.error == error &&
          other.details == details &&
          other.data == data;

  @override
  int get hashCode =>
      success.hashCode +
      (error == null ? 0 : error.hashCode) +
      (details == null ? 0 : details.hashCode) +
      data.hashCode;

  factory ReviewControllerGetStructuredReviewSummaryByVariantId200Response.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ReviewControllerGetStructuredReviewSummaryByVariantId200ResponseFromJson(
        json,
      );

  Map<String, dynamic> toJson() =>
      _$ReviewControllerGetStructuredReviewSummaryByVariantId200ResponseToJson(
        this,
      );

  @override
  String toString() {
    return toJson().toString();
  }
}
