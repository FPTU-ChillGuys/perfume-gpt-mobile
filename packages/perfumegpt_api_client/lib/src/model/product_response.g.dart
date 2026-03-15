// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductResponseCWProxy {
  ProductResponse id(String? id);

  ProductResponse name(String? name);

  ProductResponse brandId(int? brandId);

  ProductResponse brandName(String? brandName);

  ProductResponse categoryId(int? categoryId);

  ProductResponse categoryName(String? categoryName);

  ProductResponse description(String? description);

  ProductResponse numberOfVariants(int? numberOfVariants);

  ProductResponse media(List<MediaResponse>? media);

  ProductResponse variants(List<ProductVariantResponse>? variants);

  ProductResponse attributes(List<ProductAttributeResponse>? attributes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductResponse call({
    String? id,
    String? name,
    int? brandId,
    String? brandName,
    int? categoryId,
    String? categoryName,
    String? description,
    int? numberOfVariants,
    List<MediaResponse>? media,
    List<ProductVariantResponse>? variants,
    List<ProductAttributeResponse>? attributes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductResponse.copyWith.fieldName(...)`
class _$ProductResponseCWProxyImpl implements _$ProductResponseCWProxy {
  const _$ProductResponseCWProxyImpl(this._value);

  final ProductResponse _value;

  @override
  ProductResponse id(String? id) => this(id: id);

  @override
  ProductResponse name(String? name) => this(name: name);

  @override
  ProductResponse brandId(int? brandId) => this(brandId: brandId);

  @override
  ProductResponse brandName(String? brandName) => this(brandName: brandName);

  @override
  ProductResponse categoryId(int? categoryId) => this(categoryId: categoryId);

  @override
  ProductResponse categoryName(String? categoryName) =>
      this(categoryName: categoryName);

  @override
  ProductResponse description(String? description) =>
      this(description: description);

  @override
  ProductResponse numberOfVariants(int? numberOfVariants) =>
      this(numberOfVariants: numberOfVariants);

  @override
  ProductResponse media(List<MediaResponse>? media) => this(media: media);

  @override
  ProductResponse variants(List<ProductVariantResponse>? variants) =>
      this(variants: variants);

  @override
  ProductResponse attributes(List<ProductAttributeResponse>? attributes) =>
      this(attributes: attributes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? brandId = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? categoryId = const $CopyWithPlaceholder(),
    Object? categoryName = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? numberOfVariants = const $CopyWithPlaceholder(),
    Object? media = const $CopyWithPlaceholder(),
    Object? variants = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
  }) {
    return ProductResponse(
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
      media: media == const $CopyWithPlaceholder()
          ? _value.media
          // ignore: cast_nullable_to_non_nullable
          : media as List<MediaResponse>?,
      variants: variants == const $CopyWithPlaceholder()
          ? _value.variants
          // ignore: cast_nullable_to_non_nullable
          : variants as List<ProductVariantResponse>?,
      attributes: attributes == const $CopyWithPlaceholder()
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as List<ProductAttributeResponse>?,
    );
  }
}

extension $ProductResponseCopyWith on ProductResponse {
  /// Returns a callable class that can be used as follows: `instanceOfProductResponse.copyWith(...)` or like so:`instanceOfProductResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductResponseCWProxy get copyWith => _$ProductResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductResponse', json, ($checkedConvert) {
      final val = ProductResponse(
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
        media: $checkedConvert(
          'media',
          (v) => (v as List<dynamic>?)
              ?.map((e) => MediaResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        variants: $checkedConvert(
          'variants',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) =>
                    ProductVariantResponse.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
        attributes: $checkedConvert(
          'attributes',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => ProductAttributeResponse.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'brandId': ?instance.brandId,
      'brandName': ?instance.brandName,
      'categoryId': ?instance.categoryId,
      'categoryName': ?instance.categoryName,
      'description': ?instance.description,
      'numberOfVariants': ?instance.numberOfVariants,
      'media': ?instance.media?.map((e) => e.toJson()).toList(),
      'variants': ?instance.variants?.map((e) => e.toJson()).toList(),
      'attributes': ?instance.attributes?.map((e) => e.toJson()).toList(),
    };
