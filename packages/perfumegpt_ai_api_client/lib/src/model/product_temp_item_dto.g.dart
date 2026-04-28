// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_temp_item_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductTempItemDtoCWProxy {
  ProductTempItemDto id(String id);

  ProductTempItemDto name(Object? name);

  ProductTempItemDto variants(List<ProductTempItemDtoVariantsInner>? variants);

  ProductTempItemDto reasoning(String reasoning);

  ProductTempItemDto source_(String source_);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductTempItemDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductTempItemDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductTempItemDto call({
    String id,
    Object? name,
    List<ProductTempItemDtoVariantsInner>? variants,
    String reasoning,
    String source_,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductTempItemDto.copyWith(...)` or call `instanceOfProductTempItemDto.copyWith.fieldName(value)` for a single field.
class _$ProductTempItemDtoCWProxyImpl implements _$ProductTempItemDtoCWProxy {
  const _$ProductTempItemDtoCWProxyImpl(this._value);

  final ProductTempItemDto _value;

  @override
  ProductTempItemDto id(String id) => call(id: id);

  @override
  ProductTempItemDto name(Object? name) => call(name: name);

  @override
  ProductTempItemDto variants(
    List<ProductTempItemDtoVariantsInner>? variants,
  ) => call(variants: variants);

  @override
  ProductTempItemDto reasoning(String reasoning) => call(reasoning: reasoning);

  @override
  ProductTempItemDto source_(String source_) => call(source_: source_);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductTempItemDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductTempItemDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductTempItemDto call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? variants = const $CopyWithPlaceholder(),
    Object? reasoning = const $CopyWithPlaceholder(),
    Object? source_ = const $CopyWithPlaceholder(),
  }) {
    return ProductTempItemDto(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as Object?,
      variants: variants == const $CopyWithPlaceholder()
          ? _value.variants
          // ignore: cast_nullable_to_non_nullable
          : variants as List<ProductTempItemDtoVariantsInner>?,
      reasoning: reasoning == const $CopyWithPlaceholder() || reasoning == null
          ? _value.reasoning
          // ignore: cast_nullable_to_non_nullable
          : reasoning as String,
      source_: source_ == const $CopyWithPlaceholder() || source_ == null
          ? _value.source_
          // ignore: cast_nullable_to_non_nullable
          : source_ as String,
    );
  }
}

extension $ProductTempItemDtoCopyWith on ProductTempItemDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductTempItemDto.copyWith(...)` or `instanceOfProductTempItemDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductTempItemDtoCWProxy get copyWith =>
      _$ProductTempItemDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductTempItemDto _$ProductTempItemDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductTempItemDto', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['id', 'reasoning', 'source']);
      final val = ProductTempItemDto(
        id: $checkedConvert('id', (v) => v as String),
        name: $checkedConvert('name', (v) => v),
        variants: $checkedConvert(
          'variants',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => ProductTempItemDtoVariantsInner.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
        reasoning: $checkedConvert('reasoning', (v) => v as String),
        source_: $checkedConvert('source', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'source_': 'source'});

Map<String, dynamic> _$ProductTempItemDtoToJson(ProductTempItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': ?instance.name,
      'variants': ?instance.variants?.map((e) => e.toJson()).toList(),
      'reasoning': instance.reasoning,
      'source': instance.source_,
    };
