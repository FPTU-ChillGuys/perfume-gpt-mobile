//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/survey_answer_request.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_question_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyQuestionRequest {
  /// Returns a new [SurveyQuestionRequest] instance.
  SurveyQuestionRequest({
    required this.question,

    this.questionType = SurveyQuestionRequestQuestionTypeEnum.single,

    required this.answers,
  });

  /// Nội dung câu hỏi survey
  @JsonKey(name: r'question', required: true, includeIfNull: false)
  final String question;

  /// Loại câu hỏi
  @JsonKey(
    defaultValue: SurveyQuestionRequestQuestionTypeEnum.single,
    name: r'questionType',
    required: false,
    includeIfNull: false,
  )
  final SurveyQuestionRequestQuestionTypeEnum? questionType;

  /// Danh sách câu trả lời
  @JsonKey(name: r'answers', required: true, includeIfNull: false)
  final List<SurveyAnswerRequest> answers;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyQuestionRequest &&
          other.question == question &&
          other.questionType == questionType &&
          other.answers == answers;

  @override
  int get hashCode =>
      question.hashCode + questionType.hashCode + answers.hashCode;

  factory SurveyQuestionRequest.fromJson(Map<String, dynamic> json) =>
      _$SurveyQuestionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyQuestionRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Loại câu hỏi
enum SurveyQuestionRequestQuestionTypeEnum {
  /// Loại câu hỏi
  @JsonValue(r'single')
  single(r'single'),

  /// Loại câu hỏi
  @JsonValue(r'multiple')
  multiple(r'multiple');

  const SurveyQuestionRequestQuestionTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
