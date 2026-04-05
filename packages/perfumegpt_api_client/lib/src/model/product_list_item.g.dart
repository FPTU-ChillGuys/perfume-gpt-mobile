// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductListItemCWProxy {
  ProductListItem id(String? id);

  ProductListItem name(String? name);

  ProductListItem brandId(int? brandId);

  ProductListItem brandName(String brandName);

  ProductListItem categoryId(int? categoryId);

  ProductListItem categoryName(String categoryName);

  ProductListItem description(String? description);

  ProductListItem numberOfVariants(int? numberOfVariants);

  ProductListItem variantPrices(List<num> variantPrices);

  ProductListItem tags(List<String>? tags);

  ProductListItem primaryImage(MediaResponse? primaryImage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductListItem call({
    String? id,
    String? name,
    int? brandId,
    String brandName,
    int? categoryId,
    String categoryName,
    String? description,
    int? numberOfVariants,
    List<num> variantPrices,
    List<String>? tags,
    MediaResponse? primaryImage,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductListItem.copyWith(...)` or call `instanceOfProductListItem.copyWith.fieldName(value)` for a single field.
class _$ProductListItemCWProxyImpl implements _$ProductListItemCWProxy {
  const _$ProductListItemCWProxyImpl(this._value);

  final ProductListItem _value;

  @override
  ProductListItem id(String? id) => call(id: id);

  @override
  ProductListItem name(String? name) => call(name: name);

  @override
  ProductListItem brandId(int? brandId) => call(brandId: brandId);

  @override
  ProductListItem brandName(String brandName) => call(brandName: brandName);

  @override
  ProductListItem categoryId(int? categoryId) => call(categoryId: categoryId);

  @override
  ProductListItem categoryName(String categoryName) =>
      call(categoryName: categoryName);

  @override
  ProductListItem description(String? description) =>
      call(description: description);

  @override
  ProductListItem numberOfVariants(int? numberOfVariants) =>
      call(numberOfVariants: numberOfVariants);

  @override
  ProductListItem variantPrices(List<num> variantPrices) =>
      call(variantPrices: variantPrices);

  @override
  ProductListItem tags(List<String>? tags) => call(tags: tags);

  @override
  ProductListItem primaryImage(MediaResponse? primaryImage) =>
      call(primaryImage: primaryImage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductListItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? brandId = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? categoryId = const $CopyWithPlaceholder(),
    Object? categoryName = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? numberOfVariants = const $CopyWithPlaceholder(),
    Object? variantPrices = const $CopyWithPlaceholder(),
    Object? tags = const $CopyWithPlaceholder(),
    Object? primaryImage = const $CopyWithPlaceholder(),
  }) {
    return ProductListItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      brandId: brandId == const $CopyWithPlaceholder()
          ? _value.brandId
          // ignore: cast_nullable_to_non_nullable
          : brandId as int?,
      brandName: brandName == const $CopyWithPlaceholder() || brandName == null
          ? _value.brandName
          // ignore: cast_nullable_to_non_nullable
          : brandName as String,
      categoryId: categoryId == const $CopyWithPlaceholder()
          ? _value.categoryId
          // ignore: cast_nullable_to_non_nullable
          : categoryId as int?,
      categoryName:
          categoryName == const $CopyWithPlaceholder() || categoryName == null
          ? _value.categoryName
          // ignore: cast_nullable_to_non_nullable
          : categoryName as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      numberOfVariants: numberOfVariants == const $CopyWithPlaceholder()
          ? _value.numberOfVariants
          // ignore: cast_nullable_to_non_nullable
          : numberOfVariants as int?,
      variantPrices:
          variantPrices == const $CopyWithPlaceholder() || variantPrices == null
          ? _value.variantPrices
          // ignore: cast_nullable_to_non_nullable
          : variantPrices as List<num>,
      tags: tags == const $CopyWithPlaceholder()
          ? _value.tags
          // ignore: cast_nullable_to_non_nullable
          : tags as List<String>?,
      primaryImage: primaryImage == const $CopyWithPlaceholder()
          ? _value.primaryImage
          // ignore: cast_nullable_to_non_nullable
          : primaryImage as MediaResponse?,
    );
  }
}

extension $ProductListItemCopyWith on ProductListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductListItem.copyWith(...)` or `instanceOfProductListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductListItemCWProxy get copyWith => _$ProductListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductListItem _$ProductListItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductListItem', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['brandName', 'categoryName', 'variantPrices'],
      );
      final val = ProductListItem(
        id: $checkedConvert('id', (v) => v as String?),
        name: $checkedConvert('name', (v) => v as String?),
        brandId: $checkedConvert('brandId', (v) => (v as num?)?.toInt()),
        brandName: $checkedConvert('brandName', (v) => v as String),
        categoryId: $checkedConvert('categoryId', (v) => (v as num?)?.toInt()),
        categoryName: $checkedConvert('categoryName', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String?),
        numberOfVariants: $checkedConvert(
          'numberOfVariants',
          (v) => (v as num?)?.toInt(),
        ),
        variantPrices: $checkedConvert(
          'variantPrices',
          (v) => (v as List<dynamic>).map((e) => e as num).toList(),
        ),
        tags: $checkedConvert(
          'tags',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        primaryImage: $checkedConvert(
          'primaryImage',
          (v) => v == null
              ? null
              : MediaResponse.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProductListItemToJson(ProductListItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'brandId': ?instance.brandId,
      'brandName': instance.brandName,
      'categoryId': ?instance.categoryId,
      'categoryName': instance.categoryName,
      'description': ?instance.description,
      'numberOfVariants': ?instance.numberOfVariants,
      'variantPrices': instance.variantPrices,
      'tags': ?instance.tags,
      'primaryImage': ?instance.primaryImage?.toJson(),
    };
