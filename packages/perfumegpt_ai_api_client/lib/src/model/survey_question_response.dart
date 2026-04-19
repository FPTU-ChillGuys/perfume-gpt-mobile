//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/survey_answer_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_question_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyQuestionResponse {
  /// Returns a new [SurveyQuestionResponse] instance.
  SurveyQuestionResponse({
    required this.id,

    required this.createdAt,

    required this.updatedAt,

    required this.isActive,

    this.questionType,

    this.question,

    this.answers,
  });

  /// ID bản ghi
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Ngày tạo
  @JsonKey(name: r'createdAt', required: true, includeIfNull: false)
  final DateTime createdAt;

  /// Ngày cập nhật gần nhất
  @JsonKey(name: r'updatedAt', required: true, includeIfNull: false)
  final DateTime updatedAt;

  /// Trạng thái hoạt động
  @JsonKey(name: r'isActive', required: true, includeIfNull: false)
  final bool isActive;

  /// Loại câu hỏi
  @JsonKey(name: r'questionType', required: false, includeIfNull: false)
  final SurveyQuestionResponseQuestionTypeEnum? questionType;

  /// Nội dung câu hỏi
  @JsonKey(name: r'question', required: false, includeIfNull: false)
  final String? question;

  /// Danh sách câu trả lời
  @JsonKey(name: r'answers', required: false, includeIfNull: false)
  final List<SurveyAnswerResponse>? answers;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyQuestionResponse &&
          other.id == id &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.isActive == isActive &&
          other.questionType == questionType &&
          other.question == question &&
          other.answers == answers;

  @override
  int get hashCode =>
      id.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      isActive.hashCode +
      questionType.hashCode +
      question.hashCode +
      answers.hashCode;

  factory SurveyQuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$SurveyQuestionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyQuestionResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Loại câu hỏi
enum SurveyQuestionResponseQuestionTypeEnum {
  /// Loại câu hỏi
  @JsonValue(r'single')
  single(r'single'),

  /// Loại câu hỏi
  @JsonValue(r'multiple')
  multiple(r'multiple');

  const SurveyQuestionResponseQuestionTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
