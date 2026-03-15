// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_voucher_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RedeemVoucherRequestCWProxy {
  RedeemVoucherRequest voucherId(String? voucherId);

  RedeemVoucherRequest receiverEmailOrPhone(String? receiverEmailOrPhone);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RedeemVoucherRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RedeemVoucherRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  RedeemVoucherRequest call({String? voucherId, String? receiverEmailOrPhone});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfRedeemVoucherRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfRedeemVoucherRequest.copyWith.fieldName(...)`
class _$RedeemVoucherRequestCWProxyImpl
    implements _$RedeemVoucherRequestCWProxy {
  const _$RedeemVoucherRequestCWProxyImpl(this._value);

  final RedeemVoucherRequest _value;

  @override
  RedeemVoucherRequest voucherId(String? voucherId) =>
      this(voucherId: voucherId);

  @override
  RedeemVoucherRequest receiverEmailOrPhone(String? receiverEmailOrPhone) =>
      this(receiverEmailOrPhone: receiverEmailOrPhone);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `RedeemVoucherRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// RedeemVoucherRequest(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfRedeemVoucherRequest.copyWith(...)` or like so:`instanceOfRedeemVoucherRequest.copyWith.fieldName(...)`.
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
