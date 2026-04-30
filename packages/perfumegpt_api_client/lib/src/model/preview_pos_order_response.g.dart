// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preview_pos_order_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PreviewPosOrderResponseCWProxy {
  PreviewPosOrderResponse items(List<PosOrderDetailListItem>? items);

  PreviewPosOrderResponse subTotal(num? subTotal);

  PreviewPosOrderResponse shippingFee(num? shippingFee);

  PreviewPosOrderResponse discount(num? discount);

  PreviewPosOrderResponse totalPrice(num? totalPrice);

  PreviewPosOrderResponse requiredDepositAmount(num? requiredDepositAmount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PreviewPosOrderResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PreviewPosOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PreviewPosOrderResponse call({
    List<PosOrderDetailListItem>? items,
    num? subTotal,
    num? shippingFee,
    num? discount,
    num? totalPrice,
    num? requiredDepositAmount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPreviewPosOrderResponse.copyWith(...)` or call `instanceOfPreviewPosOrderResponse.copyWith.fieldName(value)` for a single field.
class _$PreviewPosOrderResponseCWProxyImpl
    implements _$PreviewPosOrderResponseCWProxy {
  const _$PreviewPosOrderResponseCWProxyImpl(this._value);

  final PreviewPosOrderResponse _value;

  @override
  PreviewPosOrderResponse items(List<PosOrderDetailListItem>? items) =>
      call(items: items);

  @override
  PreviewPosOrderResponse subTotal(num? subTotal) => call(subTotal: subTotal);

  @override
  PreviewPosOrderResponse shippingFee(num? shippingFee) =>
      call(shippingFee: shippingFee);

  @override
  PreviewPosOrderResponse discount(num? discount) => call(discount: discount);

  @override
  PreviewPosOrderResponse totalPrice(num? totalPrice) =>
      call(totalPrice: totalPrice);

  @override
  PreviewPosOrderResponse requiredDepositAmount(num? requiredDepositAmount) =>
      call(requiredDepositAmount: requiredDepositAmount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PreviewPosOrderResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PreviewPosOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PreviewPosOrderResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? subTotal = const $CopyWithPlaceholder(),
    Object? shippingFee = const $CopyWithPlaceholder(),
    Object? discount = const $CopyWithPlaceholder(),
    Object? totalPrice = const $CopyWithPlaceholder(),
    Object? requiredDepositAmount = const $CopyWithPlaceholder(),
  }) {
    return PreviewPosOrderResponse(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<PosOrderDetailListItem>?,
      subTotal: subTotal == const $CopyWithPlaceholder()
          ? _value.subTotal
          // ignore: cast_nullable_to_non_nullable
          : subTotal as num?,
      shippingFee: shippingFee == const $CopyWithPlaceholder()
          ? _value.shippingFee
          // ignore: cast_nullable_to_non_nullable
          : shippingFee as num?,
      discount: discount == const $CopyWithPlaceholder()
          ? _value.discount
          // ignore: cast_nullable_to_non_nullable
          : discount as num?,
      totalPrice: totalPrice == const $CopyWithPlaceholder()
          ? _value.totalPrice
          // ignore: cast_nullable_to_non_nullable
          : totalPrice as num?,
      requiredDepositAmount:
          requiredDepositAmount == const $CopyWithPlaceholder()
          ? _value.requiredDepositAmount
          // ignore: cast_nullable_to_non_nullable
          : requiredDepositAmount as num?,
    );
  }
}

extension $PreviewPosOrderResponseCopyWith on PreviewPosOrderResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPreviewPosOrderResponse.copyWith(...)` or `instanceOfPreviewPosOrderResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PreviewPosOrderResponseCWProxy get copyWith =>
      _$PreviewPosOrderResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviewPosOrderResponse _$PreviewPosOrderResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PreviewPosOrderResponse', json, ($checkedConvert) {
  final val = PreviewPosOrderResponse(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => PosOrderDetailListItem.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    subTotal: $checkedConvert('subTotal', (v) => v as num?),
    shippingFee: $checkedConvert('shippingFee', (v) => v as num?),
    discount: $checkedConvert('discount', (v) => v as num?),
    totalPrice: $checkedConvert('totalPrice', (v) => v as num?),
    requiredDepositAmount: $checkedConvert(
      'requiredDepositAmount',
      (v) => v as num?,
    ),
  );
  return val;
});

Map<String, dynamic> _$PreviewPosOrderResponseToJson(
  PreviewPosOrderResponse instance,
) => <String, dynamic>{
  'items': ?instance.items?.map((e) => e.toJson()).toList(),
  'subTotal': ?instance.subTotal,
  'shippingFee': ?instance.shippingFee,
  'discount': ?instance.discount,
  'totalPrice': ?instance.totalPrice,
  'requiredDepositAmount': ?instance.requiredDepositAmount,
};
