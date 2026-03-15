// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_fast_look_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductFastLookResponseCWProxy {
  ProductFastLookResponse id(String? id);

  ProductFastLookResponse name(String? name);

  ProductFastLookResponse description(String? description);

  ProductFastLookResponse brandName(String? brandName);

  ProductFastLookResponse variants(List<VariantFastLookResponse>? variants);

  ProductFastLookResponse attribute(ProductAttributeResponse? attribute);

  ProductFastLookResponse rating(int? rating);

  ProductFastLookResponse reviewCount(int? reviewCount);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductFastLookResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductFastLookResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductFastLookResponse call({
    String? id,
    String? name,
    String? description,
    String? brandName,
    List<VariantFastLookResponse>? variants,
    ProductAttributeResponse? attribute,
    int? rating,
    int? reviewCount,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductFastLookResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductFastLookResponse.copyWith.fieldName(...)`
class _$ProductFastLookResponseCWProxyImpl
    implements _$ProductFastLookResponseCWProxy {
  const _$ProductFastLookResponseCWProxyImpl(this._value);

  final ProductFastLookResponse _value;

  @override
  ProductFastLookResponse id(String? id) => this(id: id);

  @override
  ProductFastLookResponse name(String? name) => this(name: name);

  @override
  ProductFastLookResponse description(String? description) =>
      this(description: description);

  @override
  ProductFastLookResponse brandName(String? brandName) =>
      this(brandName: brandName);

  @override
  ProductFastLookResponse variants(List<VariantFastLookResponse>? variants) =>
      this(variants: variants);

  @override
  ProductFastLookResponse attribute(ProductAttributeResponse? attribute) =>
      this(attribute: attribute);

  @override
  ProductFastLookResponse rating(int? rating) => this(rating: rating);

  @override
  ProductFastLookResponse reviewCount(int? reviewCount) =>
      this(reviewCount: reviewCount);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductFastLookResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductFastLookResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductFastLookResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? variants = const $CopyWithPlaceholder(),
    Object? attribute = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? reviewCount = const $CopyWithPlaceholder(),
  }) {
    return ProductFastLookResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      brandName: brandName == const $CopyWithPlaceholder()
          ? _value.brandName
          // ignore: cast_nullable_to_non_nullable
          : brandName as String?,
      variants: variants == const $CopyWithPlaceholder()
          ? _value.variants
          // ignore: cast_nullable_to_non_nullable
          : variants as List<VariantFastLookResponse>?,
      attribute: attribute == const $CopyWithPlaceholder()
          ? _value.attribute
          // ignore: cast_nullable_to_non_nullable
          : attribute as ProductAttributeResponse?,
      rating: rating == const $CopyWithPlaceholder()
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as int?,
      reviewCount: reviewCount == const $CopyWithPlaceholder()
          ? _value.reviewCount
          // ignore: cast_nullable_to_non_nullable
          : reviewCount as int?,
    );
  }
}

extension $ProductFastLookResponseCopyWith on ProductFastLookResponse {
  /// Returns a callable class that can be used as follows: `instanceOfProductFastLookResponse.copyWith(...)` or like so:`instanceOfProductFastLookResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductFastLookResponseCWProxy get copyWith =>
      _$ProductFastLookResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductFastLookResponse _$ProductFastLookResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductFastLookResponse', json, ($checkedConvert) {
  final val = ProductFastLookResponse(
    id: $checkedConvert('id', (v) => v as String?),
    name: $checkedConvert('name', (v) => v as String?),
    description: $checkedConvert('description', (v) => v as String?),
    brandName: $checkedConvert('brandName', (v) => v as String?),
    variants: $checkedConvert(
      'variants',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => VariantFastLookResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    attribute: $checkedConvert(
      'attribute',
      (v) => v == null
          ? null
          : ProductAttributeResponse.fromJson(v as Map<String, dynamic>),
    ),
    rating: $checkedConvert('rating', (v) => (v as num?)?.toInt()),
    reviewCount: $checkedConvert('reviewCount', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$ProductFastLookResponseToJson(
  ProductFastLookResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'description': ?instance.description,
  'brandName': ?instance.brandName,
  'variants': ?instance.variants?.map((e) => e.toJson()).toList(),
  'attribute': ?instance.attribute?.toJson(),
  'rating': ?instance.rating,
  'reviewCount': ?instance.reviewCount,
};
