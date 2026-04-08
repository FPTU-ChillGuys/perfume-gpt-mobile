// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderDetailListItemCWProxy {
  OrderDetailListItem id(String? id);

  OrderDetailListItem variantId(String? variantId);

  OrderDetailListItem variantName(String variantName);

  OrderDetailListItem imageUrl(String? imageUrl);

  OrderDetailListItem quantity(int? quantity);

  OrderDetailListItem unitPrice(num? unitPrice);

  OrderDetailListItem refunablePrice(num? refunablePrice);

  OrderDetailListItem total(num? total);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderDetailListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderDetailListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderDetailListItem call({
    String? id,
    String? variantId,
    String variantName,
    String? imageUrl,
    int? quantity,
    num? unitPrice,
    num? refunablePrice,
    num? total,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderDetailListItem.copyWith(...)` or call `instanceOfOrderDetailListItem.copyWith.fieldName(value)` for a single field.
class _$OrderDetailListItemCWProxyImpl implements _$OrderDetailListItemCWProxy {
  const _$OrderDetailListItemCWProxyImpl(this._value);

  final OrderDetailListItem _value;

  @override
  OrderDetailListItem id(String? id) => call(id: id);

  @override
  OrderDetailListItem variantId(String? variantId) =>
      call(variantId: variantId);

  @override
  OrderDetailListItem variantName(String variantName) =>
      call(variantName: variantName);

  @override
  OrderDetailListItem imageUrl(String? imageUrl) => call(imageUrl: imageUrl);

  @override
  OrderDetailListItem quantity(int? quantity) => call(quantity: quantity);

  @override
  OrderDetailListItem unitPrice(num? unitPrice) => call(unitPrice: unitPrice);

  @override
  OrderDetailListItem refunablePrice(num? refunablePrice) =>
      call(refunablePrice: refunablePrice);

  @override
  OrderDetailListItem total(num? total) => call(total: total);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderDetailListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderDetailListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderDetailListItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variantName = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? unitPrice = const $CopyWithPlaceholder(),
    Object? refunablePrice = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
  }) {
    return OrderDetailListItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      variantName:
          variantName == const $CopyWithPlaceholder() || variantName == null
          ? _value.variantName
          // ignore: cast_nullable_to_non_nullable
          : variantName as String,
      imageUrl: imageUrl == const $CopyWithPlaceholder()
          ? _value.imageUrl
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String?,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
      unitPrice: unitPrice == const $CopyWithPlaceholder()
          ? _value.unitPrice
          // ignore: cast_nullable_to_non_nullable
          : unitPrice as num?,
      refunablePrice: refunablePrice == const $CopyWithPlaceholder()
          ? _value.refunablePrice
          // ignore: cast_nullable_to_non_nullable
          : refunablePrice as num?,
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as num?,
    );
  }
}

extension $OrderDetailListItemCopyWith on OrderDetailListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderDetailListItem.copyWith(...)` or `instanceOfOrderDetailListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderDetailListItemCWProxy get copyWith =>
      _$OrderDetailListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailListItem _$OrderDetailListItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('OrderDetailListItem', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['variantName']);
      final val = OrderDetailListItem(
        id: $checkedConvert('id', (v) => v as String?),
        variantId: $checkedConvert('variantId', (v) => v as String?),
        variantName: $checkedConvert('variantName', (v) => v as String),
        imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
        quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
        unitPrice: $checkedConvert('unitPrice', (v) => v as num?),
        refunablePrice: $checkedConvert('refunablePrice', (v) => v as num?),
        total: $checkedConvert('total', (v) => v as num?),
      );
      return val;
    });

Map<String, dynamic> _$OrderDetailListItemToJson(
  OrderDetailListItem instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'variantId': ?instance.variantId,
  'variantName': instance.variantName,
  'imageUrl': ?instance.imageUrl,
  'quantity': ?instance.quantity,
  'unitPrice': ?instance.unitPrice,
  'refunablePrice': ?instance.refunablePrice,
  'total': ?instance.total,
};
