// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductLookupItemCWProxy {
  ProductLookupItem id(String? id);

  ProductLookupItem name(String? name);

  ProductLookupItem brandName(String? brandName);

  ProductLookupItem primaryImage(MediaResponse? primaryImage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductLookupItem call({
    String? id,
    String? name,
    String? brandName,
    MediaResponse? primaryImage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductLookupItem.copyWith.fieldName(...)`
class _$ProductLookupItemCWProxyImpl implements _$ProductLookupItemCWProxy {
  const _$ProductLookupItemCWProxyImpl(this._value);

  final ProductLookupItem _value;

  @override
  ProductLookupItem id(String? id) => this(id: id);

  @override
  ProductLookupItem name(String? name) => this(name: name);

  @override
  ProductLookupItem brandName(String? brandName) => this(brandName: brandName);

  @override
  ProductLookupItem primaryImage(MediaResponse? primaryImage) =>
      this(primaryImage: primaryImage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? primaryImage = const $CopyWithPlaceholder(),
  }) {
    return ProductLookupItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      brandName: brandName == const $CopyWithPlaceholder()
          ? _value.brandName
          // ignore: cast_nullable_to_non_nullable
          : brandName as String?,
      primaryImage: primaryImage == const $CopyWithPlaceholder()
          ? _value.primaryImage
          // ignore: cast_nullable_to_non_nullable
          : primaryImage as MediaResponse?,
    );
  }
}

extension $ProductLookupItemCopyWith on ProductLookupItem {
  /// Returns a callable class that can be used as follows: `instanceOfProductLookupItem.copyWith(...)` or like so:`instanceOfProductLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductLookupItemCWProxy get copyWith =>
      _$ProductLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductLookupItem _$ProductLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductLookupItem', json, ($checkedConvert) {
      final val = ProductLookupItem(
        id: $checkedConvert('id', (v) => v as String?),
        name: $checkedConvert('name', (v) => v as String?),
        brandName: $checkedConvert('brandName', (v) => v as String?),
        primaryImage: $checkedConvert(
          'primaryImage',
          (v) => v == null
              ? null
              : MediaResponse.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProductLookupItemToJson(ProductLookupItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'brandName': ?instance.brandName,
      'primaryImage': ?instance.primaryImage?.toJson(),
    };
