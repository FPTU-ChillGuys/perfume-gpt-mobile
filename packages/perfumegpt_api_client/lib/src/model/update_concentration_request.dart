//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_concentration_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateConcentrationRequest {
  /// Returns a new [UpdateConcentrationRequest] instance.
  UpdateConcentrationRequest({this.name});

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateConcentrationRequest && other.name == name;

  @override
  int get hashCode => name.hashCode;

  factory UpdateConcentrationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateConcentrationRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateConcentrationRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
