// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_cancel_order_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StaffCancelOrderRequestCWProxy {
  StaffCancelOrderRequest reason(CancelOrderReason? reason);

  StaffCancelOrderRequest note(String? note);

  StaffCancelOrderRequest refundBankName(String? refundBankName);

  StaffCancelOrderRequest refundAccountNumber(String? refundAccountNumber);

  StaffCancelOrderRequest refundAccountName(String? refundAccountName);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StaffCancelOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StaffCancelOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  StaffCancelOrderRequest call({
    CancelOrderReason? reason,
    String? note,
    String? refundBankName,
    String? refundAccountNumber,
    String? refundAccountName,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfStaffCancelOrderRequest.copyWith(...)` or call `instanceOfStaffCancelOrderRequest.copyWith.fieldName(value)` for a single field.
class _$StaffCancelOrderRequestCWProxyImpl
    implements _$StaffCancelOrderRequestCWProxy {
  const _$StaffCancelOrderRequestCWProxyImpl(this._value);

  final StaffCancelOrderRequest _value;

  @override
  StaffCancelOrderRequest reason(CancelOrderReason? reason) =>
      call(reason: reason);

  @override
  StaffCancelOrderRequest note(String? note) => call(note: note);

  @override
  StaffCancelOrderRequest refundBankName(String? refundBankName) =>
      call(refundBankName: refundBankName);

  @override
  StaffCancelOrderRequest refundAccountNumber(String? refundAccountNumber) =>
      call(refundAccountNumber: refundAccountNumber);

  @override
  StaffCancelOrderRequest refundAccountName(String? refundAccountName) =>
      call(refundAccountName: refundAccountName);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StaffCancelOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StaffCancelOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  StaffCancelOrderRequest call({
    Object? reason = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
    Object? refundBankName = const $CopyWithPlaceholder(),
    Object? refundAccountNumber = const $CopyWithPlaceholder(),
    Object? refundAccountName = const $CopyWithPlaceholder(),
  }) {
    return StaffCancelOrderRequest(
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as CancelOrderReason?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
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

extension $StaffCancelOrderRequestCopyWith on StaffCancelOrderRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfStaffCancelOrderRequest.copyWith(...)` or `instanceOfStaffCancelOrderRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StaffCancelOrderRequestCWProxy get copyWith =>
      _$StaffCancelOrderRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StaffCancelOrderRequest _$StaffCancelOrderRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('StaffCancelOrderRequest', json, ($checkedConvert) {
  final val = StaffCancelOrderRequest(
    reason: $checkedConvert(
      'reason',
      (v) => $enumDecodeNullable(_$CancelOrderReasonEnumMap, v),
    ),
    note: $checkedConvert('note', (v) => v as String?),
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

Map<String, dynamic> _$StaffCancelOrderRequestToJson(
  StaffCancelOrderRequest instance,
) => <String, dynamic>{
  'reason': ?_$CancelOrderReasonEnumMap[instance.reason],
  'note': ?instance.note,
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
  CancelOrderReason.customerRequested: 'CustomerRequested',
  CancelOrderReason.suspectedFraud: 'SuspectedFraud',
  CancelOrderReason.unreachableCustomer: 'UnreachableCustomer',
  CancelOrderReason.paymentTimeout: 'PaymentTimeout',
  CancelOrderReason.pricingOrSystemError: 'PricingOrSystemError',
  CancelOrderReason.damagedOrDefectiveStock: 'DamagedOrDefectiveStock',
  CancelOrderReason.outOfServiceArea: 'OutOfServiceArea',
  CancelOrderReason.other: 'Other',
};
