//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_user_basic_info_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateUserBasicInfoRequest {
  /// Returns a new [UpdateUserBasicInfoRequest] instance.
  UpdateUserBasicInfoRequest({
    required this.fullName,

    required this.phoneNumber,
  });

  @JsonKey(name: r'fullName', required: true, includeIfNull: false)
  final String fullName;

  @JsonKey(name: r'phoneNumber', required: true, includeIfNull: false)
  final String phoneNumber;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateUserBasicInfoRequest &&
          other.fullName == fullName &&
          other.phoneNumber == phoneNumber;

  @override
  int get hashCode => fullName.hashCode + phoneNumber.hashCode;

  factory UpdateUserBasicInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserBasicInfoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateUserBasicInfoRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
