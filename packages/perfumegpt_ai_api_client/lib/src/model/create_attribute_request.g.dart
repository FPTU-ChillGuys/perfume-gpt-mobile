// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_attribute_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateAttributeRequestCWProxy {
  CreateAttributeRequest internalCode(String? internalCode);

  CreateAttributeRequest name(String name);

  CreateAttributeRequest description(String? description);

  CreateAttributeRequest isVariantLevel(bool isVariantLevel);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateAttributeRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateAttributeRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateAttributeRequest call({
    String? internalCode,
    String name,
    String? description,
    bool isVariantLevel,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateAttributeRequest.copyWith(...)` or call `instanceOfCreateAttributeRequest.copyWith.fieldName(value)` for a single field.
class _$CreateAttributeRequestCWProxyImpl
    implements _$CreateAttributeRequestCWProxy {
  const _$CreateAttributeRequestCWProxyImpl(this._value);

  final CreateAttributeRequest _value;

  @override
  CreateAttributeRequest internalCode(String? internalCode) =>
      call(internalCode: internalCode);

  @override
  CreateAttributeRequest name(String name) => call(name: name);

  @override
  CreateAttributeRequest description(String? description) =>
      call(description: description);

  @override
  CreateAttributeRequest isVariantLevel(bool isVariantLevel) =>
      call(isVariantLevel: isVariantLevel);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateAttributeRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateAttributeRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateAttributeRequest call({
    Object? internalCode = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? isVariantLevel = const $CopyWithPlaceholder(),
  }) {
    return CreateAttributeRequest(
      internalCode: internalCode == const $CopyWithPlaceholder()
          ? _value.internalCode
          // ignore: cast_nullable_to_non_nullable
          : internalCode as String?,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      isVariantLevel:
          isVariantLevel == const $CopyWithPlaceholder() ||
              isVariantLevel == null
          ? _value.isVariantLevel
          // ignore: cast_nullable_to_non_nullable
          : isVariantLevel as bool,
    );
  }
}

extension $CreateAttributeRequestCopyWith on CreateAttributeRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateAttributeRequest.copyWith(...)` or `instanceOfCreateAttributeRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateAttributeRequestCWProxy get copyWith =>
      _$CreateAttributeRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAttributeRequest _$CreateAttributeRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateAttributeRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name', 'isVariantLevel']);
  final val = CreateAttributeRequest(
    internalCode: $checkedConvert('internalCode', (v) => v as String?),
    name: $checkedConvert('name', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String?),
    isVariantLevel: $checkedConvert('isVariantLevel', (v) => v as bool),
  );
  return val;
});

Map<String, dynamic> _$CreateAttributeRequestToJson(
  CreateAttributeRequest instance,
) => <String, dynamic>{
  'internalCode': ?instance.internalCode,
  'name': instance.name,
  'description': ?instance.description,
  'isVariantLevel': instance.isVariantLevel,
};
