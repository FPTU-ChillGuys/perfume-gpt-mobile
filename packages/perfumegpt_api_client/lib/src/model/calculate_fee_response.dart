//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/calculate_fee_data.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'calculate_fee_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CalculateFeeResponse {
  /// Returns a new [CalculateFeeResponse] instance.
  CalculateFeeResponse({

     this.code,

     this.message,

     this.data,
  });

  @JsonKey(
    
    name: r'code',
    required: false,
    includeIfNull: false,
  )


  final int? code;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final String? message;



  @JsonKey(
    
    name: r'data',
    required: false,
    includeIfNull: false,
  )


  final CalculateFeeData? data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CalculateFeeResponse &&
      other.code == code &&
      other.message == message &&
      other.data == data;

    @override
    int get hashCode =>
        code.hashCode +
        message.hashCode +
        data.hashCode;

  factory CalculateFeeResponse.fromJson(Map<String, dynamic> json) => _$CalculateFeeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CalculateFeeResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

