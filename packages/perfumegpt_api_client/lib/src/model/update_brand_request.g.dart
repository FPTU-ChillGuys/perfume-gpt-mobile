// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_brand_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateBrandRequestCWProxy {
  UpdateBrandRequest name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateBrandRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateBrandRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateBrandRequest call({String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateBrandRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateBrandRequest.copyWith.fieldName(...)`
class _$UpdateBrandRequestCWProxyImpl implements _$UpdateBrandRequestCWProxy {
  const _$UpdateBrandRequestCWProxyImpl(this._value);

  final UpdateBrandRequest _value;

  @override
  UpdateBrandRequest name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateBrandRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateBrandRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateBrandRequest call({Object? name = const $CopyWithPlaceholder()}) {
    return UpdateBrandRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $UpdateBrandRequestCopyWith on UpdateBrandRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateBrandRequest.copyWith(...)` or like so:`instanceOfUpdateBrandRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateBrandRequestCWProxy get copyWith =>
      _$UpdateBrandRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateBrandRequest _$UpdateBrandRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateBrandRequest', json, ($checkedConvert) {
      final val = UpdateBrandRequest(
        name: $checkedConvert('name', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$UpdateBrandRequestToJson(UpdateBrandRequest instance) =>
    <String, dynamic>{'name': ?instance.name};
