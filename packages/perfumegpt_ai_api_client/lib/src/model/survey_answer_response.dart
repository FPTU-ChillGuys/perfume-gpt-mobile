//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_answer_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyAnswerResponse {
  /// Returns a new [SurveyAnswerResponse] instance.
  SurveyAnswerResponse({
    required this.id,

    required this.createdAt,

    required this.updatedAt,

    required this.isActive,

    this.questionId,

    this.answer,
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

  /// ID câu hỏi
  @JsonKey(name: r'questionId', required: false, includeIfNull: false)
  final String? questionId;

  /// Nội dung câu trả lời
  @JsonKey(name: r'answer', required: false, includeIfNull: false)
  final String? answer;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyAnswerResponse &&
          other.id == id &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.isActive == isActive &&
          other.questionId == questionId &&
          other.answer == answer;

  @override
  int get hashCode =>
      id.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      isActive.hashCode +
      questionId.hashCode +
      answer.hashCode;

  factory SurveyAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$SurveyAnswerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyAnswerResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
