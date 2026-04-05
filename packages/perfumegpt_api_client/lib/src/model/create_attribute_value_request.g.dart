// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_attribute_value_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateAttributeValueRequestCWProxy {
  CreateAttributeValueRequest value(String value);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateAttributeValueRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateAttributeValueRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateAttributeValueRequest call({String value});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateAttributeValueRequest.copyWith(...)` or call `instanceOfCreateAttributeValueRequest.copyWith.fieldName(value)` for a single field.
class _$CreateAttributeValueRequestCWProxyImpl
    implements _$CreateAttributeValueRequestCWProxy {
  const _$CreateAttributeValueRequestCWProxyImpl(this._value);

  final CreateAttributeValueRequest _value;

  @override
  CreateAttributeValueRequest value(String value) => call(value: value);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateAttributeValueRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateAttributeValueRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateAttributeValueRequest call({
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return CreateAttributeValueRequest(
      value: value == const $CopyWithPlaceholder() || value == null
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String,
    );
  }
}

extension $CreateAttributeValueRequestCopyWith on CreateAttributeValueRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateAttributeValueRequest.copyWith(...)` or `instanceOfCreateAttributeValueRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateAttributeValueRequestCWProxy get copyWith =>
      _$CreateAttributeValueRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAttributeValueRequest _$CreateAttributeValueRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateAttributeValueRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['value']);
  final val = CreateAttributeValueRequest(
    value: $checkedConvert('value', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$CreateAttributeValueRequestToJson(
  CreateAttributeValueRequest instance,
) => <String, dynamic>{'value': instance.value};
