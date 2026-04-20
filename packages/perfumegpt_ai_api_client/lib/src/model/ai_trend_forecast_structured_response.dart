//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/ai_response_metadata.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ai_trend_forecast_structured_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AITrendForecastStructuredResponse {
  /// Returns a new [AITrendForecastStructuredResponse] instance.
  AITrendForecastStructuredResponse({
    required this.forecast,

    required this.period,

    required this.analyzedLogCount,

    required this.generatedAt,

    this.metadata,
  });

  /// Nội dung dự báo xu hướng
  @JsonKey(name: r'forecast', required: true, includeIfNull: false)
  final String forecast;

  /// Khoảng thời gian phân tích
  @JsonKey(name: r'period', required: true, includeIfNull: false)
  final String period;

  /// Số lượng user log đã phân tích
  @JsonKey(name: r'analyzedLogCount', required: true, includeIfNull: false)
  final num analyzedLogCount;

  /// Thời điểm tạo kết quả
  @JsonKey(name: r'generatedAt', required: true, includeIfNull: false)
  final DateTime generatedAt;

  /// Thông tin bổ sung
  @JsonKey(name: r'metadata', required: false, includeIfNull: false)
  final AIResponseMetadata? metadata;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AITrendForecastStructuredResponse &&
          other.forecast == forecast &&
          other.period == period &&
          other.analyzedLogCount == analyzedLogCount &&
          other.generatedAt == generatedAt &&
          other.metadata == metadata;

  @override
  int get hashCode =>
      forecast.hashCode +
      period.hashCode +
      analyzedLogCount.hashCode +
      generatedAt.hashCode +
      metadata.hashCode;

  factory AITrendForecastStructuredResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AITrendForecastStructuredResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AITrendForecastStructuredResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
