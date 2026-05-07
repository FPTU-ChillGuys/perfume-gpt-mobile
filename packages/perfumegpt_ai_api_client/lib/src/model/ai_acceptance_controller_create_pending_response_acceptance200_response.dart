//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/ai_acceptance.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ai_acceptance_controller_create_pending_response_acceptance200_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AIAcceptanceControllerCreatePendingResponseAcceptance200Response {
  /// Returns a new [AIAcceptanceControllerCreatePendingResponseAcceptance200Response] instance.
  AIAcceptanceControllerCreatePendingResponseAcceptance200Response({
    this.success,

    this.error,

    this.details,

    this.data,
  });

  /// Kết quả xử lý
  @JsonKey(name: r'success', required: false, includeIfNull: false)
  final bool? success;

  /// Thông báo lỗi
  @JsonKey(name: r'error', required: false, includeIfNull: false)
  final String? error;

  /// Chi tiết lỗi
  @JsonKey(name: r'details', required: false, includeIfNull: false)
  final String? details;

  @JsonKey(name: r'data', required: false, includeIfNull: false)
  final AIAcceptance? data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AIAcceptanceControllerCreatePendingResponseAcceptance200Response &&
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

  factory AIAcceptanceControllerCreatePendingResponseAcceptance200Response.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AIAcceptanceControllerCreatePendingResponseAcceptance200ResponseFromJson(
        json,
      );

  Map<String, dynamic> toJson() =>
      _$AIAcceptanceControllerCreatePendingResponseAcceptance200ResponseToJson(
        this,
      );

  @override
  String toString() {
    return toJson().toString();
  }
}
