// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_temp_item_dto_variants_inner.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductTempItemDtoVariantsInnerCWProxy {
  ProductTempItemDtoVariantsInner id(String? id);

  ProductTempItemDtoVariantsInner price(num? price);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductTempItemDtoVariantsInner(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductTempItemDtoVariantsInner(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductTempItemDtoVariantsInner call({String? id, num? price});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductTempItemDtoVariantsInner.copyWith(...)` or call `instanceOfProductTempItemDtoVariantsInner.copyWith.fieldName(value)` for a single field.
class _$ProductTempItemDtoVariantsInnerCWProxyImpl
    implements _$ProductTempItemDtoVariantsInnerCWProxy {
  const _$ProductTempItemDtoVariantsInnerCWProxyImpl(this._value);

  final ProductTempItemDtoVariantsInner _value;

  @override
  ProductTempItemDtoVariantsInner id(String? id) => call(id: id);

  @override
  ProductTempItemDtoVariantsInner price(num? price) => call(price: price);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductTempItemDtoVariantsInner(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductTempItemDtoVariantsInner(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductTempItemDtoVariantsInner call({
    Object? id = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
  }) {
    return ProductTempItemDtoVariantsInner(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      price: price == const $CopyWithPlaceholder()
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as num?,
    );
  }
}

extension $ProductTempItemDtoVariantsInnerCopyWith
    on ProductTempItemDtoVariantsInner {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductTempItemDtoVariantsInner.copyWith(...)` or `instanceOfProductTempItemDtoVariantsInner.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductTempItemDtoVariantsInnerCWProxy get copyWith =>
      _$ProductTempItemDtoVariantsInnerCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductTempItemDtoVariantsInner _$ProductTempItemDtoVariantsInnerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductTempItemDtoVariantsInner', json, ($checkedConvert) {
  final val = ProductTempItemDtoVariantsInner(
    id: $checkedConvert('id', (v) => v as String?),
    price: $checkedConvert('price', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$ProductTempItemDtoVariantsInnerToJson(
  ProductTempItemDtoVariantsInner instance,
) => <String, dynamic>{'id': ?instance.id, 'price': ?instance.price};
