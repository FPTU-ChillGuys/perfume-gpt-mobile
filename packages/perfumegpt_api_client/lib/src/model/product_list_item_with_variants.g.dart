// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_item_with_variants.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductListItemWithVariantsCWProxy {
  ProductListItemWithVariants variants(List<VariantSummaryItem>? variants);

  ProductListItemWithVariants id(String? id);

  ProductListItemWithVariants name(String? name);

  ProductListItemWithVariants brandId(int? brandId);

  ProductListItemWithVariants brandName(String? brandName);

  ProductListItemWithVariants categoryId(int? categoryId);

  ProductListItemWithVariants categoryName(String? categoryName);

  ProductListItemWithVariants description(String? description);

  ProductListItemWithVariants numberOfVariants(int? numberOfVariants);

  ProductListItemWithVariants primaryImage(MediaResponse? primaryImage);

  ProductListItemWithVariants attributes(
    List<ProductAttributeResponse>? attributes,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductListItemWithVariants(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductListItemWithVariants(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductListItemWithVariants call({
    List<VariantSummaryItem>? variants,
    String? id,
    String? name,
    int? brandId,
    String? brandName,
    int? categoryId,
    String? categoryName,
    String? description,
    int? numberOfVariants,
    MediaResponse? primaryImage,
    List<ProductAttributeResponse>? attributes,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductListItemWithVariants.copyWith(...)` or call `instanceOfProductListItemWithVariants.copyWith.fieldName(value)` for a single field.
class _$ProductListItemWithVariantsCWProxyImpl
    implements _$ProductListItemWithVariantsCWProxy {
  const _$ProductListItemWithVariantsCWProxyImpl(this._value);

  final ProductListItemWithVariants _value;

  @override
  ProductListItemWithVariants variants(List<VariantSummaryItem>? variants) =>
      call(variants: variants);

  @override
  ProductListItemWithVariants id(String? id) => call(id: id);

  @override
  ProductListItemWithVariants name(String? name) => call(name: name);

  @override
  ProductListItemWithVariants brandId(int? brandId) => call(brandId: brandId);

  @override
  ProductListItemWithVariants brandName(String? brandName) =>
      call(brandName: brandName);

  @override
  ProductListItemWithVariants categoryId(int? categoryId) =>
      call(categoryId: categoryId);

  @override
  ProductListItemWithVariants categoryName(String? categoryName) =>
      call(categoryName: categoryName);

  @override
  ProductListItemWithVariants description(String? description) =>
      call(description: description);

  @override
  ProductListItemWithVariants numberOfVariants(int? numberOfVariants) =>
      call(numberOfVariants: numberOfVariants);

  @override
  ProductListItemWithVariants primaryImage(MediaResponse? primaryImage) =>
      call(primaryImage: primaryImage);

  @override
  ProductListItemWithVariants attributes(
    List<ProductAttributeResponse>? attributes,
  ) => call(attributes: attributes);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductListItemWithVariants(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductListItemWithVariants(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductListItemWithVariants call({
    Object? variants = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? brandId = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? categoryId = const $CopyWithPlaceholder(),
    Object? categoryName = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? numberOfVariants = const $CopyWithPlaceholder(),
    Object? primaryImage = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
  }) {
    return ProductListItemWithVariants(
      variants: variants == const $CopyWithPlaceholder()
          ? _value.variants
          // ignore: cast_nullable_to_non_nullable
          : variants as List<VariantSummaryItem>?,
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
      brandName: brandName == const $CopyWithPlaceholder()
          ? _value.brandName
          // ignore: cast_nullable_to_non_nullable
          : brandName as String?,
      categoryId: categoryId == const $CopyWithPlaceholder()
          ? _value.categoryId
          // ignore: cast_nullable_to_non_nullable
          : categoryId as int?,
      categoryName: categoryName == const $CopyWithPlaceholder()
          ? _value.categoryName
          // ignore: cast_nullable_to_non_nullable
          : categoryName as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      numberOfVariants: numberOfVariants == const $CopyWithPlaceholder()
          ? _value.numberOfVariants
          // ignore: cast_nullable_to_non_nullable
          : numberOfVariants as int?,
      primaryImage: primaryImage == const $CopyWithPlaceholder()
          ? _value.primaryImage
          // ignore: cast_nullable_to_non_nullable
          : primaryImage as MediaResponse?,
      attributes: attributes == const $CopyWithPlaceholder()
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as List<ProductAttributeResponse>?,
    );
  }
}

extension $ProductListItemWithVariantsCopyWith on ProductListItemWithVariants {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductListItemWithVariants.copyWith(...)` or `instanceOfProductListItemWithVariants.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductListItemWithVariantsCWProxy get copyWith =>
      _$ProductListItemWithVariantsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductListItemWithVariants _$ProductListItemWithVariantsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductListItemWithVariants', json, ($checkedConvert) {
  final val = ProductListItemWithVariants(
    variants: $checkedConvert(
      'variants',
      (v) => (v as List<dynamic>?)
          ?.map((e) => VariantSummaryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    id: $checkedConvert('id', (v) => v as String?),
    name: $checkedConvert('name', (v) => v as String?),
    brandId: $checkedConvert('brandId', (v) => (v as num?)?.toInt()),
    brandName: $checkedConvert('brandName', (v) => v as String?),
    categoryId: $checkedConvert('categoryId', (v) => (v as num?)?.toInt()),
    categoryName: $checkedConvert('categoryName', (v) => v as String?),
    description: $checkedConvert('description', (v) => v as String?),
    numberOfVariants: $checkedConvert(
      'numberOfVariants',
      (v) => (v as num?)?.toInt(),
    ),
    primaryImage: $checkedConvert(
      'primaryImage',
      (v) =>
          v == null ? null : MediaResponse.fromJson(v as Map<String, dynamic>),
    ),
    attributes: $checkedConvert(
      'attributes',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ProductAttributeResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProductListItemWithVariantsToJson(
  ProductListItemWithVariants instance,
) => <String, dynamic>{
  'variants': ?instance.variants?.map((e) => e.toJson()).toList(),
  'id': ?instance.id,
  'name': ?instance.name,
  'brandId': ?instance.brandId,
  'brandName': ?instance.brandName,
  'categoryId': ?instance.categoryId,
  'categoryName': ?instance.categoryName,
  'description': ?instance.description,
  'numberOfVariants': ?instance.numberOfVariants,
  'primaryImage': ?instance.primaryImage?.toJson(),
  'attributes': ?instance.attributes?.map((e) => e.toJson()).toList(),
};
