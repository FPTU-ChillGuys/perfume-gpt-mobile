// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProfileResponseCWProxy {
  ProfileResponse dateOfBirth(DateTime? dateOfBirth);

  ProfileResponse minBudget(num? minBudget);

  ProfileResponse maxBudget(num? maxBudget);

  ProfileResponse notePreferences(
    List<CustomerNotePreferenceResponse> notePreferences,
  );

  ProfileResponse familyPreferences(
    List<CustomerFamilyPreferenceRespone> familyPreferences,
  );

  ProfileResponse attributePreferences(
    List<CustomerAttributePreferenceResponse> attributePreferences,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProfileResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProfileResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProfileResponse call({
    DateTime? dateOfBirth,
    num? minBudget,
    num? maxBudget,
    List<CustomerNotePreferenceResponse> notePreferences,
    List<CustomerFamilyPreferenceRespone> familyPreferences,
    List<CustomerAttributePreferenceResponse> attributePreferences,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProfileResponse.copyWith(...)` or call `instanceOfProfileResponse.copyWith.fieldName(value)` for a single field.
class _$ProfileResponseCWProxyImpl implements _$ProfileResponseCWProxy {
  const _$ProfileResponseCWProxyImpl(this._value);

  final ProfileResponse _value;

  @override
  ProfileResponse dateOfBirth(DateTime? dateOfBirth) =>
      call(dateOfBirth: dateOfBirth);

  @override
  ProfileResponse minBudget(num? minBudget) => call(minBudget: minBudget);

  @override
  ProfileResponse maxBudget(num? maxBudget) => call(maxBudget: maxBudget);

  @override
  ProfileResponse notePreferences(
    List<CustomerNotePreferenceResponse> notePreferences,
  ) => call(notePreferences: notePreferences);

  @override
  ProfileResponse familyPreferences(
    List<CustomerFamilyPreferenceRespone> familyPreferences,
  ) => call(familyPreferences: familyPreferences);

  @override
  ProfileResponse attributePreferences(
    List<CustomerAttributePreferenceResponse> attributePreferences,
  ) => call(attributePreferences: attributePreferences);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProfileResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProfileResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProfileResponse call({
    Object? dateOfBirth = const $CopyWithPlaceholder(),
    Object? minBudget = const $CopyWithPlaceholder(),
    Object? maxBudget = const $CopyWithPlaceholder(),
    Object? notePreferences = const $CopyWithPlaceholder(),
    Object? familyPreferences = const $CopyWithPlaceholder(),
    Object? attributePreferences = const $CopyWithPlaceholder(),
  }) {
    return ProfileResponse(
      dateOfBirth: dateOfBirth == const $CopyWithPlaceholder()
          ? _value.dateOfBirth
          // ignore: cast_nullable_to_non_nullable
          : dateOfBirth as DateTime?,
      minBudget: minBudget == const $CopyWithPlaceholder()
          ? _value.minBudget
          // ignore: cast_nullable_to_non_nullable
          : minBudget as num?,
      maxBudget: maxBudget == const $CopyWithPlaceholder()
          ? _value.maxBudget
          // ignore: cast_nullable_to_non_nullable
          : maxBudget as num?,
      notePreferences:
          notePreferences == const $CopyWithPlaceholder() ||
              notePreferences == null
          ? _value.notePreferences
          // ignore: cast_nullable_to_non_nullable
          : notePreferences as List<CustomerNotePreferenceResponse>,
      familyPreferences:
          familyPreferences == const $CopyWithPlaceholder() ||
              familyPreferences == null
          ? _value.familyPreferences
          // ignore: cast_nullable_to_non_nullable
          : familyPreferences as List<CustomerFamilyPreferenceRespone>,
      attributePreferences:
          attributePreferences == const $CopyWithPlaceholder() ||
              attributePreferences == null
          ? _value.attributePreferences
          // ignore: cast_nullable_to_non_nullable
          : attributePreferences as List<CustomerAttributePreferenceResponse>,
    );
  }
}

extension $ProfileResponseCopyWith on ProfileResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProfileResponse.copyWith(...)` or `instanceOfProfileResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProfileResponseCWProxy get copyWith => _$ProfileResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponse _$ProfileResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProfileResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'notePreferences',
      'familyPreferences',
      'attributePreferences',
    ],
  );
  final val = ProfileResponse(
    dateOfBirth: $checkedConvert(
      'dateOfBirth',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    minBudget: $checkedConvert('minBudget', (v) => v as num?),
    maxBudget: $checkedConvert('maxBudget', (v) => v as num?),
    notePreferences: $checkedConvert(
      'notePreferences',
      (v) => (v as List<dynamic>)
          .map(
            (e) => CustomerNotePreferenceResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    familyPreferences: $checkedConvert(
      'familyPreferences',
      (v) => (v as List<dynamic>)
          .map(
            (e) => CustomerFamilyPreferenceRespone.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    attributePreferences: $checkedConvert(
      'attributePreferences',
      (v) => (v as List<dynamic>)
          .map(
            (e) => CustomerAttributePreferenceResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProfileResponseToJson(
  ProfileResponse instance,
) => <String, dynamic>{
  'dateOfBirth': ?instance.dateOfBirth?.toIso8601String(),
  'minBudget': ?instance.minBudget,
  'maxBudget': ?instance.maxBudget,
  'notePreferences': instance.notePreferences.map((e) => e.toJson()).toList(),
  'familyPreferences': instance.familyPreferences
      .map((e) => e.toJson())
      .toList(),
  'attributePreferences': instance.attributePreferences
      .map((e) => e.toJson())
      .toList(),
};
