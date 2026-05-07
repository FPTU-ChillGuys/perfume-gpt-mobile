//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'google_login_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GoogleLoginRequest {
  /// Returns a new [GoogleLoginRequest] instance.
  GoogleLoginRequest({required this.idToken, this.fcmToken, this.deviceType});

  @JsonKey(name: r'idToken', required: true, includeIfNull: false)
  final String idToken;

  @JsonKey(name: r'fcmToken', required: false, includeIfNull: false)
  final String? fcmToken;

  @JsonKey(name: r'deviceType', required: false, includeIfNull: false)
  final String? deviceType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GoogleLoginRequest &&
          other.idToken == idToken &&
          other.fcmToken == fcmToken &&
          other.deviceType == deviceType;

  @override
  int get hashCode =>
      idToken.hashCode +
      (fcmToken == null ? 0 : fcmToken.hashCode) +
      (deviceType == null ? 0 : deviceType.hashCode);

  factory GoogleLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$GoogleLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GoogleLoginRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
