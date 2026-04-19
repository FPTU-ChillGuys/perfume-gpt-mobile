// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicable_voucher_cart_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ApplicableVoucherCartItemRequestCWProxy {
  ApplicableVoucherCartItemRequest variantId(String? variantId);

  ApplicableVoucherCartItemRequest quantity(int? quantity);

  ApplicableVoucherCartItemRequest price(num? price);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ApplicableVoucherCartItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ApplicableVoucherCartItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ApplicableVoucherCartItemRequest call({
    String? variantId,
    int? quantity,
    num? price,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfApplicableVoucherCartItemRequest.copyWith(...)` or call `instanceOfApplicableVoucherCartItemRequest.copyWith.fieldName(value)` for a single field.
class _$ApplicableVoucherCartItemRequestCWProxyImpl
    implements _$ApplicableVoucherCartItemRequestCWProxy {
  const _$ApplicableVoucherCartItemRequestCWProxyImpl(this._value);

  final ApplicableVoucherCartItemRequest _value;

  @override
  ApplicableVoucherCartItemRequest variantId(String? variantId) =>
      call(variantId: variantId);

  @override
  ApplicableVoucherCartItemRequest quantity(int? quantity) =>
      call(quantity: quantity);

  @override
  ApplicableVoucherCartItemRequest price(num? price) => call(price: price);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ApplicableVoucherCartItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ApplicableVoucherCartItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ApplicableVoucherCartItemRequest call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
  }) {
    return ApplicableVoucherCartItemRequest(
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
      price: price == const $CopyWithPlaceholder()
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as num?,
    );
  }
}

extension $ApplicableVoucherCartItemRequestCopyWith
    on ApplicableVoucherCartItemRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfApplicableVoucherCartItemRequest.copyWith(...)` or `instanceOfApplicableVoucherCartItemRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ApplicableVoucherCartItemRequestCWProxy get copyWith =>
      _$ApplicableVoucherCartItemRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplicableVoucherCartItemRequest _$ApplicableVoucherCartItemRequestFromJson(
  Map<String, dynamic> json,
) =>
    $checkedCreate('ApplicableVoucherCartItemRequest', json, ($checkedConvert) {
      final val = ApplicableVoucherCartItemRequest(
        variantId: $checkedConvert('variantId', (v) => v as String?),
        quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
        price: $checkedConvert('price', (v) => v as num?),
      );
      return val;
    });

Map<String, dynamic> _$ApplicableVoucherCartItemRequestToJson(
  ApplicableVoucherCartItemRequest instance,
) => <String, dynamic>{
  'variantId': ?instance.variantId,
  'quantity': ?instance.quantity,
  'price': ?instance.price,
};
