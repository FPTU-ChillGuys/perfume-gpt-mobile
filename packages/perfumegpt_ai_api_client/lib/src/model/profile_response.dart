//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
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

    required  this.dateOfBirth,

    required  this.createdAt,

    required  this.favoriteNotes,

    required  this.id,

    required  this.maxBudget,

    required  this.minBudget,

    required  this.preferredStyle,

    required  this.scentPreference,

    required  this.updatedAt,

    required  this.userId,
  });

      /// User date of birth
  @JsonKey(
    
    name: r'dateOfBirth',
    required: true,
    includeIfNull: true,
  )


  final Object? dateOfBirth;



      /// Profile creation date
  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final String createdAt;



      /// Favorite perfume notes
  @JsonKey(
    
    name: r'favoriteNotes',
    required: true,
    includeIfNull: true,
  )


  final Object? favoriteNotes;



      /// Profile ID
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Maximum budget
  @JsonKey(
    
    name: r'maxBudget',
    required: true,
    includeIfNull: true,
  )


  final Object? maxBudget;



      /// Minimum budget
  @JsonKey(
    
    name: r'minBudget',
    required: true,
    includeIfNull: true,
  )


  final Object? minBudget;



      /// Preferred perfume style
  @JsonKey(
    
    name: r'preferredStyle',
    required: true,
    includeIfNull: true,
  )


  final Object? preferredStyle;



      /// Scent preference
  @JsonKey(
    
    name: r'scentPreference',
    required: true,
    includeIfNull: true,
  )


  final Object? scentPreference;



      /// Last update date
  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: true,
  )


  final Object? updatedAt;



      /// Associated user ID
  @JsonKey(
    
    name: r'userId',
    required: true,
    includeIfNull: false,
  )


  final String userId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProfileResponse &&
      other.dateOfBirth == dateOfBirth &&
      other.createdAt == createdAt &&
      other.favoriteNotes == favoriteNotes &&
      other.id == id &&
      other.maxBudget == maxBudget &&
      other.minBudget == minBudget &&
      other.preferredStyle == preferredStyle &&
      other.scentPreference == scentPreference &&
      other.updatedAt == updatedAt &&
      other.userId == userId;

    @override
    int get hashCode =>
        (dateOfBirth == null ? 0 : dateOfBirth.hashCode) +
        createdAt.hashCode +
        (favoriteNotes == null ? 0 : favoriteNotes.hashCode) +
        id.hashCode +
        (maxBudget == null ? 0 : maxBudget.hashCode) +
        (minBudget == null ? 0 : minBudget.hashCode) +
        (preferredStyle == null ? 0 : preferredStyle.hashCode) +
        (scentPreference == null ? 0 : scentPreference.hashCode) +
        (updatedAt == null ? 0 : updatedAt.hashCode) +
        userId.hashCode;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

