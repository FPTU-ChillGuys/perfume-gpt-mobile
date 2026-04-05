// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_olfactory_family_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateOlfactoryFamilyRequestCWProxy {
  CreateOlfactoryFamilyRequest name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateOlfactoryFamilyRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateOlfactoryFamilyRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateOlfactoryFamilyRequest call({String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateOlfactoryFamilyRequest.copyWith(...)` or call `instanceOfCreateOlfactoryFamilyRequest.copyWith.fieldName(value)` for a single field.
class _$CreateOlfactoryFamilyRequestCWProxyImpl
    implements _$CreateOlfactoryFamilyRequestCWProxy {
  const _$CreateOlfactoryFamilyRequestCWProxyImpl(this._value);

  final CreateOlfactoryFamilyRequest _value;

  @override
  CreateOlfactoryFamilyRequest name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateOlfactoryFamilyRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateOlfactoryFamilyRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateOlfactoryFamilyRequest call({
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return CreateOlfactoryFamilyRequest(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $CreateOlfactoryFamilyRequestCopyWith
    on CreateOlfactoryFamilyRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateOlfactoryFamilyRequest.copyWith(...)` or `instanceOfCreateOlfactoryFamilyRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateOlfactoryFamilyRequestCWProxy get copyWith =>
      _$CreateOlfactoryFamilyRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOlfactoryFamilyRequest _$CreateOlfactoryFamilyRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateOlfactoryFamilyRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = CreateOlfactoryFamilyRequest(
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$CreateOlfactoryFamilyRequestToJson(
  CreateOlfactoryFamilyRequest instance,
) => <String, dynamic>{'name': instance.name};
