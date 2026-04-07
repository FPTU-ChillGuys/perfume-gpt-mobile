// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_cancel_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProcessCancelRequestCWProxy {
  ProcessCancelRequest isApproved(bool? isApproved);

  ProcessCancelRequest staffNote(String? staffNote);

  ProcessCancelRequest refundMethod(PaymentMethod? refundMethod);

  ProcessCancelRequest manualTransactionReference(
    String? manualTransactionReference,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProcessCancelRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProcessCancelRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ProcessCancelRequest call({
    bool? isApproved,
    String? staffNote,
    PaymentMethod? refundMethod,
    String? manualTransactionReference,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProcessCancelRequest.copyWith(...)` or call `instanceOfProcessCancelRequest.copyWith.fieldName(value)` for a single field.
class _$ProcessCancelRequestCWProxyImpl
    implements _$ProcessCancelRequestCWProxy {
  const _$ProcessCancelRequestCWProxyImpl(this._value);

  final ProcessCancelRequest _value;

  @override
  ProcessCancelRequest isApproved(bool? isApproved) =>
      call(isApproved: isApproved);

  @override
  ProcessCancelRequest staffNote(String? staffNote) =>
      call(staffNote: staffNote);

  @override
  ProcessCancelRequest refundMethod(PaymentMethod? refundMethod) =>
      call(refundMethod: refundMethod);

  @override
  ProcessCancelRequest manualTransactionReference(
    String? manualTransactionReference,
  ) => call(manualTransactionReference: manualTransactionReference);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProcessCancelRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProcessCancelRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ProcessCancelRequest call({
    Object? isApproved = const $CopyWithPlaceholder(),
    Object? staffNote = const $CopyWithPlaceholder(),
    Object? refundMethod = const $CopyWithPlaceholder(),
    Object? manualTransactionReference = const $CopyWithPlaceholder(),
  }) {
    return ProcessCancelRequest(
      isApproved: isApproved == const $CopyWithPlaceholder()
          ? _value.isApproved
          // ignore: cast_nullable_to_non_nullable
          : isApproved as bool?,
      staffNote: staffNote == const $CopyWithPlaceholder()
          ? _value.staffNote
          // ignore: cast_nullable_to_non_nullable
          : staffNote as String?,
      refundMethod: refundMethod == const $CopyWithPlaceholder()
          ? _value.refundMethod
          // ignore: cast_nullable_to_non_nullable
          : refundMethod as PaymentMethod?,
      manualTransactionReference:
          manualTransactionReference == const $CopyWithPlaceholder()
          ? _value.manualTransactionReference
          // ignore: cast_nullable_to_non_nullable
          : manualTransactionReference as String?,
    );
  }
}

extension $ProcessCancelRequestCopyWith on ProcessCancelRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProcessCancelRequest.copyWith(...)` or `instanceOfProcessCancelRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProcessCancelRequestCWProxy get copyWith =>
      _$ProcessCancelRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProcessCancelRequest _$ProcessCancelRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProcessCancelRequest', json, ($checkedConvert) {
  final val = ProcessCancelRequest(
    isApproved: $checkedConvert('isApproved', (v) => v as bool?),
    staffNote: $checkedConvert('staffNote', (v) => v as String?),
    refundMethod: $checkedConvert(
      'refundMethod',
      (v) => $enumDecodeNullable(_$PaymentMethodEnumMap, v),
    ),
    manualTransactionReference: $checkedConvert(
      'manualTransactionReference',
      (v) => v as String?,
    ),
  );
  return val;
});

Map<String, dynamic> _$ProcessCancelRequestToJson(
  ProcessCancelRequest instance,
) => <String, dynamic>{
  'isApproved': ?instance.isApproved,
  'staffNote': ?instance.staffNote,
  'refundMethod': ?_$PaymentMethodEnumMap[instance.refundMethod],
  'manualTransactionReference': ?instance.manualTransactionReference,
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cashOnDelivery: 'CashOnDelivery',
  PaymentMethod.vnPay: 'VnPay',
  PaymentMethod.momo: 'Momo',
  PaymentMethod.cashInStore: 'CashInStore',
  PaymentMethod.externalBankTransfer: 'ExternalBankTransfer',
};
