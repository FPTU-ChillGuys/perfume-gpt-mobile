// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateCategoryRequestCWProxy {
  CreateCategoryRequest name(String? name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateCategoryRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateCategoryRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateCategoryRequest call({String? name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateCategoryRequest.copyWith(...)` or call `instanceOfCreateCategoryRequest.copyWith.fieldName(value)` for a single field.
class _$CreateCategoryRequestCWProxyImpl
    implements _$CreateCategoryRequestCWProxy {
  const _$CreateCategoryRequestCWProxyImpl(this._value);

  final CreateCategoryRequest _value;

  @override
  CreateCategoryRequest name(String? name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateCategoryRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateCategoryRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateCategoryRequest call({Object? name = const $CopyWithPlaceholder()}) {
    return CreateCategoryRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $CreateCategoryRequestCopyWith on CreateCategoryRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateCategoryRequest.copyWith(...)` or `instanceOfCreateCategoryRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateCategoryRequestCWProxy get copyWith =>
      _$CreateCategoryRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCategoryRequest _$CreateCategoryRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateCategoryRequest', json, ($checkedConvert) {
  final val = CreateCategoryRequest(
    name: $checkedConvert('name', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CreateCategoryRequestToJson(
  CreateCategoryRequest instance,
) => <String, dynamic>{'name': ?instance.name};
