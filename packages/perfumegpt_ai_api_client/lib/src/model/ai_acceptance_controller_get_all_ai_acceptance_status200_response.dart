//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/ai_acceptance_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ai_acceptance_controller_get_all_ai_acceptance_status200_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AIAcceptanceControllerGetAllAIAcceptanceStatus200Response {
  /// Returns a new [AIAcceptanceControllerGetAllAIAcceptanceStatus200Response] instance.
  AIAcceptanceControllerGetAllAIAcceptanceStatus200Response({
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
  final AIAcceptanceResponse? data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AIAcceptanceControllerGetAllAIAcceptanceStatus200Response &&
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

  factory AIAcceptanceControllerGetAllAIAcceptanceStatus200Response.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AIAcceptanceControllerGetAllAIAcceptanceStatus200ResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AIAcceptanceControllerGetAllAIAcceptanceStatus200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
