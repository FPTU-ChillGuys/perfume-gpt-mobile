// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_card_output_item_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductCardOutputItemDtoCWProxy {
  ProductCardOutputItemDto id(String id);

  ProductCardOutputItemDto name(String name);

  ProductCardOutputItemDto brandName(String brandName);

  ProductCardOutputItemDto primaryImage(Object? primaryImage);

  ProductCardOutputItemDto variants(List<ProductCardVariantOutputDto> variants);

  ProductCardOutputItemDto reasoning(Object? reasoning);

  ProductCardOutputItemDto source_(Object? source_);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductCardOutputItemDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductCardOutputItemDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductCardOutputItemDto call({
    String id,
    String name,
    String brandName,
    Object? primaryImage,
    List<ProductCardVariantOutputDto> variants,
    Object? reasoning,
    Object? source_,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductCardOutputItemDto.copyWith(...)` or call `instanceOfProductCardOutputItemDto.copyWith.fieldName(value)` for a single field.
class _$ProductCardOutputItemDtoCWProxyImpl
    implements _$ProductCardOutputItemDtoCWProxy {
  const _$ProductCardOutputItemDtoCWProxyImpl(this._value);

  final ProductCardOutputItemDto _value;

  @override
  ProductCardOutputItemDto id(String id) => call(id: id);

  @override
  ProductCardOutputItemDto name(String name) => call(name: name);

  @override
  ProductCardOutputItemDto brandName(String brandName) =>
      call(brandName: brandName);

  @override
  ProductCardOutputItemDto primaryImage(Object? primaryImage) =>
      call(primaryImage: primaryImage);

  @override
  ProductCardOutputItemDto variants(
    List<ProductCardVariantOutputDto> variants,
  ) => call(variants: variants);

  @override
  ProductCardOutputItemDto reasoning(Object? reasoning) =>
      call(reasoning: reasoning);

  @override
  ProductCardOutputItemDto source_(Object? source_) => call(source_: source_);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductCardOutputItemDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductCardOutputItemDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductCardOutputItemDto call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? primaryImage = const $CopyWithPlaceholder(),
    Object? variants = const $CopyWithPlaceholder(),
    Object? reasoning = const $CopyWithPlaceholder(),
    Object? source_ = const $CopyWithPlaceholder(),
  }) {
    return ProductCardOutputItemDto(
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
          : variants as List<ProductCardVariantOutputDto>,
      reasoning: reasoning == const $CopyWithPlaceholder()
          ? _value.reasoning
          // ignore: cast_nullable_to_non_nullable
          : reasoning as Object?,
      source_: source_ == const $CopyWithPlaceholder()
          ? _value.source_
          // ignore: cast_nullable_to_non_nullable
          : source_ as Object?,
    );
  }
}

extension $ProductCardOutputItemDtoCopyWith on ProductCardOutputItemDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductCardOutputItemDto.copyWith(...)` or `instanceOfProductCardOutputItemDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductCardOutputItemDtoCWProxy get copyWith =>
      _$ProductCardOutputItemDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCardOutputItemDto _$ProductCardOutputItemDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductCardOutputItemDto', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['id', 'name', 'brandName', 'variants']);
  final val = ProductCardOutputItemDto(
    id: $checkedConvert('id', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    brandName: $checkedConvert('brandName', (v) => v as String),
    primaryImage: $checkedConvert('primaryImage', (v) => v),
    variants: $checkedConvert(
      'variants',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                ProductCardVariantOutputDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    reasoning: $checkedConvert('reasoning', (v) => v),
    source_: $checkedConvert('source', (v) => v),
  );
  return val;
}, fieldKeyMap: const {'source_': 'source'});

Map<String, dynamic> _$ProductCardOutputItemDtoToJson(
  ProductCardOutputItemDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'brandName': instance.brandName,
  'primaryImage': ?instance.primaryImage,
  'variants': instance.variants.map((e) => e.toJson()).toList(),
  'reasoning': ?instance.reasoning,
  'source': ?instance.source_,
};
