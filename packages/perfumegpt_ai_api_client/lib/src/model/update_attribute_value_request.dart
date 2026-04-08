//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_attribute_value_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateAttributeValueRequest {
  /// Returns a new [UpdateAttributeValueRequest] instance.
  UpdateAttributeValueRequest({

    required  this.value,
  });

  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false,
  )


  final String value;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateAttributeValueRequest &&
      other.value == value;

    @override
    int get hashCode =>
        value.hashCode;

  factory UpdateAttributeValueRequest.fromJson(Map<String, dynamic> json) => _$UpdateAttributeValueRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateAttributeValueRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

