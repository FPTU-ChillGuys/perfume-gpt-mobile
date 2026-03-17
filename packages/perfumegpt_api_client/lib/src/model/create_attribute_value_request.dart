//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_attribute_value_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateAttributeValueRequest {
  /// Returns a new [CreateAttributeValueRequest] instance.
  CreateAttributeValueRequest({this.attributeId, this.value});

  @JsonKey(name: r'attributeId', required: false, includeIfNull: false)
  final int? attributeId;

  @JsonKey(name: r'value', required: false, includeIfNull: false)
  final String? value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateAttributeValueRequest &&
          other.attributeId == attributeId &&
          other.value == value;

  @override
  int get hashCode => attributeId.hashCode + value.hashCode;

  factory CreateAttributeValueRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAttributeValueRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAttributeValueRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
