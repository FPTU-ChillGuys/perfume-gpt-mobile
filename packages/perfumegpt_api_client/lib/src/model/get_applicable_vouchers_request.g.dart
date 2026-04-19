// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_applicable_vouchers_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GetApplicableVouchersRequestCWProxy {
  GetApplicableVouchersRequest customerId(String? customerId);

  GetApplicableVouchersRequest cartItems(
    List<ApplicableVoucherCartItemRequest> cartItems,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GetApplicableVouchersRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GetApplicableVouchersRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  GetApplicableVouchersRequest call({
    String? customerId,
    List<ApplicableVoucherCartItemRequest> cartItems,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfGetApplicableVouchersRequest.copyWith(...)` or call `instanceOfGetApplicableVouchersRequest.copyWith.fieldName(value)` for a single field.
class _$GetApplicableVouchersRequestCWProxyImpl
    implements _$GetApplicableVouchersRequestCWProxy {
  const _$GetApplicableVouchersRequestCWProxyImpl(this._value);

  final GetApplicableVouchersRequest _value;

  @override
  GetApplicableVouchersRequest customerId(String? customerId) =>
      call(customerId: customerId);

  @override
  GetApplicableVouchersRequest cartItems(
    List<ApplicableVoucherCartItemRequest> cartItems,
  ) => call(cartItems: cartItems);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GetApplicableVouchersRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GetApplicableVouchersRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  GetApplicableVouchersRequest call({
    Object? customerId = const $CopyWithPlaceholder(),
    Object? cartItems = const $CopyWithPlaceholder(),
  }) {
    return GetApplicableVouchersRequest(
      customerId: customerId == const $CopyWithPlaceholder()
          ? _value.customerId
          // ignore: cast_nullable_to_non_nullable
          : customerId as String?,
      cartItems: cartItems == const $CopyWithPlaceholder() || cartItems == null
          ? _value.cartItems
          // ignore: cast_nullable_to_non_nullable
          : cartItems as List<ApplicableVoucherCartItemRequest>,
    );
  }
}

extension $GetApplicableVouchersRequestCopyWith
    on GetApplicableVouchersRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfGetApplicableVouchersRequest.copyWith(...)` or `instanceOfGetApplicableVouchersRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GetApplicableVouchersRequestCWProxy get copyWith =>
      _$GetApplicableVouchersRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetApplicableVouchersRequest _$GetApplicableVouchersRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GetApplicableVouchersRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['cartItems']);
  final val = GetApplicableVouchersRequest(
    customerId: $checkedConvert('customerId', (v) => v as String?),
    cartItems: $checkedConvert(
      'cartItems',
      (v) => (v as List<dynamic>)
          .map(
            (e) => ApplicableVoucherCartItemRequest.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$GetApplicableVouchersRequestToJson(
  GetApplicableVouchersRequest instance,
) => <String, dynamic>{
  'customerId': ?instance.customerId,
  'cartItems': instance.cartItems.map((e) => e.toJson()).toList(),
};
