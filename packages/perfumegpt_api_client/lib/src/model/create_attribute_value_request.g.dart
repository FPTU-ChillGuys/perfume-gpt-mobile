// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_attribute_value_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateAttributeValueRequestCWProxy {
  CreateAttributeValueRequest attributeId(int? attributeId);

  CreateAttributeValueRequest value(String? value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateAttributeValueRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateAttributeValueRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateAttributeValueRequest call({int? attributeId, String? value});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateAttributeValueRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateAttributeValueRequest.copyWith.fieldName(...)`
class _$CreateAttributeValueRequestCWProxyImpl
    implements _$CreateAttributeValueRequestCWProxy {
  const _$CreateAttributeValueRequestCWProxyImpl(this._value);

  final CreateAttributeValueRequest _value;

  @override
  CreateAttributeValueRequest attributeId(int? attributeId) =>
      this(attributeId: attributeId);

  @override
  CreateAttributeValueRequest value(String? value) => this(value: value);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateAttributeValueRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateAttributeValueRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateAttributeValueRequest call({
    Object? attributeId = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return CreateAttributeValueRequest(
      attributeId: attributeId == const $CopyWithPlaceholder()
          ? _value.attributeId
          // ignore: cast_nullable_to_non_nullable
          : attributeId as int?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String?,
    );
  }
}

extension $CreateAttributeValueRequestCopyWith on CreateAttributeValueRequest {
  /// Returns a callable class that can be used as follows: `instanceOfCreateAttributeValueRequest.copyWith(...)` or like so:`instanceOfCreateAttributeValueRequest.copyWith.fieldName(...)`.
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
  final val = CreateAttributeValueRequest(
    attributeId: $checkedConvert('attributeId', (v) => (v as num?)?.toInt()),
    value: $checkedConvert('value', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CreateAttributeValueRequestToJson(
  CreateAttributeValueRequest instance,
) => <String, dynamic>{
  'attributeId': ?instance.attributeId,
  'value': ?instance.value,
};
