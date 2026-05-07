//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_olfactory_family_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateOlfactoryFamilyRequest {
  /// Returns a new [UpdateOlfactoryFamilyRequest] instance.
  UpdateOlfactoryFamilyRequest({required this.name});

  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateOlfactoryFamilyRequest && other.name == name;

  @override
  int get hashCode => name.hashCode;

  factory UpdateOlfactoryFamilyRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateOlfactoryFamilyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOlfactoryFamilyRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
