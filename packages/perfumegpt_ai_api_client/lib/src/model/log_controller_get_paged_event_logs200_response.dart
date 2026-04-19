//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/paged_result.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'log_controller_get_paged_event_logs200_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LogControllerGetPagedEventLogs200Response {
  /// Returns a new [LogControllerGetPagedEventLogs200Response] instance.
  LogControllerGetPagedEventLogs200Response({
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
  final PagedResult? data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogControllerGetPagedEventLogs200Response &&
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

  factory LogControllerGetPagedEventLogs200Response.fromJson(
    Map<String, dynamic> json,
  ) => _$LogControllerGetPagedEventLogs200ResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$LogControllerGetPagedEventLogs200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
