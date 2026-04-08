//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_attribute_preference_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomerAttributePreferenceResponse {
  /// Returns a new [CustomerAttributePreferenceResponse] instance.
  CustomerAttributePreferenceResponse({

     this.attributeValueId,

    required  this.attributeValueName,
  });

  @JsonKey(
    
    name: r'attributeValueId',
    required: false,
    includeIfNull: false,
  )


  final int? attributeValueId;



  @JsonKey(
    
    name: r'attributeValueName',
    required: true,
    includeIfNull: false,
  )


  final String attributeValueName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CustomerAttributePreferenceResponse &&
      other.attributeValueId == attributeValueId &&
      other.attributeValueName == attributeValueName;

    @override
    int get hashCode =>
        attributeValueId.hashCode +
        attributeValueName.hashCode;

  factory CustomerAttributePreferenceResponse.fromJson(Map<String, dynamic> json) => _$CustomerAttributePreferenceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerAttributePreferenceResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

