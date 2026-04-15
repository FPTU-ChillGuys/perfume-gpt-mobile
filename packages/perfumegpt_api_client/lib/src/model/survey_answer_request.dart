//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_answer_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyAnswerRequest {
  /// Returns a new [SurveyAnswerRequest] instance.
  SurveyAnswerRequest({

    required  this.answer,
  });

      /// Nội dung câu trả lời
  @JsonKey(
    
    name: r'answer',
    required: true,
    includeIfNull: false,
  )


  final String answer;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SurveyAnswerRequest &&
      other.answer == answer;

    @override
    int get hashCode =>
        answer.hashCode;

  factory SurveyAnswerRequest.fromJson(Map<String, dynamic> json) => _$SurveyAnswerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyAnswerRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

