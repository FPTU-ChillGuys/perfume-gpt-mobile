// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductLookupItemCWProxy {
  ProductLookupItem id(String? id);

  ProductLookupItem name(String? name);

  ProductLookupItem brandName(String? brandName);

  ProductLookupItem primaryImageUrl(String? primaryImageUrl);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductLookupItem call({
    String? id,
    String? name,
    String? brandName,
    String? primaryImageUrl,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductLookupItem.copyWith(...)` or call `instanceOfProductLookupItem.copyWith.fieldName(value)` for a single field.
class _$ProductLookupItemCWProxyImpl implements _$ProductLookupItemCWProxy {
  const _$ProductLookupItemCWProxyImpl(this._value);

  final ProductLookupItem _value;

  @override
  ProductLookupItem id(String? id) => call(id: id);

  @override
  ProductLookupItem name(String? name) => call(name: name);

  @override
  ProductLookupItem brandName(String? brandName) => call(brandName: brandName);

  @override
  ProductLookupItem primaryImageUrl(String? primaryImageUrl) =>
      call(primaryImageUrl: primaryImageUrl);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? primaryImageUrl = const $CopyWithPlaceholder(),
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
      primaryImageUrl: primaryImageUrl == const $CopyWithPlaceholder()
          ? _value.primaryImageUrl
          // ignore: cast_nullable_to_non_nullable
          : primaryImageUrl as String?,
    );
  }
}

extension $ProductLookupItemCopyWith on ProductLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductLookupItem.copyWith(...)` or `instanceOfProductLookupItem.copyWith.fieldName(...)`.
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
        primaryImageUrl: $checkedConvert(
          'primaryImageUrl',
          (v) => v as String?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProductLookupItemToJson(ProductLookupItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'brandName': ?instance.brandName,
      'primaryImageUrl': ?instance.primaryImageUrl,
    };
