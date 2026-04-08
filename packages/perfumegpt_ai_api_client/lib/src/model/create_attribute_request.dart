//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_attribute_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateAttributeRequest {
  /// Returns a new [CreateAttributeRequest] instance.
  CreateAttributeRequest({

     this.internalCode,

    required  this.name,

     this.description,

    required  this.isVariantLevel,
  });

  @JsonKey(
    
    name: r'internalCode',
    required: false,
    includeIfNull: false,
  )


  final String? internalCode;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



  @JsonKey(
    
    name: r'isVariantLevel',
    required: true,
    includeIfNull: false,
  )


  final bool isVariantLevel;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateAttributeRequest &&
      other.internalCode == internalCode &&
      other.name == name &&
      other.description == description &&
      other.isVariantLevel == isVariantLevel;

    @override
    int get hashCode =>
        (internalCode == null ? 0 : internalCode.hashCode) +
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        isVariantLevel.hashCode;

  factory CreateAttributeRequest.fromJson(Map<String, dynamic> json) => _$CreateAttributeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAttributeRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

