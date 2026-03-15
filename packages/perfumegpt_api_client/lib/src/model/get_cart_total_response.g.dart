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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GetCartTotalResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GetCartTotalResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  GetCartTotalResponse call({
    num? subtotal,
    num? shippingFee,
    num? discount,
    num? totalPrice,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGetCartTotalResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGetCartTotalResponse.copyWith.fieldName(...)`
class _$GetCartTotalResponseCWProxyImpl
    implements _$GetCartTotalResponseCWProxy {
  const _$GetCartTotalResponseCWProxyImpl(this._value);

  final GetCartTotalResponse _value;

  @override
  GetCartTotalResponse subtotal(num? subtotal) => this(subtotal: subtotal);

  @override
  GetCartTotalResponse shippingFee(num? shippingFee) =>
      this(shippingFee: shippingFee);

  @override
  GetCartTotalResponse discount(num? discount) => this(discount: discount);

  @override
  GetCartTotalResponse totalPrice(num? totalPrice) =>
      this(totalPrice: totalPrice);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GetCartTotalResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GetCartTotalResponse(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfGetCartTotalResponse.copyWith(...)` or like so:`instanceOfGetCartTotalResponse.copyWith.fieldName(...)`.
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
