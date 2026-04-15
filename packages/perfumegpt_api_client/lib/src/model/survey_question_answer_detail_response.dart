//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_question_answer_detail_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyQuestionAnswerDetailResponse {
  /// Returns a new [SurveyQuestionAnswerDetailResponse] instance.
  SurveyQuestionAnswerDetailResponse({

    required  this.id,

    required  this.createdAt,

    required  this.updatedAt,

    required  this.isActive,

    required  this.questionId,

    required  this.question,

    required  this.answerId,

    required  this.answer,
  });

      /// ID bản ghi
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Ngày tạo
  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;



      /// Ngày cập nhật gần nhất
  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime updatedAt;



      /// Trạng thái hoạt động
  @JsonKey(
    
    name: r'isActive',
    required: true,
    includeIfNull: false,
  )


  final bool isActive;



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



      /// ID câu trả lời được chọn
  @JsonKey(
    
    name: r'answerId',
    required: true,
    includeIfNull: false,
  )


  final String answerId;



      /// Câu trả lời được chọn
  @JsonKey(
    
    name: r'answer',
    required: true,
    includeIfNull: false,
  )


  final String answer;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SurveyQuestionAnswerDetailResponse &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.isActive == isActive &&
      other.questionId == questionId &&
      other.question == question &&
      other.answerId == answerId &&
      other.answer == answer;

    @override
    int get hashCode =>
        id.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode +
        isActive.hashCode +
        questionId.hashCode +
        question.hashCode +
        answerId.hashCode +
        answer.hashCode;

  factory SurveyQuestionAnswerDetailResponse.fromJson(Map<String, dynamic> json) => _$SurveyQuestionAnswerDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyQuestionAnswerDetailResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

