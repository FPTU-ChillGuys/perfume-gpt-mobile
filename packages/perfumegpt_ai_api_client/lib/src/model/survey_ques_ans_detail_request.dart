//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_ques_ans_detail_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyQuesAnsDetailRequest {
  /// Returns a new [SurveyQuesAnsDetailRequest] instance.
  SurveyQuesAnsDetailRequest({
    required this.questionId,

    required this.answerId,
  });

  /// ID câu hỏi survey
  @JsonKey(name: r'questionId', required: true, includeIfNull: false)
  final String questionId;

  /// ID câu trả lời được chọn
  @JsonKey(name: r'answerId', required: true, includeIfNull: false)
  final String answerId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyQuesAnsDetailRequest &&
          other.questionId == questionId &&
          other.answerId == answerId;

  @override
  int get hashCode => questionId.hashCode + answerId.hashCode;

  factory SurveyQuesAnsDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$SurveyQuesAnsDetailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyQuesAnsDetailRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
