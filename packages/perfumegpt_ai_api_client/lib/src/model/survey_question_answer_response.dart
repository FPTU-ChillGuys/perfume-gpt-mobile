//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/grouped_survey_question_answer_detail_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_question_answer_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyQuestionAnswerResponse {
  /// Returns a new [SurveyQuestionAnswerResponse] instance.
  SurveyQuestionAnswerResponse({

    required  this.id,

    required  this.createdAt,

    required  this.updatedAt,

    required  this.isActive,

    required  this.userId,

    required  this.details,
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



      /// ID người dùng
  @JsonKey(
    
    name: r'userId',
    required: true,
    includeIfNull: false,
  )


  final String userId;



      /// Danh sách chi tiết câu hỏi - câu trả lời
  @JsonKey(
    
    name: r'details',
    required: true,
    includeIfNull: false,
  )


  final List<GroupedSurveyQuestionAnswerDetailResponse> details;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SurveyQuestionAnswerResponse &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.isActive == isActive &&
      other.userId == userId &&
      other.details == details;

    @override
    int get hashCode =>
        id.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode +
        isActive.hashCode +
        userId.hashCode +
        details.hashCode;

  factory SurveyQuestionAnswerResponse.fromJson(Map<String, dynamic> json) => _$SurveyQuestionAnswerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyQuestionAnswerResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

