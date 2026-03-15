//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_profile_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateProfileRequest {
  /// Returns a new [UpdateProfileRequest] instance.
  UpdateProfileRequest({

     this.scentPreference,

     this.minBudget,

     this.maxBudget,

     this.preferredStyle,

     this.favoriteNotes,
  });

  @JsonKey(
    
    name: r'scentPreference',
    required: false,
    includeIfNull: false,
  )


  final String? scentPreference;



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
    
    name: r'preferredStyle',
    required: false,
    includeIfNull: false,
  )


  final String? preferredStyle;



  @JsonKey(
    
    name: r'favoriteNotes',
    required: false,
    includeIfNull: false,
  )


  final String? favoriteNotes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateProfileRequest &&
      other.scentPreference == scentPreference &&
      other.minBudget == minBudget &&
      other.maxBudget == maxBudget &&
      other.preferredStyle == preferredStyle &&
      other.favoriteNotes == favoriteNotes;

    @override
    int get hashCode =>
        (scentPreference == null ? 0 : scentPreference.hashCode) +
        (minBudget == null ? 0 : minBudget.hashCode) +
        (maxBudget == null ? 0 : maxBudget.hashCode) +
        (preferredStyle == null ? 0 : preferredStyle.hashCode) +
        (favoriteNotes == null ? 0 : favoriteNotes.hashCode);

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) => _$UpdateProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

