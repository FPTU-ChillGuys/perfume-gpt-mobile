//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mobile_survey_answer.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MobileSurveyAnswer {
  /// Returns a new [MobileSurveyAnswer] instance.
  MobileSurveyAnswer({required this.questionId, required this.answerId});

  /// ID câu hỏi
  @JsonKey(name: r'questionId', required: true, includeIfNull: false)
  final String questionId;

  /// ID câu trả lời
  @JsonKey(name: r'answerId', required: true, includeIfNull: false)
  final String answerId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MobileSurveyAnswer &&
          other.questionId == questionId &&
          other.answerId == answerId;

  @override
  int get hashCode => questionId.hashCode + answerId.hashCode;

  factory MobileSurveyAnswer.fromJson(Map<String, dynamic> json) =>
      _$MobileSurveyAnswerFromJson(json);

  Map<String, dynamic> toJson() => _$MobileSurveyAnswerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
