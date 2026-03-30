// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_concentration_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateConcentrationRequestCWProxy {
  UpdateConcentrationRequest name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateConcentrationRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateConcentrationRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateConcentrationRequest call({String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateConcentrationRequest.copyWith(...)` or call `instanceOfUpdateConcentrationRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateConcentrationRequestCWProxyImpl
    implements _$UpdateConcentrationRequestCWProxy {
  const _$UpdateConcentrationRequestCWProxyImpl(this._value);

  final UpdateConcentrationRequest _value;

  @override
  UpdateConcentrationRequest name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateConcentrationRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateConcentrationRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateConcentrationRequest call({
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return UpdateConcentrationRequest(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $UpdateConcentrationRequestCopyWith on UpdateConcentrationRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateConcentrationRequest.copyWith(...)` or `instanceOfUpdateConcentrationRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateConcentrationRequestCWProxy get copyWith =>
      _$UpdateConcentrationRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateConcentrationRequest _$UpdateConcentrationRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateConcentrationRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = UpdateConcentrationRequest(
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$UpdateConcentrationRequestToJson(
  UpdateConcentrationRequest instance,
) => <String, dynamic>{'name': instance.name};
