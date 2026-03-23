// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_attribute_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateAttributeRequestCWProxy {
  UpdateAttributeRequest name(String? name);

  UpdateAttributeRequest description(String? description);

  UpdateAttributeRequest isVariantLevel(bool? isVariantLevel);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateAttributeRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateAttributeRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateAttributeRequest call({
    String? name,
    String? description,
    bool? isVariantLevel,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateAttributeRequest.copyWith(...)` or call `instanceOfUpdateAttributeRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateAttributeRequestCWProxyImpl
    implements _$UpdateAttributeRequestCWProxy {
  const _$UpdateAttributeRequestCWProxyImpl(this._value);

  final UpdateAttributeRequest _value;

  @override
  UpdateAttributeRequest name(String? name) => call(name: name);

  @override
  UpdateAttributeRequest description(String? description) =>
      call(description: description);

  @override
  UpdateAttributeRequest isVariantLevel(bool? isVariantLevel) =>
      call(isVariantLevel: isVariantLevel);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateAttributeRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateAttributeRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateAttributeRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? isVariantLevel = const $CopyWithPlaceholder(),
  }) {
    return UpdateAttributeRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      isVariantLevel: isVariantLevel == const $CopyWithPlaceholder()
          ? _value.isVariantLevel
          // ignore: cast_nullable_to_non_nullable
          : isVariantLevel as bool?,
    );
  }
}

extension $UpdateAttributeRequestCopyWith on UpdateAttributeRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateAttributeRequest.copyWith(...)` or `instanceOfUpdateAttributeRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateAttributeRequestCWProxy get copyWith =>
      _$UpdateAttributeRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAttributeRequest _$UpdateAttributeRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateAttributeRequest', json, ($checkedConvert) {
  final val = UpdateAttributeRequest(
    name: $checkedConvert('name', (v) => v as String?),
    description: $checkedConvert('description', (v) => v as String?),
    isVariantLevel: $checkedConvert('isVariantLevel', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$UpdateAttributeRequestToJson(
  UpdateAttributeRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'description': ?instance.description,
  'isVariantLevel': ?instance.isVariantLevel,
};
