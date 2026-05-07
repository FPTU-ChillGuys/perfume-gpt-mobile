//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_answer.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mobile_survey_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MobileSurveyRequest {
  /// Returns a new [MobileSurveyRequest] instance.
  MobileSurveyRequest({required this.userId, required this.answers});

  /// ID người dùng
  @JsonKey(name: r'userId', required: true, includeIfNull: false)
  final String userId;

  /// Danh sách câu trả lời
  @JsonKey(name: r'answers', required: true, includeIfNull: false)
  final List<MobileSurveyAnswer> answers;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MobileSurveyRequest &&
          other.userId == userId &&
          other.answers == answers;

  @override
  int get hashCode => userId.hashCode + answers.hashCode;

  factory MobileSurveyRequest.fromJson(Map<String, dynamic> json) =>
      _$MobileSurveyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MobileSurveyRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
