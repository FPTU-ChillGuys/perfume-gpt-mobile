//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/update_note_preference_request.dart';
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
    this.dateOfBirth,

    this.minBudget,

    this.maxBudget,

    this.notePreferenceIds,

    this.familyPreferenceIds,

    this.attributePreferenceIds,
  });

  @JsonKey(name: r'dateOfBirth', required: false, includeIfNull: false)
  final DateTime? dateOfBirth;

  @JsonKey(name: r'minBudget', required: false, includeIfNull: false)
  final num? minBudget;

  // minimum: 0
  @JsonKey(name: r'maxBudget', required: false, includeIfNull: false)
  final num? maxBudget;

  @JsonKey(name: r'notePreferenceIds', required: false, includeIfNull: false)
  final List<UpdateNotePreferenceRequest>? notePreferenceIds;

  @JsonKey(name: r'familyPreferenceIds', required: false, includeIfNull: false)
  final List<int>? familyPreferenceIds;

  @JsonKey(
    name: r'attributePreferenceIds',
    required: false,
    includeIfNull: false,
  )
  final List<int>? attributePreferenceIds;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateProfileRequest &&
          other.dateOfBirth == dateOfBirth &&
          other.minBudget == minBudget &&
          other.maxBudget == maxBudget &&
          other.notePreferenceIds == notePreferenceIds &&
          other.familyPreferenceIds == familyPreferenceIds &&
          other.attributePreferenceIds == attributePreferenceIds;

  @override
  int get hashCode =>
      (dateOfBirth == null ? 0 : dateOfBirth.hashCode) +
      (minBudget == null ? 0 : minBudget.hashCode) +
      (maxBudget == null ? 0 : maxBudget.hashCode) +
      (notePreferenceIds == null ? 0 : notePreferenceIds.hashCode) +
      (familyPreferenceIds == null ? 0 : familyPreferenceIds.hashCode) +
      (attributePreferenceIds == null ? 0 : attributePreferenceIds.hashCode);

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
