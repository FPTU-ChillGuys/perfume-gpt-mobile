// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_concentration_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateConcentrationRequestCWProxy {
  CreateConcentrationRequest name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateConcentrationRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateConcentrationRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateConcentrationRequest call({String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateConcentrationRequest.copyWith(...)` or call `instanceOfCreateConcentrationRequest.copyWith.fieldName(value)` for a single field.
class _$CreateConcentrationRequestCWProxyImpl
    implements _$CreateConcentrationRequestCWProxy {
  const _$CreateConcentrationRequestCWProxyImpl(this._value);

  final CreateConcentrationRequest _value;

  @override
  CreateConcentrationRequest name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateConcentrationRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateConcentrationRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateConcentrationRequest call({
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return CreateConcentrationRequest(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $CreateConcentrationRequestCopyWith on CreateConcentrationRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateConcentrationRequest.copyWith(...)` or `instanceOfCreateConcentrationRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateConcentrationRequestCWProxy get copyWith =>
      _$CreateConcentrationRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateConcentrationRequest _$CreateConcentrationRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateConcentrationRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = CreateConcentrationRequest(
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$CreateConcentrationRequestToJson(
  CreateConcentrationRequest instance,
) => <String, dynamic>{'name': instance.name};
