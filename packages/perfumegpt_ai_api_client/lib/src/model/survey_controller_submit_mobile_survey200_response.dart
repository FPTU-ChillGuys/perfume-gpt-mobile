//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_response_data.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_controller_submit_mobile_survey200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyControllerSubmitMobileSurvey200Response {
  /// Returns a new [SurveyControllerSubmitMobileSurvey200Response] instance.
  SurveyControllerSubmitMobileSurvey200Response({

     this.success,

     this.error,

     this.details,

     this.data,
  });

      /// Kết quả xử lý
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
    
    name: r'details',
    required: false,
    includeIfNull: false,
  )


  final String? details;



  @JsonKey(
    
    name: r'data',
    required: false,
    includeIfNull: false,
  )


  final MobileSurveyResponseData? data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SurveyControllerSubmitMobileSurvey200Response &&
      other.success == success &&
      other.error == error &&
      other.details == details &&
      other.data == data;

    @override
    int get hashCode =>
        success.hashCode +
        (error == null ? 0 : error.hashCode) +
        (details == null ? 0 : details.hashCode) +
        data.hashCode;

  factory SurveyControllerSubmitMobileSurvey200Response.fromJson(Map<String, dynamic> json) => _$SurveyControllerSubmitMobileSurvey200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyControllerSubmitMobileSurvey200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

