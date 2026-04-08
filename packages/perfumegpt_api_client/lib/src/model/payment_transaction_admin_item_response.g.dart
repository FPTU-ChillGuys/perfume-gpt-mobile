// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_transaction_admin_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PaymentTransactionAdminItemResponseCWProxy {
  PaymentTransactionAdminItemResponse id(String? id);

  PaymentTransactionAdminItemResponse orderId(String? orderId);

  PaymentTransactionAdminItemResponse orderCode(String orderCode);

  PaymentTransactionAdminItemResponse method(PaymentMethod? method);

  PaymentTransactionAdminItemResponse transactionType(
    TransactionType? transactionType,
  );

  PaymentTransactionAdminItemResponse transactionStatus(
    TransactionStatus? transactionStatus,
  );

  PaymentTransactionAdminItemResponse amount(num? amount);

  PaymentTransactionAdminItemResponse gatewayTransactionNo(
    String? gatewayTransactionNo,
  );

  PaymentTransactionAdminItemResponse failureReason(String? failureReason);

  PaymentTransactionAdminItemResponse originalPaymentId(
    String? originalPaymentId,
  );

  PaymentTransactionAdminItemResponse retryAttempt(int? retryAttempt);

  PaymentTransactionAdminItemResponse createdAt(DateTime? createdAt);

  PaymentTransactionAdminItemResponse updatedAt(DateTime? updatedAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentTransactionAdminItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentTransactionAdminItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentTransactionAdminItemResponse call({
    String? id,
    String? orderId,
    String orderCode,
    PaymentMethod? method,
    TransactionType? transactionType,
    TransactionStatus? transactionStatus,
    num? amount,
    String? gatewayTransactionNo,
    String? failureReason,
    String? originalPaymentId,
    int? retryAttempt,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPaymentTransactionAdminItemResponse.copyWith(...)` or call `instanceOfPaymentTransactionAdminItemResponse.copyWith.fieldName(value)` for a single field.
class _$PaymentTransactionAdminItemResponseCWProxyImpl
    implements _$PaymentTransactionAdminItemResponseCWProxy {
  const _$PaymentTransactionAdminItemResponseCWProxyImpl(this._value);

  final PaymentTransactionAdminItemResponse _value;

  @override
  PaymentTransactionAdminItemResponse id(String? id) => call(id: id);

  @override
  PaymentTransactionAdminItemResponse orderId(String? orderId) =>
      call(orderId: orderId);

  @override
  PaymentTransactionAdminItemResponse orderCode(String orderCode) =>
      call(orderCode: orderCode);

  @override
  PaymentTransactionAdminItemResponse method(PaymentMethod? method) =>
      call(method: method);

  @override
  PaymentTransactionAdminItemResponse transactionType(
    TransactionType? transactionType,
  ) => call(transactionType: transactionType);

  @override
  PaymentTransactionAdminItemResponse transactionStatus(
    TransactionStatus? transactionStatus,
  ) => call(transactionStatus: transactionStatus);

  @override
  PaymentTransactionAdminItemResponse amount(num? amount) =>
      call(amount: amount);

  @override
  PaymentTransactionAdminItemResponse gatewayTransactionNo(
    String? gatewayTransactionNo,
  ) => call(gatewayTransactionNo: gatewayTransactionNo);

  @override
  PaymentTransactionAdminItemResponse failureReason(String? failureReason) =>
      call(failureReason: failureReason);

  @override
  PaymentTransactionAdminItemResponse originalPaymentId(
    String? originalPaymentId,
  ) => call(originalPaymentId: originalPaymentId);

  @override
  PaymentTransactionAdminItemResponse retryAttempt(int? retryAttempt) =>
      call(retryAttempt: retryAttempt);

  @override
  PaymentTransactionAdminItemResponse createdAt(DateTime? createdAt) =>
      call(createdAt: createdAt);

  @override
  PaymentTransactionAdminItemResponse updatedAt(DateTime? updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PaymentTransactionAdminItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PaymentTransactionAdminItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PaymentTransactionAdminItemResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? orderCode = const $CopyWithPlaceholder(),
    Object? method = const $CopyWithPlaceholder(),
    Object? transactionType = const $CopyWithPlaceholder(),
    Object? transactionStatus = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? gatewayTransactionNo = const $CopyWithPlaceholder(),
    Object? failureReason = const $CopyWithPlaceholder(),
    Object? originalPaymentId = const $CopyWithPlaceholder(),
    Object? retryAttempt = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return PaymentTransactionAdminItemResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String?,
      orderCode: orderCode == const $CopyWithPlaceholder() || orderCode == null
          ? _value.orderCode
          // ignore: cast_nullable_to_non_nullable
          : orderCode as String,
      method: method == const $CopyWithPlaceholder()
          ? _value.method
          // ignore: cast_nullable_to_non_nullable
          : method as PaymentMethod?,
      transactionType: transactionType == const $CopyWithPlaceholder()
          ? _value.transactionType
          // ignore: cast_nullable_to_non_nullable
          : transactionType as TransactionType?,
      transactionStatus: transactionStatus == const $CopyWithPlaceholder()
          ? _value.transactionStatus
          // ignore: cast_nullable_to_non_nullable
          : transactionStatus as TransactionStatus?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as num?,
      gatewayTransactionNo: gatewayTransactionNo == const $CopyWithPlaceholder()
          ? _value.gatewayTransactionNo
          // ignore: cast_nullable_to_non_nullable
          : gatewayTransactionNo as String?,
      failureReason: failureReason == const $CopyWithPlaceholder()
          ? _value.failureReason
          // ignore: cast_nullable_to_non_nullable
          : failureReason as String?,
      originalPaymentId: originalPaymentId == const $CopyWithPlaceholder()
          ? _value.originalPaymentId
          // ignore: cast_nullable_to_non_nullable
          : originalPaymentId as String?,
      retryAttempt: retryAttempt == const $CopyWithPlaceholder()
          ? _value.retryAttempt
          // ignore: cast_nullable_to_non_nullable
          : retryAttempt as int?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
    );
  }
}

extension $PaymentTransactionAdminItemResponseCopyWith
    on PaymentTransactionAdminItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPaymentTransactionAdminItemResponse.copyWith(...)` or `instanceOfPaymentTransactionAdminItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PaymentTransactionAdminItemResponseCWProxy get copyWith =>
      _$PaymentTransactionAdminItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentTransactionAdminItemResponse
_$PaymentTransactionAdminItemResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaymentTransactionAdminItemResponse', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['orderCode']);
      final val = PaymentTransactionAdminItemResponse(
        id: $checkedConvert('id', (v) => v as String?),
        orderId: $checkedConvert('orderId', (v) => v as String?),
        orderCode: $checkedConvert('orderCode', (v) => v as String),
        method: $checkedConvert(
          'method',
          (v) => $enumDecodeNullable(_$PaymentMethodEnumMap, v),
        ),
        transactionType: $checkedConvert(
          'transactionType',
          (v) => $enumDecodeNullable(_$TransactionTypeEnumMap, v),
        ),
        transactionStatus: $checkedConvert(
          'transactionStatus',
          (v) => $enumDecodeNullable(_$TransactionStatusEnumMap, v),
        ),
        amount: $checkedConvert('amount', (v) => v as num?),
        gatewayTransactionNo: $checkedConvert(
          'gatewayTransactionNo',
          (v) => v as String?,
        ),
        failureReason: $checkedConvert('failureReason', (v) => v as String?),
        originalPaymentId: $checkedConvert(
          'originalPaymentId',
          (v) => v as String?,
        ),
        retryAttempt: $checkedConvert(
          'retryAttempt',
          (v) => (v as num?)?.toInt(),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PaymentTransactionAdminItemResponseToJson(
  PaymentTransactionAdminItemResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'orderId': ?instance.orderId,
  'orderCode': instance.orderCode,
  'method': ?_$PaymentMethodEnumMap[instance.method],
  'transactionType': ?_$TransactionTypeEnumMap[instance.transactionType],
  'transactionStatus': ?_$TransactionStatusEnumMap[instance.transactionStatus],
  'amount': ?instance.amount,
  'gatewayTransactionNo': ?instance.gatewayTransactionNo,
  'failureReason': ?instance.failureReason,
  'originalPaymentId': ?instance.originalPaymentId,
  'retryAttempt': ?instance.retryAttempt,
  'createdAt': ?instance.createdAt?.toIso8601String(),
  'updatedAt': ?instance.updatedAt?.toIso8601String(),
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cashOnDelivery: 'CashOnDelivery',
  PaymentMethod.vnPay: 'VnPay',
  PaymentMethod.momo: 'Momo',
  PaymentMethod.cashInStore: 'CashInStore',
  PaymentMethod.externalBankTransfer: 'ExternalBankTransfer',
  PaymentMethod.payOs: 'PayOs',
};

const _$TransactionTypeEnumMap = {
  TransactionType.payment: 'Payment',
  TransactionType.refund: 'Refund',
};

const _$TransactionStatusEnumMap = {
  TransactionStatus.pending: 'Pending',
  TransactionStatus.success: 'Success',
  TransactionStatus.failed: 'Failed',
  TransactionStatus.cancelled: 'Cancelled',
};
