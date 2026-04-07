// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cancel_order_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserCancelOrderRequestCWProxy {
  UserCancelOrderRequest reason(CancelOrderReason? reason);

  UserCancelOrderRequest refundBankName(String? refundBankName);

  UserCancelOrderRequest refundAccountNumber(String? refundAccountNumber);

  UserCancelOrderRequest refundAccountName(String? refundAccountName);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserCancelOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserCancelOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UserCancelOrderRequest call({
    CancelOrderReason? reason,
    String? refundBankName,
    String? refundAccountNumber,
    String? refundAccountName,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUserCancelOrderRequest.copyWith(...)` or call `instanceOfUserCancelOrderRequest.copyWith.fieldName(value)` for a single field.
class _$UserCancelOrderRequestCWProxyImpl
    implements _$UserCancelOrderRequestCWProxy {
  const _$UserCancelOrderRequestCWProxyImpl(this._value);

  final UserCancelOrderRequest _value;

  @override
  UserCancelOrderRequest reason(CancelOrderReason? reason) =>
      call(reason: reason);

  @override
  UserCancelOrderRequest refundBankName(String? refundBankName) =>
      call(refundBankName: refundBankName);

  @override
  UserCancelOrderRequest refundAccountNumber(String? refundAccountNumber) =>
      call(refundAccountNumber: refundAccountNumber);

  @override
  UserCancelOrderRequest refundAccountName(String? refundAccountName) =>
      call(refundAccountName: refundAccountName);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserCancelOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserCancelOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UserCancelOrderRequest call({
    Object? reason = const $CopyWithPlaceholder(),
    Object? refundBankName = const $CopyWithPlaceholder(),
    Object? refundAccountNumber = const $CopyWithPlaceholder(),
    Object? refundAccountName = const $CopyWithPlaceholder(),
  }) {
    return UserCancelOrderRequest(
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as CancelOrderReason?,
      refundBankName: refundBankName == const $CopyWithPlaceholder()
          ? _value.refundBankName
          // ignore: cast_nullable_to_non_nullable
          : refundBankName as String?,
      refundAccountNumber: refundAccountNumber == const $CopyWithPlaceholder()
          ? _value.refundAccountNumber
          // ignore: cast_nullable_to_non_nullable
          : refundAccountNumber as String?,
      refundAccountName: refundAccountName == const $CopyWithPlaceholder()
          ? _value.refundAccountName
          // ignore: cast_nullable_to_non_nullable
          : refundAccountName as String?,
    );
  }
}

extension $UserCancelOrderRequestCopyWith on UserCancelOrderRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUserCancelOrderRequest.copyWith(...)` or `instanceOfUserCancelOrderRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserCancelOrderRequestCWProxy get copyWith =>
      _$UserCancelOrderRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCancelOrderRequest _$UserCancelOrderRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserCancelOrderRequest', json, ($checkedConvert) {
  final val = UserCancelOrderRequest(
    reason: $checkedConvert(
      'reason',
      (v) => $enumDecodeNullable(_$CancelOrderReasonEnumMap, v),
    ),
    refundBankName: $checkedConvert('refundBankName', (v) => v as String?),
    refundAccountNumber: $checkedConvert(
      'refundAccountNumber',
      (v) => v as String?,
    ),
    refundAccountName: $checkedConvert(
      'refundAccountName',
      (v) => v as String?,
    ),
  );
  return val;
});

Map<String, dynamic> _$UserCancelOrderRequestToJson(
  UserCancelOrderRequest instance,
) => <String, dynamic>{
  'reason': ?_$CancelOrderReasonEnumMap[instance.reason],
  'refundBankName': ?instance.refundBankName,
  'refundAccountNumber': ?instance.refundAccountNumber,
  'refundAccountName': ?instance.refundAccountName,
};

const _$CancelOrderReasonEnumMap = {
  CancelOrderReason.changedMind: 'ChangedMind',
  CancelOrderReason.foundBetterPrice: 'FoundBetterPrice',
  CancelOrderReason.wrongShippingInformation: 'WrongShippingInformation',
  CancelOrderReason.paymentIssue: 'PaymentIssue',
  CancelOrderReason.deliveryTooLate: 'DeliveryTooLate',
  CancelOrderReason.insufficientStock: 'InsufficientStock',
};
