// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProfileResponseCWProxy {
  ProfileResponse dateOfBirth(Object? dateOfBirth);

  ProfileResponse createdAt(String createdAt);

  ProfileResponse favoriteNotes(Object? favoriteNotes);

  ProfileResponse id(String id);

  ProfileResponse maxBudget(Object? maxBudget);

  ProfileResponse minBudget(Object? minBudget);

  ProfileResponse preferredStyle(Object? preferredStyle);

  ProfileResponse scentPreference(Object? scentPreference);

  ProfileResponse updatedAt(Object? updatedAt);

  ProfileResponse userId(String userId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProfileResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProfileResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProfileResponse call({
    Object? dateOfBirth,
    String createdAt,
    Object? favoriteNotes,
    String id,
    Object? maxBudget,
    Object? minBudget,
    Object? preferredStyle,
    Object? scentPreference,
    Object? updatedAt,
    String userId,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProfileResponse.copyWith(...)` or call `instanceOfProfileResponse.copyWith.fieldName(value)` for a single field.
class _$ProfileResponseCWProxyImpl implements _$ProfileResponseCWProxy {
  const _$ProfileResponseCWProxyImpl(this._value);

  final ProfileResponse _value;

  @override
  ProfileResponse dateOfBirth(Object? dateOfBirth) =>
      call(dateOfBirth: dateOfBirth);

  @override
  ProfileResponse createdAt(String createdAt) => call(createdAt: createdAt);

  @override
  ProfileResponse favoriteNotes(Object? favoriteNotes) =>
      call(favoriteNotes: favoriteNotes);

  @override
  ProfileResponse id(String id) => call(id: id);

  @override
  ProfileResponse maxBudget(Object? maxBudget) => call(maxBudget: maxBudget);

  @override
  ProfileResponse minBudget(Object? minBudget) => call(minBudget: minBudget);

  @override
  ProfileResponse preferredStyle(Object? preferredStyle) =>
      call(preferredStyle: preferredStyle);

  @override
  ProfileResponse scentPreference(Object? scentPreference) =>
      call(scentPreference: scentPreference);

  @override
  ProfileResponse updatedAt(Object? updatedAt) => call(updatedAt: updatedAt);

  @override
  ProfileResponse userId(String userId) => call(userId: userId);

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
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? favoriteNotes = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? maxBudget = const $CopyWithPlaceholder(),
    Object? minBudget = const $CopyWithPlaceholder(),
    Object? preferredStyle = const $CopyWithPlaceholder(),
    Object? scentPreference = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
  }) {
    return ProfileResponse(
      dateOfBirth: dateOfBirth == const $CopyWithPlaceholder()
          ? _value.dateOfBirth
          // ignore: cast_nullable_to_non_nullable
          : dateOfBirth as Object?,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as String,
      favoriteNotes: favoriteNotes == const $CopyWithPlaceholder()
          ? _value.favoriteNotes
          // ignore: cast_nullable_to_non_nullable
          : favoriteNotes as Object?,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      maxBudget: maxBudget == const $CopyWithPlaceholder()
          ? _value.maxBudget
          // ignore: cast_nullable_to_non_nullable
          : maxBudget as Object?,
      minBudget: minBudget == const $CopyWithPlaceholder()
          ? _value.minBudget
          // ignore: cast_nullable_to_non_nullable
          : minBudget as Object?,
      preferredStyle: preferredStyle == const $CopyWithPlaceholder()
          ? _value.preferredStyle
          // ignore: cast_nullable_to_non_nullable
          : preferredStyle as Object?,
      scentPreference: scentPreference == const $CopyWithPlaceholder()
          ? _value.scentPreference
          // ignore: cast_nullable_to_non_nullable
          : scentPreference as Object?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as Object?,
      userId: userId == const $CopyWithPlaceholder() || userId == null
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String,
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

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProfileResponse', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const [
          'dateOfBirth',
          'createdAt',
          'favoriteNotes',
          'id',
          'maxBudget',
          'minBudget',
          'preferredStyle',
          'scentPreference',
          'updatedAt',
          'userId',
        ],
      );
      final val = ProfileResponse(
        dateOfBirth: $checkedConvert('dateOfBirth', (v) => v),
        createdAt: $checkedConvert('createdAt', (v) => v as String),
        favoriteNotes: $checkedConvert('favoriteNotes', (v) => v),
        id: $checkedConvert('id', (v) => v as String),
        maxBudget: $checkedConvert('maxBudget', (v) => v),
        minBudget: $checkedConvert('minBudget', (v) => v),
        preferredStyle: $checkedConvert('preferredStyle', (v) => v),
        scentPreference: $checkedConvert('scentPreference', (v) => v),
        updatedAt: $checkedConvert('updatedAt', (v) => v),
        userId: $checkedConvert('userId', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'dateOfBirth': instance.dateOfBirth,
      'createdAt': instance.createdAt,
      'favoriteNotes': instance.favoriteNotes,
      'id': instance.id,
      'maxBudget': instance.maxBudget,
      'minBudget': instance.minBudget,
      'preferredStyle': instance.preferredStyle,
      'scentPreference': instance.scentPreference,
      'updatedAt': instance.updatedAt,
      'userId': instance.userId,
    };
