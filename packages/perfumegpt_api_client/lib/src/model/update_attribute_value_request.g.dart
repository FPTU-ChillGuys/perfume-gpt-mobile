// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_attribute_value_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateAttributeValueRequestCWProxy {
  UpdateAttributeValueRequest value(String? value);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateAttributeValueRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateAttributeValueRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateAttributeValueRequest call({String? value});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateAttributeValueRequest.copyWith(...)` or call `instanceOfUpdateAttributeValueRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateAttributeValueRequestCWProxyImpl
    implements _$UpdateAttributeValueRequestCWProxy {
  const _$UpdateAttributeValueRequestCWProxyImpl(this._value);

  final UpdateAttributeValueRequest _value;

  @override
  UpdateAttributeValueRequest value(String? value) => call(value: value);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateAttributeValueRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateAttributeValueRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateAttributeValueRequest call({
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return UpdateAttributeValueRequest(
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String?,
    );
  }
}

extension $UpdateAttributeValueRequestCopyWith on UpdateAttributeValueRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateAttributeValueRequest.copyWith(...)` or `instanceOfUpdateAttributeValueRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateAttributeValueRequestCWProxy get copyWith =>
      _$UpdateAttributeValueRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAttributeValueRequest _$UpdateAttributeValueRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateAttributeValueRequest', json, ($checkedConvert) {
  final val = UpdateAttributeValueRequest(
    value: $checkedConvert('value', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$UpdateAttributeValueRequestToJson(
  UpdateAttributeValueRequest instance,
) => <String, dynamic>{'value': ?instance.value};
