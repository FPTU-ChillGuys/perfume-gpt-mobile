// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_voucher_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RedeemVoucherRequestCWProxy {
  RedeemVoucherRequest voucherId(String? voucherId);

  RedeemVoucherRequest receiverEmailOrPhone(String? receiverEmailOrPhone);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RedeemVoucherRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RedeemVoucherRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  RedeemVoucherRequest call({String? voucherId, String? receiverEmailOrPhone});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRedeemVoucherRequest.copyWith(...)` or call `instanceOfRedeemVoucherRequest.copyWith.fieldName(value)` for a single field.
class _$RedeemVoucherRequestCWProxyImpl
    implements _$RedeemVoucherRequestCWProxy {
  const _$RedeemVoucherRequestCWProxyImpl(this._value);

  final RedeemVoucherRequest _value;

  @override
  RedeemVoucherRequest voucherId(String? voucherId) =>
      call(voucherId: voucherId);

  @override
  RedeemVoucherRequest receiverEmailOrPhone(String? receiverEmailOrPhone) =>
      call(receiverEmailOrPhone: receiverEmailOrPhone);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RedeemVoucherRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RedeemVoucherRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  RedeemVoucherRequest call({
    Object? voucherId = const $CopyWithPlaceholder(),
    Object? receiverEmailOrPhone = const $CopyWithPlaceholder(),
  }) {
    return RedeemVoucherRequest(
      voucherId: voucherId == const $CopyWithPlaceholder()
          ? _value.voucherId
          // ignore: cast_nullable_to_non_nullable
          : voucherId as String?,
      receiverEmailOrPhone: receiverEmailOrPhone == const $CopyWithPlaceholder()
          ? _value.receiverEmailOrPhone
          // ignore: cast_nullable_to_non_nullable
          : receiverEmailOrPhone as String?,
    );
  }
}

extension $RedeemVoucherRequestCopyWith on RedeemVoucherRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRedeemVoucherRequest.copyWith(...)` or `instanceOfRedeemVoucherRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RedeemVoucherRequestCWProxy get copyWith =>
      _$RedeemVoucherRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RedeemVoucherRequest _$RedeemVoucherRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RedeemVoucherRequest', json, ($checkedConvert) {
  final val = RedeemVoucherRequest(
    voucherId: $checkedConvert('voucherId', (v) => v as String?),
    receiverEmailOrPhone: $checkedConvert(
      'receiverEmailOrPhone',
      (v) => v as String?,
    ),
  );
  return val;
});

Map<String, dynamic> _$RedeemVoucherRequestToJson(
  RedeemVoucherRequest instance,
) => <String, dynamic>{
  'voucherId': ?instance.voucherId,
  'receiverEmailOrPhone': ?instance.receiverEmailOrPhone,
};
