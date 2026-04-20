//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response_api.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BaseResponseAPI {
  /// Returns a new [BaseResponseAPI] instance.
  BaseResponseAPI({required this.success, this.error, this.payload});

  /// Kết quả xử lý
  @JsonKey(name: r'success', required: true, includeIfNull: false)
  final bool success;

  /// Thông báo lỗi
  @JsonKey(name: r'error', required: false, includeIfNull: false)
  final Object? error;

  /// Dữ liệu trả về
  @JsonKey(name: r'payload', required: false, includeIfNull: false)
  final Object? payload;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseResponseAPI &&
          other.success == success &&
          other.error == error &&
          other.payload == payload;

  @override
  int get hashCode =>
      success.hashCode +
      (error == null ? 0 : error.hashCode) +
      payload.hashCode;

  factory BaseResponseAPI.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseAPIFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseAPIToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
