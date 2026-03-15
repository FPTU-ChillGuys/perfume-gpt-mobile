// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_brand_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateBrandRequestCWProxy {
  CreateBrandRequest name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateBrandRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateBrandRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateBrandRequest call({String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateBrandRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateBrandRequest.copyWith.fieldName(...)`
class _$CreateBrandRequestCWProxyImpl implements _$CreateBrandRequestCWProxy {
  const _$CreateBrandRequestCWProxyImpl(this._value);

  final CreateBrandRequest _value;

  @override
  CreateBrandRequest name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateBrandRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateBrandRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateBrandRequest call({Object? name = const $CopyWithPlaceholder()}) {
    return CreateBrandRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $CreateBrandRequestCopyWith on CreateBrandRequest {
  /// Returns a callable class that can be used as follows: `instanceOfCreateBrandRequest.copyWith(...)` or like so:`instanceOfCreateBrandRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateBrandRequestCWProxy get copyWith =>
      _$CreateBrandRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBrandRequest _$CreateBrandRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreateBrandRequest', json, ($checkedConvert) {
      final val = CreateBrandRequest(
        name: $checkedConvert('name', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$CreateBrandRequestToJson(CreateBrandRequest instance) =>
    <String, dynamic>{'name': ?instance.name};
