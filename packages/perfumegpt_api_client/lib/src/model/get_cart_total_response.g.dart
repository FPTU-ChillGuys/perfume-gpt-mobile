// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_total_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GetCartTotalResponseCWProxy {
  GetCartTotalResponse subtotal(num? subtotal);

  GetCartTotalResponse shippingFee(num? shippingFee);

  GetCartTotalResponse discount(num? discount);

  GetCartTotalResponse totalPrice(num? totalPrice);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GetCartTotalResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GetCartTotalResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  GetCartTotalResponse call({
    num? subtotal,
    num? shippingFee,
    num? discount,
    num? totalPrice,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfGetCartTotalResponse.copyWith(...)` or call `instanceOfGetCartTotalResponse.copyWith.fieldName(value)` for a single field.
class _$GetCartTotalResponseCWProxyImpl
    implements _$GetCartTotalResponseCWProxy {
  const _$GetCartTotalResponseCWProxyImpl(this._value);

  final GetCartTotalResponse _value;

  @override
  GetCartTotalResponse subtotal(num? subtotal) => call(subtotal: subtotal);

  @override
  GetCartTotalResponse shippingFee(num? shippingFee) =>
      call(shippingFee: shippingFee);

  @override
  GetCartTotalResponse discount(num? discount) => call(discount: discount);

  @override
  GetCartTotalResponse totalPrice(num? totalPrice) =>
      call(totalPrice: totalPrice);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GetCartTotalResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GetCartTotalResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  GetCartTotalResponse call({
    Object? subtotal = const $CopyWithPlaceholder(),
    Object? shippingFee = const $CopyWithPlaceholder(),
    Object? discount = const $CopyWithPlaceholder(),
    Object? totalPrice = const $CopyWithPlaceholder(),
  }) {
    return GetCartTotalResponse(
      subtotal: subtotal == const $CopyWithPlaceholder()
          ? _value.subtotal
          // ignore: cast_nullable_to_non_nullable
          : subtotal as num?,
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
    );
  }
}

extension $GetCartTotalResponseCopyWith on GetCartTotalResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfGetCartTotalResponse.copyWith(...)` or `instanceOfGetCartTotalResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GetCartTotalResponseCWProxy get copyWith =>
      _$GetCartTotalResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartTotalResponse _$GetCartTotalResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GetCartTotalResponse', json, ($checkedConvert) {
  final val = GetCartTotalResponse(
    subtotal: $checkedConvert('subtotal', (v) => v as num?),
    shippingFee: $checkedConvert('shippingFee', (v) => v as num?),
    discount: $checkedConvert('discount', (v) => v as num?),
    totalPrice: $checkedConvert('totalPrice', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$GetCartTotalResponseToJson(
  GetCartTotalResponse instance,
) => <String, dynamic>{
  'subtotal': ?instance.subtotal,
  'shippingFee': ?instance.shippingFee,
  'discount': ?instance.discount,
  'totalPrice': ?instance.totalPrice,
};
