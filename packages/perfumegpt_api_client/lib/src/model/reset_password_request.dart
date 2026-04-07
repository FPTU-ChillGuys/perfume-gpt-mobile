//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reset_password_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ResetPasswordRequest {
  /// Returns a new [ResetPasswordRequest] instance.
  ResetPasswordRequest({

    required  this.password,

    required  this.confirmPassword,

    required  this.email,

    required  this.token,
  });

  @JsonKey(
    
    name: r'password',
    required: true,
    includeIfNull: false,
  )


  final String password;



  @JsonKey(
    
    name: r'confirmPassword',
    required: true,
    includeIfNull: false,
  )


  final String confirmPassword;



  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false,
  )


  final String token;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ResetPasswordRequest &&
      other.password == password &&
      other.confirmPassword == confirmPassword &&
      other.email == email &&
      other.token == token;

    @override
    int get hashCode =>
        password.hashCode +
        confirmPassword.hashCode +
        email.hashCode +
        token.hashCode;

  factory ResetPasswordRequest.fromJson(Map<String, dynamic> json) => _$ResetPasswordRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

