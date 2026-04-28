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

     this.queryFragment,
  });

      /// Nội dung câu trả lời
  @JsonKey(
    
    name: r'answer',
    required: true,
    includeIfNull: false,
  )


  final String answer;



      /// Query fragment cho survey v4
  @JsonKey(
    
    name: r'queryFragment',
    required: false,
    includeIfNull: false,
  )


  final Object? queryFragment;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SurveyAnswerRequest &&
      other.answer == answer &&
      other.queryFragment == queryFragment;

    @override
    int get hashCode =>
        answer.hashCode +
        queryFragment.hashCode;

  factory SurveyAnswerRequest.fromJson(Map<String, dynamic> json) => _$SurveyAnswerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyAnswerRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

