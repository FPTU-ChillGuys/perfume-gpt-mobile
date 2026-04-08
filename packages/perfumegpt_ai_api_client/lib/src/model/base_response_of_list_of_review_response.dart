//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/review_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response_of_list_of_review_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BaseResponseOfListOfReviewResponse {
  /// Returns a new [BaseResponseOfListOfReviewResponse] instance.
  BaseResponseOfListOfReviewResponse({

     this.payload,

     this.success,

     this.message,

     this.errors,

     this.errorType,
  });

  @JsonKey(
    
    name: r'payload',
    required: false,
    includeIfNull: false,
  )


  final List<ReviewResponse>? payload;



  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
  )


  final bool? success;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final String? message;



  @JsonKey(
    
    name: r'errors',
    required: false,
    includeIfNull: false,
  )


  final List<String>? errors;



  @JsonKey(
    
    name: r'errorType',
    required: false,
    includeIfNull: false,
  )


  final int? errorType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BaseResponseOfListOfReviewResponse &&
      other.payload == payload &&
      other.success == success &&
      other.message == message &&
      other.errors == errors &&
      other.errorType == errorType;

    @override
    int get hashCode =>
        (payload == null ? 0 : payload.hashCode) +
        success.hashCode +
        message.hashCode +
        (errors == null ? 0 : errors.hashCode) +
        (errorType == null ? 0 : errorType.hashCode);

  factory BaseResponseOfListOfReviewResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseOfListOfReviewResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseOfListOfReviewResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

