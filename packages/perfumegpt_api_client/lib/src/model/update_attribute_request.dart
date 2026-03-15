//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_attribute_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateAttributeRequest {
  /// Returns a new [UpdateAttributeRequest] instance.
  UpdateAttributeRequest({

     this.name,

     this.description,

     this.isVariantLevel,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



  @JsonKey(
    
    name: r'isVariantLevel',
    required: false,
    includeIfNull: false,
  )


  final bool? isVariantLevel;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateAttributeRequest &&
      other.name == name &&
      other.description == description &&
      other.isVariantLevel == isVariantLevel;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        (description == null ? 0 : description.hashCode) +
        (isVariantLevel == null ? 0 : isVariantLevel.hashCode);

  factory UpdateAttributeRequest.fromJson(Map<String, dynamic> json) => _$UpdateAttributeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateAttributeRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

