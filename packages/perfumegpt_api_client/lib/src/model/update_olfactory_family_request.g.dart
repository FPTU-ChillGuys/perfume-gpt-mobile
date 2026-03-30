// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_olfactory_family_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateOlfactoryFamilyRequestCWProxy {
  UpdateOlfactoryFamilyRequest name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateOlfactoryFamilyRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateOlfactoryFamilyRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateOlfactoryFamilyRequest call({String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateOlfactoryFamilyRequest.copyWith(...)` or call `instanceOfUpdateOlfactoryFamilyRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateOlfactoryFamilyRequestCWProxyImpl
    implements _$UpdateOlfactoryFamilyRequestCWProxy {
  const _$UpdateOlfactoryFamilyRequestCWProxyImpl(this._value);

  final UpdateOlfactoryFamilyRequest _value;

  @override
  UpdateOlfactoryFamilyRequest name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateOlfactoryFamilyRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateOlfactoryFamilyRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateOlfactoryFamilyRequest call({
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return UpdateOlfactoryFamilyRequest(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $UpdateOlfactoryFamilyRequestCopyWith
    on UpdateOlfactoryFamilyRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateOlfactoryFamilyRequest.copyWith(...)` or `instanceOfUpdateOlfactoryFamilyRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateOlfactoryFamilyRequestCWProxy get copyWith =>
      _$UpdateOlfactoryFamilyRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOlfactoryFamilyRequest _$UpdateOlfactoryFamilyRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateOlfactoryFamilyRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = UpdateOlfactoryFamilyRequest(
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$UpdateOlfactoryFamilyRequestToJson(
  UpdateOlfactoryFamilyRequest instance,
) => <String, dynamic>{'name': instance.name};
