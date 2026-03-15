// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BrandResponseCWProxy {
  BrandResponse id(int? id);

  BrandResponse name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BrandResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BrandResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BrandResponse call({int? id, String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBrandResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBrandResponse.copyWith.fieldName(...)`
class _$BrandResponseCWProxyImpl implements _$BrandResponseCWProxy {
  const _$BrandResponseCWProxyImpl(this._value);

  final BrandResponse _value;

  @override
  BrandResponse id(int? id) => this(id: id);

  @override
  BrandResponse name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BrandResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BrandResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BrandResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return BrandResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $BrandResponseCopyWith on BrandResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBrandResponse.copyWith(...)` or like so:`instanceOfBrandResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BrandResponseCWProxy get copyWith => _$BrandResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandResponse _$BrandResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BrandResponse', json, ($checkedConvert) {
      final val = BrandResponse(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$BrandResponseToJson(BrandResponse instance) =>
    <String, dynamic>{'id': ?instance.id, 'name': ?instance.name};
