// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateProfileRequestCWProxy {
  UpdateProfileRequest scentPreference(String? scentPreference);

  UpdateProfileRequest minBudget(num? minBudget);

  UpdateProfileRequest maxBudget(num? maxBudget);

  UpdateProfileRequest preferredStyle(String? preferredStyle);

  UpdateProfileRequest favoriteNotes(String? favoriteNotes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateProfileRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateProfileRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateProfileRequest call({
    String? scentPreference,
    num? minBudget,
    num? maxBudget,
    String? preferredStyle,
    String? favoriteNotes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateProfileRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateProfileRequest.copyWith.fieldName(...)`
class _$UpdateProfileRequestCWProxyImpl
    implements _$UpdateProfileRequestCWProxy {
  const _$UpdateProfileRequestCWProxyImpl(this._value);

  final UpdateProfileRequest _value;

  @override
  UpdateProfileRequest scentPreference(String? scentPreference) =>
      this(scentPreference: scentPreference);

  @override
  UpdateProfileRequest minBudget(num? minBudget) => this(minBudget: minBudget);

  @override
  UpdateProfileRequest maxBudget(num? maxBudget) => this(maxBudget: maxBudget);

  @override
  UpdateProfileRequest preferredStyle(String? preferredStyle) =>
      this(preferredStyle: preferredStyle);

  @override
  UpdateProfileRequest favoriteNotes(String? favoriteNotes) =>
      this(favoriteNotes: favoriteNotes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateProfileRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateProfileRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateProfileRequest call({
    Object? scentPreference = const $CopyWithPlaceholder(),
    Object? minBudget = const $CopyWithPlaceholder(),
    Object? maxBudget = const $CopyWithPlaceholder(),
    Object? preferredStyle = const $CopyWithPlaceholder(),
    Object? favoriteNotes = const $CopyWithPlaceholder(),
  }) {
    return UpdateProfileRequest(
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
    );
  }
}

extension $UpdateProfileRequestCopyWith on UpdateProfileRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateProfileRequest.copyWith(...)` or like so:`instanceOfUpdateProfileRequest.copyWith.fieldName(...)`.
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
    scentPreference: $checkedConvert('scentPreference', (v) => v as String?),
    minBudget: $checkedConvert('minBudget', (v) => v as num?),
    maxBudget: $checkedConvert('maxBudget', (v) => v as num?),
    preferredStyle: $checkedConvert('preferredStyle', (v) => v as String?),
    favoriteNotes: $checkedConvert('favoriteNotes', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$UpdateProfileRequestToJson(
  UpdateProfileRequest instance,
) => <String, dynamic>{
  'scentPreference': ?instance.scentPreference,
  'minBudget': ?instance.minBudget,
  'maxBudget': ?instance.maxBudget,
  'preferredStyle': ?instance.preferredStyle,
  'favoriteNotes': ?instance.favoriteNotes,
};
