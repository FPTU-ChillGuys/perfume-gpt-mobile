//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forgot_password_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ForgotPasswordRequest {
  /// Returns a new [ForgotPasswordRequest] instance.
  ForgotPasswordRequest({

    required  this.email,

    required  this.clientUri,
  });

  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



  @JsonKey(
    
    name: r'clientUri',
    required: true,
    includeIfNull: false,
  )


  final String clientUri;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ForgotPasswordRequest &&
      other.email == email &&
      other.clientUri == clientUri;

    @override
    int get hashCode =>
        email.hashCode +
        clientUri.hashCode;

  factory ForgotPasswordRequest.fromJson(Map<String, dynamic> json) => _$ForgotPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ForgotPasswordRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

