//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginRequest {
  /// Returns a new [LoginRequest] instance.
  LoginRequest({this.credential, this.password});

  @JsonKey(name: r'credential', required: false, includeIfNull: false)
  final String? credential;

  @JsonKey(name: r'password', required: false, includeIfNull: false)
  final String? password;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginRequest &&
          other.credential == credential &&
          other.password == password;

  @override
  int get hashCode => credential.hashCode + password.hashCode;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
