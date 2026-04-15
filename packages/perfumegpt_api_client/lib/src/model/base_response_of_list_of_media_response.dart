//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/response_error_type.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response_of_list_of_media_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BaseResponseOfListOfMediaResponse {
  /// Returns a new [BaseResponseOfListOfMediaResponse] instance.
  BaseResponseOfListOfMediaResponse({

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


  final List<MediaResponse>? payload;



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


  final ResponseErrorType? errorType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BaseResponseOfListOfMediaResponse &&
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

  factory BaseResponseOfListOfMediaResponse.fromJson(Map<String, dynamic> json) => _$BaseResponseOfListOfMediaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseOfListOfMediaResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

