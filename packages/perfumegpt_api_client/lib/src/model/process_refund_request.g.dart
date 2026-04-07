// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_refund_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProcessRefundRequestCWProxy {
  ProcessRefundRequest refundMethod(PaymentMethod? refundMethod);

  ProcessRefundRequest manualTransactionReference(
    String? manualTransactionReference,
  );

  ProcessRefundRequest note(String? note);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProcessRefundRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProcessRefundRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ProcessRefundRequest call({
    PaymentMethod? refundMethod,
    String? manualTransactionReference,
    String? note,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProcessRefundRequest.copyWith(...)` or call `instanceOfProcessRefundRequest.copyWith.fieldName(value)` for a single field.
class _$ProcessRefundRequestCWProxyImpl
    implements _$ProcessRefundRequestCWProxy {
  const _$ProcessRefundRequestCWProxyImpl(this._value);

  final ProcessRefundRequest _value;

  @override
  ProcessRefundRequest refundMethod(PaymentMethod? refundMethod) =>
      call(refundMethod: refundMethod);

  @override
  ProcessRefundRequest manualTransactionReference(
    String? manualTransactionReference,
  ) => call(manualTransactionReference: manualTransactionReference);

  @override
  ProcessRefundRequest note(String? note) => call(note: note);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProcessRefundRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProcessRefundRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ProcessRefundRequest call({
    Object? refundMethod = const $CopyWithPlaceholder(),
    Object? manualTransactionReference = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
  }) {
    return ProcessRefundRequest(
      refundMethod: refundMethod == const $CopyWithPlaceholder()
          ? _value.refundMethod
          // ignore: cast_nullable_to_non_nullable
          : refundMethod as PaymentMethod?,
      manualTransactionReference:
          manualTransactionReference == const $CopyWithPlaceholder()
          ? _value.manualTransactionReference
          // ignore: cast_nullable_to_non_nullable
          : manualTransactionReference as String?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
    );
  }
}

extension $ProcessRefundRequestCopyWith on ProcessRefundRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProcessRefundRequest.copyWith(...)` or `instanceOfProcessRefundRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProcessRefundRequestCWProxy get copyWith =>
      _$ProcessRefundRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProcessRefundRequest _$ProcessRefundRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProcessRefundRequest', json, ($checkedConvert) {
  final val = ProcessRefundRequest(
    refundMethod: $checkedConvert(
      'refundMethod',
      (v) => $enumDecodeNullable(_$PaymentMethodEnumMap, v),
    ),
    manualTransactionReference: $checkedConvert(
      'manualTransactionReference',
      (v) => v as String?,
    ),
    note: $checkedConvert('note', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ProcessRefundRequestToJson(
  ProcessRefundRequest instance,
) => <String, dynamic>{
  'refundMethod': ?_$PaymentMethodEnumMap[instance.refundMethod],
  'manualTransactionReference': ?instance.manualTransactionReference,
  'note': ?instance.note,
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cashOnDelivery: 'CashOnDelivery',
  PaymentMethod.vnPay: 'VnPay',
  PaymentMethod.momo: 'Momo',
  PaymentMethod.cashInStore: 'CashInStore',
  PaymentMethod.externalBankTransfer: 'ExternalBankTransfer',
};
