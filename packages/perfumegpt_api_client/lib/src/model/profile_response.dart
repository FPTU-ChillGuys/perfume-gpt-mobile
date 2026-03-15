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

     this.id,

     this.userId,

     this.scentPreference,

     this.minBudget,

     this.maxBudget,

     this.preferredStyle,

     this.favoriteNotes,

     this.updatedAt,

     this.createdAt,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'userId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



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



  @JsonKey(
    
    name: r'updatedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? updatedAt;



  @JsonKey(
    
    name: r'createdAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProfileResponse &&
      other.id == id &&
      other.userId == userId &&
      other.scentPreference == scentPreference &&
      other.minBudget == minBudget &&
      other.maxBudget == maxBudget &&
      other.preferredStyle == preferredStyle &&
      other.favoriteNotes == favoriteNotes &&
      other.updatedAt == updatedAt &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        id.hashCode +
        userId.hashCode +
        (scentPreference == null ? 0 : scentPreference.hashCode) +
        (minBudget == null ? 0 : minBudget.hashCode) +
        (maxBudget == null ? 0 : maxBudget.hashCode) +
        (preferredStyle == null ? 0 : preferredStyle.hashCode) +
        (favoriteNotes == null ? 0 : favoriteNotes.hashCode) +
        (updatedAt == null ? 0 : updatedAt.hashCode) +
        createdAt.hashCode;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

