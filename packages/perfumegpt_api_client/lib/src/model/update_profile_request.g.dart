// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateProfileRequestCWProxy {
  UpdateProfileRequest dateOfBirth(DateTime? dateOfBirth);

  UpdateProfileRequest minBudget(num? minBudget);

  UpdateProfileRequest maxBudget(num? maxBudget);

  UpdateProfileRequest notePreferenceIds(
    List<UpdateNotePreferenceRequest>? notePreferenceIds,
  );

  UpdateProfileRequest familyPreferenceIds(List<int>? familyPreferenceIds);

  UpdateProfileRequest attributePreferenceIds(
    List<int>? attributePreferenceIds,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateProfileRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateProfileRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateProfileRequest call({
    DateTime? dateOfBirth,
    num? minBudget,
    num? maxBudget,
    List<UpdateNotePreferenceRequest>? notePreferenceIds,
    List<int>? familyPreferenceIds,
    List<int>? attributePreferenceIds,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateProfileRequest.copyWith(...)` or call `instanceOfUpdateProfileRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateProfileRequestCWProxyImpl
    implements _$UpdateProfileRequestCWProxy {
  const _$UpdateProfileRequestCWProxyImpl(this._value);

  final UpdateProfileRequest _value;

  @override
  UpdateProfileRequest dateOfBirth(DateTime? dateOfBirth) =>
      call(dateOfBirth: dateOfBirth);

  @override
  UpdateProfileRequest minBudget(num? minBudget) => call(minBudget: minBudget);

  @override
  UpdateProfileRequest maxBudget(num? maxBudget) => call(maxBudget: maxBudget);

  @override
  UpdateProfileRequest notePreferenceIds(
    List<UpdateNotePreferenceRequest>? notePreferenceIds,
  ) => call(notePreferenceIds: notePreferenceIds);

  @override
  UpdateProfileRequest familyPreferenceIds(List<int>? familyPreferenceIds) =>
      call(familyPreferenceIds: familyPreferenceIds);

  @override
  UpdateProfileRequest attributePreferenceIds(
    List<int>? attributePreferenceIds,
  ) => call(attributePreferenceIds: attributePreferenceIds);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateProfileRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateProfileRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateProfileRequest call({
    Object? dateOfBirth = const $CopyWithPlaceholder(),
    Object? minBudget = const $CopyWithPlaceholder(),
    Object? maxBudget = const $CopyWithPlaceholder(),
    Object? notePreferenceIds = const $CopyWithPlaceholder(),
    Object? familyPreferenceIds = const $CopyWithPlaceholder(),
    Object? attributePreferenceIds = const $CopyWithPlaceholder(),
  }) {
    return UpdateProfileRequest(
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
      notePreferenceIds: notePreferenceIds == const $CopyWithPlaceholder()
          ? _value.notePreferenceIds
          // ignore: cast_nullable_to_non_nullable
          : notePreferenceIds as List<UpdateNotePreferenceRequest>?,
      familyPreferenceIds: familyPreferenceIds == const $CopyWithPlaceholder()
          ? _value.familyPreferenceIds
          // ignore: cast_nullable_to_non_nullable
          : familyPreferenceIds as List<int>?,
      attributePreferenceIds:
          attributePreferenceIds == const $CopyWithPlaceholder()
          ? _value.attributePreferenceIds
          // ignore: cast_nullable_to_non_nullable
          : attributePreferenceIds as List<int>?,
    );
  }
}

extension $UpdateProfileRequestCopyWith on UpdateProfileRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateProfileRequest.copyWith(...)` or `instanceOfUpdateProfileRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateProfileRequestCWProxy get copyWith =>
      _$UpdateProfileRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProfileRequest _$UpdateProfileRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateProfileRequest', json, ($checkedConvert) {
  final val = UpdateProfileRequest(
    dateOfBirth: $checkedConvert(
      'dateOfBirth',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    minBudget: $checkedConvert('minBudget', (v) => v as num?),
    maxBudget: $checkedConvert('maxBudget', (v) => v as num?),
    notePreferenceIds: $checkedConvert(
      'notePreferenceIds',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                UpdateNotePreferenceRequest.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    familyPreferenceIds: $checkedConvert(
      'familyPreferenceIds',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
    ),
    attributePreferenceIds: $checkedConvert(
      'attributePreferenceIds',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateProfileRequestToJson(
  UpdateProfileRequest instance,
) => <String, dynamic>{
  'dateOfBirth': ?instance.dateOfBirth?.toIso8601String(),
  'minBudget': ?instance.minBudget,
  'maxBudget': ?instance.maxBudget,
  'notePreferenceIds': ?instance.notePreferenceIds
      ?.map((e) => e.toJson())
      .toList(),
  'familyPreferenceIds': ?instance.familyPreferenceIds,
  'attributePreferenceIds': ?instance.attributePreferenceIds,
};
