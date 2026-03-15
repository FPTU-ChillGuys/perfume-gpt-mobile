// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_attribute_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateAttributeRequestCWProxy {
  UpdateAttributeRequest name(String? name);

  UpdateAttributeRequest description(String? description);

  UpdateAttributeRequest isVariantLevel(bool? isVariantLevel);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateAttributeRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateAttributeRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateAttributeRequest call({
    String? name,
    String? description,
    bool? isVariantLevel,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateAttributeRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateAttributeRequest.copyWith.fieldName(...)`
class _$UpdateAttributeRequestCWProxyImpl
    implements _$UpdateAttributeRequestCWProxy {
  const _$UpdateAttributeRequestCWProxyImpl(this._value);

  final UpdateAttributeRequest _value;

  @override
  UpdateAttributeRequest name(String? name) => this(name: name);

  @override
  UpdateAttributeRequest description(String? description) =>
      this(description: description);

  @override
  UpdateAttributeRequest isVariantLevel(bool? isVariantLevel) =>
      this(isVariantLevel: isVariantLevel);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateAttributeRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateAttributeRequest(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfUpdateAttributeRequest.copyWith(...)` or like so:`instanceOfUpdateAttributeRequest.copyWith.fieldName(...)`.
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
