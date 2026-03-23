// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preview_order_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PreviewOrderResponseCWProxy {
  PreviewOrderResponse items(List<OrderDetailListItems>? items);

  PreviewOrderResponse subTotal(num? subTotal);

  PreviewOrderResponse shippingFee(num? shippingFee);

  PreviewOrderResponse discount(num? discount);

  PreviewOrderResponse total(num? total);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PreviewOrderResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PreviewOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PreviewOrderResponse call({
    List<OrderDetailListItems>? items,
    num? subTotal,
    num? shippingFee,
    num? discount,
    num? total,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPreviewOrderResponse.copyWith(...)` or call `instanceOfPreviewOrderResponse.copyWith.fieldName(value)` for a single field.
class _$PreviewOrderResponseCWProxyImpl
    implements _$PreviewOrderResponseCWProxy {
  const _$PreviewOrderResponseCWProxyImpl(this._value);

  final PreviewOrderResponse _value;

  @override
  PreviewOrderResponse items(List<OrderDetailListItems>? items) =>
      call(items: items);

  @override
  PreviewOrderResponse subTotal(num? subTotal) => call(subTotal: subTotal);

  @override
  PreviewOrderResponse shippingFee(num? shippingFee) =>
      call(shippingFee: shippingFee);

  @override
  PreviewOrderResponse discount(num? discount) => call(discount: discount);

  @override
  PreviewOrderResponse total(num? total) => call(total: total);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PreviewOrderResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PreviewOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PreviewOrderResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? subTotal = const $CopyWithPlaceholder(),
    Object? shippingFee = const $CopyWithPlaceholder(),
    Object? discount = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
  }) {
    return PreviewOrderResponse(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<OrderDetailListItems>?,
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
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as num?,
    );
  }
}

extension $PreviewOrderResponseCopyWith on PreviewOrderResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPreviewOrderResponse.copyWith(...)` or `instanceOfPreviewOrderResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PreviewOrderResponseCWProxy get copyWith =>
      _$PreviewOrderResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviewOrderResponse _$PreviewOrderResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PreviewOrderResponse', json, ($checkedConvert) {
  final val = PreviewOrderResponse(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>?)
          ?.map((e) => OrderDetailListItems.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    subTotal: $checkedConvert('subTotal', (v) => v as num?),
    shippingFee: $checkedConvert('shippingFee', (v) => v as num?),
    discount: $checkedConvert('discount', (v) => v as num?),
    total: $checkedConvert('total', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$PreviewOrderResponseToJson(
  PreviewOrderResponse instance,
) => <String, dynamic>{
  'items': ?instance.items?.map((e) => e.toJson()).toList(),
  'subTotal': ?instance.subTotal,
  'shippingFee': ?instance.shippingFee,
  'discount': ?instance.discount,
  'total': ?instance.total,
};
