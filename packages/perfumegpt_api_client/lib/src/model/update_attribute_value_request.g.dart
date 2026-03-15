// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_attribute_value_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateAttributeValueRequestCWProxy {
  UpdateAttributeValueRequest value(String? value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateAttributeValueRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateAttributeValueRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateAttributeValueRequest call({String? value});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateAttributeValueRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateAttributeValueRequest.copyWith.fieldName(...)`
class _$UpdateAttributeValueRequestCWProxyImpl
    implements _$UpdateAttributeValueRequestCWProxy {
  const _$UpdateAttributeValueRequestCWProxyImpl(this._value);

  final UpdateAttributeValueRequest _value;

  @override
  UpdateAttributeValueRequest value(String? value) => this(value: value);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateAttributeValueRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateAttributeValueRequest(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfUpdateAttributeValueRequest.copyWith(...)` or like so:`instanceOfUpdateAttributeValueRequest.copyWith.fieldName(...)`.
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
