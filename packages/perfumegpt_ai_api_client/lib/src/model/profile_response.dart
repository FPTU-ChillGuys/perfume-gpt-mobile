//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/customer_family_preference_respone.dart';
import 'package:perfumegpt_ai_api_client/src/model/customer_note_preference_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/customer_attribute_preference_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProfileResponse {
  /// Returns a new [ProfileResponse] instance.
  ProfileResponse({

     this.dateOfBirth,

     this.minBudget,

     this.maxBudget,

    required  this.notePreferences,

    required  this.familyPreferences,

    required  this.attributePreferences,
  });

  @JsonKey(
    
    name: r'dateOfBirth',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateOfBirth;



  @JsonKey(
    
    name: r'minBudget',
    required: false,
    includeIfNull: false,
  )


  final num? minBudget;



  @JsonKey(
    
    name: r'maxBudget',
    required: false,
    includeIfNull: false,
  )


  final num? maxBudget;



  @JsonKey(
    
    name: r'notePreferences',
    required: true,
    includeIfNull: false,
  )


  final List<CustomerNotePreferenceResponse> notePreferences;



  @JsonKey(
    
    name: r'familyPreferences',
    required: true,
    includeIfNull: false,
  )


  final List<CustomerFamilyPreferenceRespone> familyPreferences;



  @JsonKey(
    
    name: r'attributePreferences',
    required: true,
    includeIfNull: false,
  )


  final List<CustomerAttributePreferenceResponse> attributePreferences;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProfileResponse &&
      other.dateOfBirth == dateOfBirth &&
      other.minBudget == minBudget &&
      other.maxBudget == maxBudget &&
      other.notePreferences == notePreferences &&
      other.familyPreferences == familyPreferences &&
      other.attributePreferences == attributePreferences;

    @override
    int get hashCode =>
        (dateOfBirth == null ? 0 : dateOfBirth.hashCode) +
        (minBudget == null ? 0 : minBudget.hashCode) +
        (maxBudget == null ? 0 : maxBudget.hashCode) +
        notePreferences.hashCode +
        familyPreferences.hashCode +
        attributePreferences.hashCode;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

