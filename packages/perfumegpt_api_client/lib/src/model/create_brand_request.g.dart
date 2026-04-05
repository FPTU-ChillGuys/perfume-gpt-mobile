// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_brand_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateBrandRequestCWProxy {
  CreateBrandRequest name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateBrandRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateBrandRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateBrandRequest call({String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateBrandRequest.copyWith(...)` or call `instanceOfCreateBrandRequest.copyWith.fieldName(value)` for a single field.
class _$CreateBrandRequestCWProxyImpl implements _$CreateBrandRequestCWProxy {
  const _$CreateBrandRequestCWProxyImpl(this._value);

  final CreateBrandRequest _value;

  @override
  CreateBrandRequest name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateBrandRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateBrandRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateBrandRequest call({Object? name = const $CopyWithPlaceholder()}) {
    return CreateBrandRequest(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $CreateBrandRequestCopyWith on CreateBrandRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateBrandRequest.copyWith(...)` or `instanceOfCreateBrandRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateBrandRequestCWProxy get copyWith =>
      _$CreateBrandRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBrandRequest _$CreateBrandRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreateBrandRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['name']);
      final val = CreateBrandRequest(
        name: $checkedConvert('name', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$CreateBrandRequestToJson(CreateBrandRequest instance) =>
    <String, dynamic>{'name': instance.name};
