// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_attribute_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateAttributeRequestCWProxy {
  CreateAttributeRequest name(String? name);

  CreateAttributeRequest description(String? description);

  CreateAttributeRequest isVariantLevel(bool? isVariantLevel);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateAttributeRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateAttributeRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateAttributeRequest call({
    String? name,
    String? description,
    bool? isVariantLevel,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateAttributeRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateAttributeRequest.copyWith.fieldName(...)`
class _$CreateAttributeRequestCWProxyImpl
    implements _$CreateAttributeRequestCWProxy {
  const _$CreateAttributeRequestCWProxyImpl(this._value);

  final CreateAttributeRequest _value;

  @override
  CreateAttributeRequest name(String? name) => this(name: name);

  @override
  CreateAttributeRequest description(String? description) =>
      this(description: description);

  @override
  CreateAttributeRequest isVariantLevel(bool? isVariantLevel) =>
      this(isVariantLevel: isVariantLevel);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateAttributeRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateAttributeRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateAttributeRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? isVariantLevel = const $CopyWithPlaceholder(),
  }) {
    return CreateAttributeRequest(
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

extension $CreateAttributeRequestCopyWith on CreateAttributeRequest {
  /// Returns a callable class that can be used as follows: `instanceOfCreateAttributeRequest.copyWith(...)` or like so:`instanceOfCreateAttributeRequest.copyWith.fieldName(...)`.
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
  final val = CreateAttributeRequest(
    name: $checkedConvert('name', (v) => v as String?),
    description: $checkedConvert('description', (v) => v as String?),
    isVariantLevel: $checkedConvert('isVariantLevel', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$CreateAttributeRequestToJson(
  CreateAttributeRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'description': ?instance.description,
  'isVariantLevel': ?instance.isVariantLevel,
};
