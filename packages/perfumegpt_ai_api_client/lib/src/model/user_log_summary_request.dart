//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_log_summary_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserLogSummaryRequest {
  /// Returns a new [UserLogSummaryRequest] instance.
  UserLogSummaryRequest({
    required this.userId,

    this.startDate,

    this.endDate,

    this.logSummary = '',

    this.featureSnapshot,

    this.dailyLogSummary,

    this.dailyFeatureSnapshot,
  });

  /// ID người dùng
  @JsonKey(name: r'userId', required: true, includeIfNull: false)
  final String userId;

  /// Ngày bắt đầu (legacy)
  @JsonKey(name: r'startDate', required: false, includeIfNull: false)
  final DateTime? startDate;

  /// Ngày kết thúc (legacy)
  @JsonKey(name: r'endDate', required: false, includeIfNull: false)
  final DateTime? endDate;

  /// Nội dung tóm tắt log
  @JsonKey(
    defaultValue: '',
    name: r'logSummary',
    required: true,
    includeIfNull: false,
  )
  final String logSummary;

  /// Feature snapshot dạng JSON
  @JsonKey(name: r'featureSnapshot', required: false, includeIfNull: false)
  final Object? featureSnapshot;

  /// Bản tóm tắt log theo ngày
  @JsonKey(name: r'dailyLogSummary', required: false, includeIfNull: false)
  final Object? dailyLogSummary;

  /// Feature snapshot theo ngày
  @JsonKey(name: r'dailyFeatureSnapshot', required: false, includeIfNull: false)
  final Object? dailyFeatureSnapshot;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserLogSummaryRequest &&
          other.userId == userId &&
          other.startDate == startDate &&
          other.endDate == endDate &&
          other.logSummary == logSummary &&
          other.featureSnapshot == featureSnapshot &&
          other.dailyLogSummary == dailyLogSummary &&
          other.dailyFeatureSnapshot == dailyFeatureSnapshot;

  @override
  int get hashCode =>
      userId.hashCode +
      startDate.hashCode +
      endDate.hashCode +
      logSummary.hashCode +
      featureSnapshot.hashCode +
      dailyLogSummary.hashCode +
      dailyFeatureSnapshot.hashCode;

  factory UserLogSummaryRequest.fromJson(Map<String, dynamic> json) =>
      _$UserLogSummaryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserLogSummaryRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
