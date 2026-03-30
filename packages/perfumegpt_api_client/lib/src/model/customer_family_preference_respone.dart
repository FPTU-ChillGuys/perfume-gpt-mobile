//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_family_preference_respone.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomerFamilyPreferenceRespone {
  /// Returns a new [CustomerFamilyPreferenceRespone] instance.
  CustomerFamilyPreferenceRespone({

     this.familyId,

     this.familyName,
  });

  @JsonKey(
    
    name: r'familyId',
    required: false,
    includeIfNull: false,
  )


  final int? familyId;



  @JsonKey(
    
    name: r'familyName',
    required: false,
    includeIfNull: false,
  )


  final String? familyName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CustomerFamilyPreferenceRespone &&
      other.familyId == familyId &&
      other.familyName == familyName;

    @override
    int get hashCode =>
        familyId.hashCode +
        familyName.hashCode;

  factory CustomerFamilyPreferenceRespone.fromJson(Map<String, dynamic> json) => _$CustomerFamilyPreferenceResponeFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerFamilyPreferenceResponeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

