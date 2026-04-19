//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/survey_question_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_controller_get_all_surveys200_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyControllerGetAllSurveys200Response {
  /// Returns a new [SurveyControllerGetAllSurveys200Response] instance.
  SurveyControllerGetAllSurveys200Response({
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
  final List<SurveyQuestionResponse>? data;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyControllerGetAllSurveys200Response &&
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

  factory SurveyControllerGetAllSurveys200Response.fromJson(
    Map<String, dynamic> json,
  ) => _$SurveyControllerGetAllSurveys200ResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SurveyControllerGetAllSurveys200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
