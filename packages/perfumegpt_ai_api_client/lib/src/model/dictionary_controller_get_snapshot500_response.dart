//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dictionary_controller_get_snapshot500_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DictionaryControllerGetSnapshot500Response {
  /// Returns a new [DictionaryControllerGetSnapshot500Response] instance.
  DictionaryControllerGetSnapshot500Response({
    this.success,

    this.error,

    this.detail,

    this.statusCode,
  });

  @JsonKey(name: r'success', required: false, includeIfNull: false)
  final bool? success;

  /// Thông báo lỗi
  @JsonKey(name: r'error', required: false, includeIfNull: false)
  final String? error;

  /// Chi tiết lỗi
  @JsonKey(name: r'detail', required: false, includeIfNull: false)
  final Object? detail;

  /// HTTP status code
  @JsonKey(name: r'statusCode', required: false, includeIfNull: false)
  final num? statusCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DictionaryControllerGetSnapshot500Response &&
          other.success == success &&
          other.error == error &&
          other.detail == detail &&
          other.statusCode == statusCode;

  @override
  int get hashCode =>
      success.hashCode +
      error.hashCode +
      (detail == null ? 0 : detail.hashCode) +
      statusCode.hashCode;

  factory DictionaryControllerGetSnapshot500Response.fromJson(
    Map<String, dynamic> json,
  ) => _$DictionaryControllerGetSnapshot500ResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$DictionaryControllerGetSnapshot500ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
