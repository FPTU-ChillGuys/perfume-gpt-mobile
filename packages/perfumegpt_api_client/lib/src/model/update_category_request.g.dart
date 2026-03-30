// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateCategoryRequestCWProxy {
  UpdateCategoryRequest name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCategoryRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCategoryRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCategoryRequest call({String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateCategoryRequest.copyWith(...)` or call `instanceOfUpdateCategoryRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateCategoryRequestCWProxyImpl
    implements _$UpdateCategoryRequestCWProxy {
  const _$UpdateCategoryRequestCWProxyImpl(this._value);

  final UpdateCategoryRequest _value;

  @override
  UpdateCategoryRequest name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCategoryRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCategoryRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCategoryRequest call({Object? name = const $CopyWithPlaceholder()}) {
    return UpdateCategoryRequest(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $UpdateCategoryRequestCopyWith on UpdateCategoryRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateCategoryRequest.copyWith(...)` or `instanceOfUpdateCategoryRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateCategoryRequestCWProxy get copyWith =>
      _$UpdateCategoryRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCategoryRequest _$UpdateCategoryRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateCategoryRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = UpdateCategoryRequest(
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$UpdateCategoryRequestToJson(
  UpdateCategoryRequest instance,
) => <String, dynamic>{'name': instance.name};
