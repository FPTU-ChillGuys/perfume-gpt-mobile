//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_controller_get_mobile_survey_questions401_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyControllerGetMobileSurveyQuestions401Response {
  /// Returns a new [SurveyControllerGetMobileSurveyQuestions401Response] instance.
  SurveyControllerGetMobileSurveyQuestions401Response({

     this.success,

     this.error,

     this.detail,

     this.statusCode,
  });

  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
  )


  final bool? success;



      /// Thông báo lỗi
  @JsonKey(
    
    name: r'error',
    required: false,
    includeIfNull: false,
  )


  final String? error;



      /// Chi tiết lỗi
  @JsonKey(
    
    name: r'detail',
    required: false,
    includeIfNull: false,
  )


  final Object? detail;



      /// HTTP status code
  @JsonKey(
    
    name: r'statusCode',
    required: false,
    includeIfNull: false,
  )


  final num? statusCode;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SurveyControllerGetMobileSurveyQuestions401Response &&
      other.success == success &&
      other.error == error &&
      other.detail == detail &&
      other.statusCode == statusCode;

    @override
    int get hashCode =>
        success.hashCode +
        error.hashCode +
        (detail == null ? 0 : detail.hashCode) +
        statusCode.hashCode;

  factory SurveyControllerGetMobileSurveyQuestions401Response.fromJson(Map<String, dynamic> json) => _$SurveyControllerGetMobileSurveyQuestions401ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyControllerGetMobileSurveyQuestions401ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

