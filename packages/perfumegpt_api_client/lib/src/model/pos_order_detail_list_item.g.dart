// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_order_detail_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PosOrderDetailListItemCWProxy {
  PosOrderDetailListItem variantId(String? variantId);

  PosOrderDetailListItem batchId(String? batchId);

  PosOrderDetailListItem variantName(String? variantName);

  PosOrderDetailListItem batchCode(String? batchCode);

  PosOrderDetailListItem imageUrl(String? imageUrl);

  PosOrderDetailListItem quantity(int? quantity);

  PosOrderDetailListItem unitPrice(num? unitPrice);

  PosOrderDetailListItem subTotal(num? subTotal);

  PosOrderDetailListItem discount(num? discount);

  PosOrderDetailListItem finalTotal(num? finalTotal);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PosOrderDetailListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PosOrderDetailListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  PosOrderDetailListItem call({
    String? variantId,
    String? batchId,
    String? variantName,
    String? batchCode,
    String? imageUrl,
    int? quantity,
    num? unitPrice,
    num? subTotal,
    num? discount,
    num? finalTotal,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPosOrderDetailListItem.copyWith(...)` or call `instanceOfPosOrderDetailListItem.copyWith.fieldName(value)` for a single field.
class _$PosOrderDetailListItemCWProxyImpl
    implements _$PosOrderDetailListItemCWProxy {
  const _$PosOrderDetailListItemCWProxyImpl(this._value);

  final PosOrderDetailListItem _value;

  @override
  PosOrderDetailListItem variantId(String? variantId) =>
      call(variantId: variantId);

  @override
  PosOrderDetailListItem batchId(String? batchId) => call(batchId: batchId);

  @override
  PosOrderDetailListItem variantName(String? variantName) =>
      call(variantName: variantName);

  @override
  PosOrderDetailListItem batchCode(String? batchCode) =>
      call(batchCode: batchCode);

  @override
  PosOrderDetailListItem imageUrl(String? imageUrl) => call(imageUrl: imageUrl);

  @override
  PosOrderDetailListItem quantity(int? quantity) => call(quantity: quantity);

  @override
  PosOrderDetailListItem unitPrice(num? unitPrice) =>
      call(unitPrice: unitPrice);

  @override
  PosOrderDetailListItem subTotal(num? subTotal) => call(subTotal: subTotal);

  @override
  PosOrderDetailListItem discount(num? discount) => call(discount: discount);

  @override
  PosOrderDetailListItem finalTotal(num? finalTotal) =>
      call(finalTotal: finalTotal);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PosOrderDetailListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PosOrderDetailListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  PosOrderDetailListItem call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? batchId = const $CopyWithPlaceholder(),
    Object? variantName = const $CopyWithPlaceholder(),
    Object? batchCode = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? unitPrice = const $CopyWithPlaceholder(),
    Object? subTotal = const $CopyWithPlaceholder(),
    Object? discount = const $CopyWithPlaceholder(),
    Object? finalTotal = const $CopyWithPlaceholder(),
  }) {
    return PosOrderDetailListItem(
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      batchId: batchId == const $CopyWithPlaceholder()
          ? _value.batchId
          // ignore: cast_nullable_to_non_nullable
          : batchId as String?,
      variantName: variantName == const $CopyWithPlaceholder()
          ? _value.variantName
          // ignore: cast_nullable_to_non_nullable
          : variantName as String?,
      batchCode: batchCode == const $CopyWithPlaceholder()
          ? _value.batchCode
          // ignore: cast_nullable_to_non_nullable
          : batchCode as String?,
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
      subTotal: subTotal == const $CopyWithPlaceholder()
          ? _value.subTotal
          // ignore: cast_nullable_to_non_nullable
          : subTotal as num?,
      discount: discount == const $CopyWithPlaceholder()
          ? _value.discount
          // ignore: cast_nullable_to_non_nullable
          : discount as num?,
      finalTotal: finalTotal == const $CopyWithPlaceholder()
          ? _value.finalTotal
          // ignore: cast_nullable_to_non_nullable
          : finalTotal as num?,
    );
  }
}

extension $PosOrderDetailListItemCopyWith on PosOrderDetailListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPosOrderDetailListItem.copyWith(...)` or `instanceOfPosOrderDetailListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PosOrderDetailListItemCWProxy get copyWith =>
      _$PosOrderDetailListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PosOrderDetailListItem _$PosOrderDetailListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PosOrderDetailListItem', json, ($checkedConvert) {
  final val = PosOrderDetailListItem(
    variantId: $checkedConvert('variantId', (v) => v as String?),
    batchId: $checkedConvert('batchId', (v) => v as String?),
    variantName: $checkedConvert('variantName', (v) => v as String?),
    batchCode: $checkedConvert('batchCode', (v) => v as String?),
    imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
    quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
    unitPrice: $checkedConvert('unitPrice', (v) => v as num?),
    subTotal: $checkedConvert('subTotal', (v) => v as num?),
    discount: $checkedConvert('discount', (v) => v as num?),
    finalTotal: $checkedConvert('finalTotal', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$PosOrderDetailListItemToJson(
  PosOrderDetailListItem instance,
) => <String, dynamic>{
  'variantId': ?instance.variantId,
  'batchId': ?instance.batchId,
  'variantName': ?instance.variantName,
  'batchCode': ?instance.batchCode,
  'imageUrl': ?instance.imageUrl,
  'quantity': ?instance.quantity,
  'unitPrice': ?instance.unitPrice,
  'subTotal': ?instance.subTotal,
  'discount': ?instance.discount,
  'finalTotal': ?instance.finalTotal,
};
