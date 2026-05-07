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
  LoginRequest({
    required this.credential,

    required this.password,

    this.fcmToken,

    this.deviceType,
  });

  @JsonKey(name: r'credential', required: true, includeIfNull: false)
  final String credential;

  @JsonKey(name: r'password', required: true, includeIfNull: false)
  final String password;

  @JsonKey(name: r'fcmToken', required: false, includeIfNull: false)
  final String? fcmToken;

  @JsonKey(name: r'deviceType', required: false, includeIfNull: false)
  final String? deviceType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginRequest &&
          other.credential == credential &&
          other.password == password &&
          other.fcmToken == fcmToken &&
          other.deviceType == deviceType;

  @override
  int get hashCode =>
      credential.hashCode +
      password.hashCode +
      (fcmToken == null ? 0 : fcmToken.hashCode) +
      (deviceType == null ? 0 : deviceType.hashCode);

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
