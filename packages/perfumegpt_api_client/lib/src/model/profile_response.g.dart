// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProfileResponseCWProxy {
  ProfileResponse id(String? id);

  ProfileResponse userId(String? userId);

  ProfileResponse scentPreference(String? scentPreference);

  ProfileResponse minBudget(num? minBudget);

  ProfileResponse maxBudget(num? maxBudget);

  ProfileResponse preferredStyle(String? preferredStyle);

  ProfileResponse favoriteNotes(String? favoriteNotes);

  ProfileResponse updatedAt(DateTime? updatedAt);

  ProfileResponse createdAt(DateTime? createdAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProfileResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProfileResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ProfileResponse call({
    String? id,
    String? userId,
    String? scentPreference,
    num? minBudget,
    num? maxBudget,
    String? preferredStyle,
    String? favoriteNotes,
    DateTime? updatedAt,
    DateTime? createdAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProfileResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProfileResponse.copyWith.fieldName(...)`
class _$ProfileResponseCWProxyImpl implements _$ProfileResponseCWProxy {
  const _$ProfileResponseCWProxyImpl(this._value);

  final ProfileResponse _value;

  @override
  ProfileResponse id(String? id) => this(id: id);

  @override
  ProfileResponse userId(String? userId) => this(userId: userId);

  @override
  ProfileResponse scentPreference(String? scentPreference) =>
      this(scentPreference: scentPreference);

  @override
  ProfileResponse minBudget(num? minBudget) => this(minBudget: minBudget);

  @override
  ProfileResponse maxBudget(num? maxBudget) => this(maxBudget: maxBudget);

  @override
  ProfileResponse preferredStyle(String? preferredStyle) =>
      this(preferredStyle: preferredStyle);

  @override
  ProfileResponse favoriteNotes(String? favoriteNotes) =>
      this(favoriteNotes: favoriteNotes);

  @override
  ProfileResponse updatedAt(DateTime? updatedAt) => this(updatedAt: updatedAt);

  @override
  ProfileResponse createdAt(DateTime? createdAt) => this(createdAt: createdAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProfileResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProfileResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ProfileResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? scentPreference = const $CopyWithPlaceholder(),
    Object? minBudget = const $CopyWithPlaceholder(),
    Object? maxBudget = const $CopyWithPlaceholder(),
    Object? preferredStyle = const $CopyWithPlaceholder(),
    Object? favoriteNotes = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return ProfileResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      scentPreference: scentPreference == const $CopyWithPlaceholder()
          ? _value.scentPreference
          // ignore: cast_nullable_to_non_nullable
          : scentPreference as String?,
      minBudget: minBudget == const $CopyWithPlaceholder()
          ? _value.minBudget
          // ignore: cast_nullable_to_non_nullable
          : minBudget as num?,
      maxBudget: maxBudget == const $CopyWithPlaceholder()
          ? _value.maxBudget
          // ignore: cast_nullable_to_non_nullable
          : maxBudget as num?,
      preferredStyle: preferredStyle == const $CopyWithPlaceholder()
          ? _value.preferredStyle
          // ignore: cast_nullable_to_non_nullable
          : preferredStyle as String?,
      favoriteNotes: favoriteNotes == const $CopyWithPlaceholder()
          ? _value.favoriteNotes
          // ignore: cast_nullable_to_non_nullable
          : favoriteNotes as String?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
    );
  }
}

extension $ProfileResponseCopyWith on ProfileResponse {
  /// Returns a callable class that can be used as follows: `instanceOfProfileResponse.copyWith(...)` or like so:`instanceOfProfileResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProfileResponseCWProxy get copyWith => _$ProfileResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProfileResponse', json, ($checkedConvert) {
      final val = ProfileResponse(
        id: $checkedConvert('id', (v) => v as String?),
        userId: $checkedConvert('userId', (v) => v as String?),
        scentPreference: $checkedConvert(
          'scentPreference',
          (v) => v as String?,
        ),
        minBudget: $checkedConvert('minBudget', (v) => v as num?),
        maxBudget: $checkedConvert('maxBudget', (v) => v as num?),
        preferredStyle: $checkedConvert('preferredStyle', (v) => v as String?),
        favoriteNotes: $checkedConvert('favoriteNotes', (v) => v as String?),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProfileResponseToJson(ProfileResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'userId': ?instance.userId,
      'scentPreference': ?instance.scentPreference,
      'minBudget': ?instance.minBudget,
      'maxBudget': ?instance.maxBudget,
      'preferredStyle': ?instance.preferredStyle,
      'favoriteNotes': ?instance.favoriteNotes,
      'updatedAt': ?instance.updatedAt?.toIso8601String(),
      'createdAt': ?instance.createdAt?.toIso8601String(),
    };
