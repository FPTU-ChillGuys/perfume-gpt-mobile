//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'all_user_log_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AllUserLogRequest {
  /// Returns a new [AllUserLogRequest] instance.
  AllUserLogRequest({this.period, required this.endDate, this.startDate});

  /// Khoảng thời gian lọc
  @JsonKey(name: r'period', required: false, includeIfNull: false)
  final AllUserLogRequestPeriodEnum? period;

  /// Ngày kết thúc
  @JsonKey(name: r'endDate', required: true, includeIfNull: false)
  final DateTime endDate;

  /// Ngày bắt đầu
  @JsonKey(name: r'startDate', required: false, includeIfNull: false)
  final DateTime? startDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AllUserLogRequest &&
          other.period == period &&
          other.endDate == endDate &&
          other.startDate == startDate;

  @override
  int get hashCode => period.hashCode + endDate.hashCode + startDate.hashCode;

  factory AllUserLogRequest.fromJson(Map<String, dynamic> json) =>
      _$AllUserLogRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AllUserLogRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Khoảng thời gian lọc
enum AllUserLogRequestPeriodEnum {
  /// Khoảng thời gian lọc
  @JsonValue(r'weekly')
  weekly(r'weekly'),

  /// Khoảng thời gian lọc
  @JsonValue(r'monthly')
  monthly(r'monthly'),

  /// Khoảng thời gian lọc
  @JsonValue(r'yearly')
  yearly(r'yearly');

  const AllUserLogRequestPeriodEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
