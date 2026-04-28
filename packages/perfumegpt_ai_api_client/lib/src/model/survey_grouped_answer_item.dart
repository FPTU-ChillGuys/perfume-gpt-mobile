//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_grouped_answer_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyGroupedAnswerItem {
  /// Returns a new [SurveyGroupedAnswerItem] instance.
  SurveyGroupedAnswerItem({

    required  this.detailId,

    required  this.answerId,

    required  this.answer,
  });

      /// ID detail tương ứng
  @JsonKey(
    
    name: r'detailId',
    required: true,
    includeIfNull: false,
  )


  final String detailId;



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
    bool operator ==(Object other) => identical(this, other) || other is SurveyGroupedAnswerItem &&
      other.detailId == detailId &&
      other.answerId == answerId &&
      other.answer == answer;

    @override
    int get hashCode =>
        detailId.hashCode +
        answerId.hashCode +
        answer.hashCode;

  factory SurveyGroupedAnswerItem.fromJson(Map<String, dynamic> json) => _$SurveyGroupedAnswerItemFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyGroupedAnswerItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

