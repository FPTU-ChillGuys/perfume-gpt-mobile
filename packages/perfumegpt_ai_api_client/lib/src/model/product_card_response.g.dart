// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_card_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductCardResponseCWProxy {
  ProductCardResponse id(String id);

  ProductCardResponse name(String name);

  ProductCardResponse brandName(String brandName);

  ProductCardResponse primaryImage(Object? primaryImage);

  ProductCardResponse variants(List<ProductCardVariantResponse> variants);

  ProductCardResponse sizesCount(num sizesCount);

  ProductCardResponse displayPrice(num displayPrice);

  ProductCardResponse aiAcceptanceId(String? aiAcceptanceId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductCardResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductCardResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductCardResponse call({
    String id,
    String name,
    String brandName,
    Object? primaryImage,
    List<ProductCardVariantResponse> variants,
    num sizesCount,
    num displayPrice,
    String? aiAcceptanceId,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductCardResponse.copyWith(...)` or call `instanceOfProductCardResponse.copyWith.fieldName(value)` for a single field.
class _$ProductCardResponseCWProxyImpl implements _$ProductCardResponseCWProxy {
  const _$ProductCardResponseCWProxyImpl(this._value);

  final ProductCardResponse _value;

  @override
  ProductCardResponse id(String id) => call(id: id);

  @override
  ProductCardResponse name(String name) => call(name: name);

  @override
  ProductCardResponse brandName(String brandName) => call(brandName: brandName);

  @override
  ProductCardResponse primaryImage(Object? primaryImage) =>
      call(primaryImage: primaryImage);

  @override
  ProductCardResponse variants(List<ProductCardVariantResponse> variants) =>
      call(variants: variants);

  @override
  ProductCardResponse sizesCount(num sizesCount) =>
      call(sizesCount: sizesCount);

  @override
  ProductCardResponse displayPrice(num displayPrice) =>
      call(displayPrice: displayPrice);

  @override
  ProductCardResponse aiAcceptanceId(String? aiAcceptanceId) =>
      call(aiAcceptanceId: aiAcceptanceId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductCardResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductCardResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductCardResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? primaryImage = const $CopyWithPlaceholder(),
    Object? variants = const $CopyWithPlaceholder(),
    Object? sizesCount = const $CopyWithPlaceholder(),
    Object? displayPrice = const $CopyWithPlaceholder(),
    Object? aiAcceptanceId = const $CopyWithPlaceholder(),
  }) {
    return ProductCardResponse(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      brandName: brandName == const $CopyWithPlaceholder() || brandName == null
          ? _value.brandName
          // ignore: cast_nullable_to_non_nullable
          : brandName as String,
      primaryImage: primaryImage == const $CopyWithPlaceholder()
          ? _value.primaryImage
          // ignore: cast_nullable_to_non_nullable
          : primaryImage as Object?,
      variants: variants == const $CopyWithPlaceholder() || variants == null
          ? _value.variants
          // ignore: cast_nullable_to_non_nullable
          : variants as List<ProductCardVariantResponse>,
      sizesCount:
          sizesCount == const $CopyWithPlaceholder() || sizesCount == null
          ? _value.sizesCount
          // ignore: cast_nullable_to_non_nullable
          : sizesCount as num,
      displayPrice:
          displayPrice == const $CopyWithPlaceholder() || displayPrice == null
          ? _value.displayPrice
          // ignore: cast_nullable_to_non_nullable
          : displayPrice as num,
      aiAcceptanceId: aiAcceptanceId == const $CopyWithPlaceholder()
          ? _value.aiAcceptanceId
          // ignore: cast_nullable_to_non_nullable
          : aiAcceptanceId as String?,
    );
  }
}

extension $ProductCardResponseCopyWith on ProductCardResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductCardResponse.copyWith(...)` or `instanceOfProductCardResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductCardResponseCWProxy get copyWith =>
      _$ProductCardResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCardResponse _$ProductCardResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductCardResponse', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const [
          'id',
          'name',
          'brandName',
          'primaryImage',
          'variants',
          'sizesCount',
          'displayPrice',
        ],
      );
      final val = ProductCardResponse(
        id: $checkedConvert('id', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        brandName: $checkedConvert('brandName', (v) => v as String),
        primaryImage: $checkedConvert('primaryImage', (v) => v),
        variants: $checkedConvert(
          'variants',
          (v) => (v as List<dynamic>)
              .map(
                (e) => ProductCardVariantResponse.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
        sizesCount: $checkedConvert('sizesCount', (v) => v as num),
        displayPrice: $checkedConvert('displayPrice', (v) => v as num),
        aiAcceptanceId: $checkedConvert('aiAcceptanceId', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ProductCardResponseToJson(
  ProductCardResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'brandName': instance.brandName,
  'primaryImage': instance.primaryImage,
  'variants': instance.variants.map((e) => e.toJson()).toList(),
  'sizesCount': instance.sizesCount,
  'displayPrice': instance.displayPrice,
  'aiAcceptanceId': ?instance.aiAcceptanceId,
};
