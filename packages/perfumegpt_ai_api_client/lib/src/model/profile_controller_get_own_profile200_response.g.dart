// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_controller_get_own_profile200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProfileControllerGetOwnProfile200ResponseCWProxy {
  ProfileControllerGetOwnProfile200Response success(bool success);

  ProfileControllerGetOwnProfile200Response error(Object? error);

  ProfileControllerGetOwnProfile200Response details(Object? details);

  ProfileControllerGetOwnProfile200Response data(ProfileResponse? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProfileControllerGetOwnProfile200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProfileControllerGetOwnProfile200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProfileControllerGetOwnProfile200Response call({
    bool success,
    Object? error,
    Object? details,
    ProfileResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProfileControllerGetOwnProfile200Response.copyWith(...)` or call `instanceOfProfileControllerGetOwnProfile200Response.copyWith.fieldName(value)` for a single field.
class _$ProfileControllerGetOwnProfile200ResponseCWProxyImpl
    implements _$ProfileControllerGetOwnProfile200ResponseCWProxy {
  const _$ProfileControllerGetOwnProfile200ResponseCWProxyImpl(this._value);

  final ProfileControllerGetOwnProfile200Response _value;

  @override
  ProfileControllerGetOwnProfile200Response success(bool success) =>
      call(success: success);

  @override
  ProfileControllerGetOwnProfile200Response error(Object? error) =>
      call(error: error);

  @override
  ProfileControllerGetOwnProfile200Response details(Object? details) =>
      call(details: details);

  @override
  ProfileControllerGetOwnProfile200Response data(ProfileResponse? data) =>
      call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProfileControllerGetOwnProfile200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProfileControllerGetOwnProfile200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ProfileControllerGetOwnProfile200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ProfileControllerGetOwnProfile200Response(
      success: success == const $CopyWithPlaceholder() || success == null
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as Object?,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as Object?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as ProfileResponse?,
    );
  }
}

extension $ProfileControllerGetOwnProfile200ResponseCopyWith
    on ProfileControllerGetOwnProfile200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProfileControllerGetOwnProfile200Response.copyWith(...)` or `instanceOfProfileControllerGetOwnProfile200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProfileControllerGetOwnProfile200ResponseCWProxy get copyWith =>
      _$ProfileControllerGetOwnProfile200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileControllerGetOwnProfile200Response
_$ProfileControllerGetOwnProfile200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProfileControllerGetOwnProfile200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['success']);
  final val = ProfileControllerGetOwnProfile200Response(
    success: $checkedConvert('success', (v) => v as bool),
    error: $checkedConvert('error', (v) => v),
    details: $checkedConvert('details', (v) => v),
    data: $checkedConvert(
      'data',
      (v) => v == null
          ? null
          : ProfileResponse.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProfileControllerGetOwnProfile200ResponseToJson(
  ProfileControllerGetOwnProfile200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
