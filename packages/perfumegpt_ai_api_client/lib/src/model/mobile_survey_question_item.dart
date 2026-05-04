//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_answer_item.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mobile_survey_question_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MobileSurveyQuestionItem {
  /// Returns a new [MobileSurveyQuestionItem] instance.
  MobileSurveyQuestionItem({

    required  this.id,

    required  this.question,

    required  this.questionType,

    required  this.order,

    required  this.isActive,

    required  this.answers,
  });

      /// ID câu hỏi
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Nội dung câu hỏi
  @JsonKey(
    
    name: r'question',
    required: true,
    includeIfNull: false,
  )


  final String question;



      /// Loại câu hỏi
  @JsonKey(
    
    name: r'questionType',
    required: true,
    includeIfNull: false,
  )


  final String questionType;



      /// Thứ tự hiển thị
  @JsonKey(
    
    name: r'order',
    required: true,
    includeIfNull: false,
  )


  final num order;



      /// Trạng thái hoạt động
  @JsonKey(
    
    name: r'isActive',
    required: true,
    includeIfNull: false,
  )


  final bool isActive;



      /// Danh sách câu trả lời
  @JsonKey(
    
    name: r'answers',
    required: true,
    includeIfNull: false,
  )


  final List<MobileSurveyAnswerItem> answers;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MobileSurveyQuestionItem &&
      other.id == id &&
      other.question == question &&
      other.questionType == questionType &&
      other.order == order &&
      other.isActive == isActive &&
      other.answers == answers;

    @override
    int get hashCode =>
        id.hashCode +
        question.hashCode +
        questionType.hashCode +
        order.hashCode +
        isActive.hashCode +
        answers.hashCode;

  factory MobileSurveyQuestionItem.fromJson(Map<String, dynamic> json) => _$MobileSurveyQuestionItemFromJson(json);

  Map<String, dynamic> toJson() => _$MobileSurveyQuestionItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

