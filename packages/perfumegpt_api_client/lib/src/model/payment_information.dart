//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_method.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_information.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaymentInformation {
  /// Returns a new [PaymentInformation] instance.
  PaymentInformation({

     this.method,

     this.posSessionId,
  });

  @JsonKey(
    
    name: r'method',
    required: false,
    includeIfNull: false,
  )


  final PaymentMethod? method;



  @JsonKey(
    
    name: r'posSessionId',
    required: false,
    includeIfNull: false,
  )


  final String? posSessionId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PaymentInformation &&
      other.method == method &&
      other.posSessionId == posSessionId;

    @override
    int get hashCode =>
        (method == null ? 0 : method.hashCode) +
        (posSessionId == null ? 0 : posSessionId.hashCode);

  factory PaymentInformation.fromJson(Map<String, dynamic> json) => _$PaymentInformationFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentInformationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

