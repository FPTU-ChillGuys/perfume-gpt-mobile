//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/survey_grouped_answer_item.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'grouped_survey_question_answer_detail_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GroupedSurveyQuestionAnswerDetailResponse {
  /// Returns a new [GroupedSurveyQuestionAnswerDetailResponse] instance.
  GroupedSurveyQuestionAnswerDetailResponse({

    required  this.questionId,

    required  this.question,

    required  this.answers,
  });

      /// ID câu hỏi
  @JsonKey(
    
    name: r'questionId',
    required: true,
    includeIfNull: false,
  )


  final String questionId;



      /// Câu hỏi
  @JsonKey(
    
    name: r'question',
    required: true,
    includeIfNull: false,
  )


  final String question;



      /// Danh sách các câu trả lời do người dùng chọn
  @JsonKey(
    
    name: r'answers',
    required: true,
    includeIfNull: false,
  )


  final List<SurveyGroupedAnswerItem> answers;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GroupedSurveyQuestionAnswerDetailResponse &&
      other.questionId == questionId &&
      other.question == question &&
      other.answers == answers;

    @override
    int get hashCode =>
        questionId.hashCode +
        question.hashCode +
        answers.hashCode;

  factory GroupedSurveyQuestionAnswerDetailResponse.fromJson(Map<String, dynamic> json) => _$GroupedSurveyQuestionAnswerDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GroupedSurveyQuestionAnswerDetailResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

