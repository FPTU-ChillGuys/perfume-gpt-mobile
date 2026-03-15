// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateCategoryRequestCWProxy {
  UpdateCategoryRequest name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateCategoryRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateCategoryRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateCategoryRequest call({String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateCategoryRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateCategoryRequest.copyWith.fieldName(...)`
class _$UpdateCategoryRequestCWProxyImpl
    implements _$UpdateCategoryRequestCWProxy {
  const _$UpdateCategoryRequestCWProxyImpl(this._value);

  final UpdateCategoryRequest _value;

  @override
  UpdateCategoryRequest name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateCategoryRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateCategoryRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateCategoryRequest call({Object? name = const $CopyWithPlaceholder()}) {
    return UpdateCategoryRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $UpdateCategoryRequestCopyWith on UpdateCategoryRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateCategoryRequest.copyWith(...)` or like so:`instanceOfUpdateCategoryRequest.copyWith.fieldName(...)`.
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
  final val = UpdateCategoryRequest(
    name: $checkedConvert('name', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$UpdateCategoryRequestToJson(
  UpdateCategoryRequest instance,
) => <String, dynamic>{'name': ?instance.name};
