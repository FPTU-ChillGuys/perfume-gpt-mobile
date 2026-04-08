// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_cancel_request_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderCancelRequestResponseCWProxy {
  OrderCancelRequestResponse id(String? id);

  OrderCancelRequestResponse orderId(String? orderId);

  OrderCancelRequestResponse orderCode(String orderCode);

  OrderCancelRequestResponse requestedById(String? requestedById);

  OrderCancelRequestResponse requestedByEmail(String? requestedByEmail);

  OrderCancelRequestResponse processedById(String? processedById);

  OrderCancelRequestResponse reason(String reason);

  OrderCancelRequestResponse staffNote(String? staffNote);

  OrderCancelRequestResponse status(CancelRequestStatus? status);

  OrderCancelRequestResponse isRefundRequired(bool? isRefundRequired);

  OrderCancelRequestResponse refundAmount(num? refundAmount);

  OrderCancelRequestResponse isRefunded(bool? isRefunded);

  OrderCancelRequestResponse refundBankName(String? refundBankName);

  OrderCancelRequestResponse refundAccountName(String? refundAccountName);

  OrderCancelRequestResponse refundAccountNumber(String? refundAccountNumber);

  OrderCancelRequestResponse vnpTransactionNo(String? vnpTransactionNo);

  OrderCancelRequestResponse createdAt(DateTime? createdAt);

  OrderCancelRequestResponse updatedAt(DateTime? updatedAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderCancelRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderCancelRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderCancelRequestResponse call({
    String? id,
    String? orderId,
    String orderCode,
    String? requestedById,
    String? requestedByEmail,
    String? processedById,
    String reason,
    String? staffNote,
    CancelRequestStatus? status,
    bool? isRefundRequired,
    num? refundAmount,
    bool? isRefunded,
    String? refundBankName,
    String? refundAccountName,
    String? refundAccountNumber,
    String? vnpTransactionNo,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderCancelRequestResponse.copyWith(...)` or call `instanceOfOrderCancelRequestResponse.copyWith.fieldName(value)` for a single field.
class _$OrderCancelRequestResponseCWProxyImpl
    implements _$OrderCancelRequestResponseCWProxy {
  const _$OrderCancelRequestResponseCWProxyImpl(this._value);

  final OrderCancelRequestResponse _value;

  @override
  OrderCancelRequestResponse id(String? id) => call(id: id);

  @override
  OrderCancelRequestResponse orderId(String? orderId) => call(orderId: orderId);

  @override
  OrderCancelRequestResponse orderCode(String orderCode) =>
      call(orderCode: orderCode);

  @override
  OrderCancelRequestResponse requestedById(String? requestedById) =>
      call(requestedById: requestedById);

  @override
  OrderCancelRequestResponse requestedByEmail(String? requestedByEmail) =>
      call(requestedByEmail: requestedByEmail);

  @override
  OrderCancelRequestResponse processedById(String? processedById) =>
      call(processedById: processedById);

  @override
  OrderCancelRequestResponse reason(String reason) => call(reason: reason);

  @override
  OrderCancelRequestResponse staffNote(String? staffNote) =>
      call(staffNote: staffNote);

  @override
  OrderCancelRequestResponse status(CancelRequestStatus? status) =>
      call(status: status);

  @override
  OrderCancelRequestResponse isRefundRequired(bool? isRefundRequired) =>
      call(isRefundRequired: isRefundRequired);

  @override
  OrderCancelRequestResponse refundAmount(num? refundAmount) =>
      call(refundAmount: refundAmount);

  @override
  OrderCancelRequestResponse isRefunded(bool? isRefunded) =>
      call(isRefunded: isRefunded);

  @override
  OrderCancelRequestResponse refundBankName(String? refundBankName) =>
      call(refundBankName: refundBankName);

  @override
  OrderCancelRequestResponse refundAccountName(String? refundAccountName) =>
      call(refundAccountName: refundAccountName);

  @override
  OrderCancelRequestResponse refundAccountNumber(String? refundAccountNumber) =>
      call(refundAccountNumber: refundAccountNumber);

  @override
  OrderCancelRequestResponse vnpTransactionNo(String? vnpTransactionNo) =>
      call(vnpTransactionNo: vnpTransactionNo);

  @override
  OrderCancelRequestResponse createdAt(DateTime? createdAt) =>
      call(createdAt: createdAt);

  @override
  OrderCancelRequestResponse updatedAt(DateTime? updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderCancelRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderCancelRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderCancelRequestResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? orderCode = const $CopyWithPlaceholder(),
    Object? requestedById = const $CopyWithPlaceholder(),
    Object? requestedByEmail = const $CopyWithPlaceholder(),
    Object? processedById = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
    Object? staffNote = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? isRefundRequired = const $CopyWithPlaceholder(),
    Object? refundAmount = const $CopyWithPlaceholder(),
    Object? isRefunded = const $CopyWithPlaceholder(),
    Object? refundBankName = const $CopyWithPlaceholder(),
    Object? refundAccountName = const $CopyWithPlaceholder(),
    Object? refundAccountNumber = const $CopyWithPlaceholder(),
    Object? vnpTransactionNo = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return OrderCancelRequestResponse(
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
      requestedById: requestedById == const $CopyWithPlaceholder()
          ? _value.requestedById
          // ignore: cast_nullable_to_non_nullable
          : requestedById as String?,
      requestedByEmail: requestedByEmail == const $CopyWithPlaceholder()
          ? _value.requestedByEmail
          // ignore: cast_nullable_to_non_nullable
          : requestedByEmail as String?,
      processedById: processedById == const $CopyWithPlaceholder()
          ? _value.processedById
          // ignore: cast_nullable_to_non_nullable
          : processedById as String?,
      reason: reason == const $CopyWithPlaceholder() || reason == null
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as String,
      staffNote: staffNote == const $CopyWithPlaceholder()
          ? _value.staffNote
          // ignore: cast_nullable_to_non_nullable
          : staffNote as String?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as CancelRequestStatus?,
      isRefundRequired: isRefundRequired == const $CopyWithPlaceholder()
          ? _value.isRefundRequired
          // ignore: cast_nullable_to_non_nullable
          : isRefundRequired as bool?,
      refundAmount: refundAmount == const $CopyWithPlaceholder()
          ? _value.refundAmount
          // ignore: cast_nullable_to_non_nullable
          : refundAmount as num?,
      isRefunded: isRefunded == const $CopyWithPlaceholder()
          ? _value.isRefunded
          // ignore: cast_nullable_to_non_nullable
          : isRefunded as bool?,
      refundBankName: refundBankName == const $CopyWithPlaceholder()
          ? _value.refundBankName
          // ignore: cast_nullable_to_non_nullable
          : refundBankName as String?,
      refundAccountName: refundAccountName == const $CopyWithPlaceholder()
          ? _value.refundAccountName
          // ignore: cast_nullable_to_non_nullable
          : refundAccountName as String?,
      refundAccountNumber: refundAccountNumber == const $CopyWithPlaceholder()
          ? _value.refundAccountNumber
          // ignore: cast_nullable_to_non_nullable
          : refundAccountNumber as String?,
      vnpTransactionNo: vnpTransactionNo == const $CopyWithPlaceholder()
          ? _value.vnpTransactionNo
          // ignore: cast_nullable_to_non_nullable
          : vnpTransactionNo as String?,
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

extension $OrderCancelRequestResponseCopyWith on OrderCancelRequestResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderCancelRequestResponse.copyWith(...)` or `instanceOfOrderCancelRequestResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderCancelRequestResponseCWProxy get copyWith =>
      _$OrderCancelRequestResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCancelRequestResponse _$OrderCancelRequestResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OrderCancelRequestResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['orderCode', 'reason']);
  final val = OrderCancelRequestResponse(
    id: $checkedConvert('id', (v) => v as String?),
    orderId: $checkedConvert('orderId', (v) => v as String?),
    orderCode: $checkedConvert('orderCode', (v) => v as String),
    requestedById: $checkedConvert('requestedById', (v) => v as String?),
    requestedByEmail: $checkedConvert('requestedByEmail', (v) => v as String?),
    processedById: $checkedConvert('processedById', (v) => v as String?),
    reason: $checkedConvert('reason', (v) => v as String),
    staffNote: $checkedConvert('staffNote', (v) => v as String?),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$CancelRequestStatusEnumMap, v),
    ),
    isRefundRequired: $checkedConvert('isRefundRequired', (v) => v as bool?),
    refundAmount: $checkedConvert('refundAmount', (v) => v as num?),
    isRefunded: $checkedConvert('isRefunded', (v) => v as bool?),
    refundBankName: $checkedConvert('refundBankName', (v) => v as String?),
    refundAccountName: $checkedConvert(
      'refundAccountName',
      (v) => v as String?,
    ),
    refundAccountNumber: $checkedConvert(
      'refundAccountNumber',
      (v) => v as String?,
    ),
    vnpTransactionNo: $checkedConvert('vnpTransactionNo', (v) => v as String?),
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

Map<String, dynamic> _$OrderCancelRequestResponseToJson(
  OrderCancelRequestResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'orderId': ?instance.orderId,
  'orderCode': instance.orderCode,
  'requestedById': ?instance.requestedById,
  'requestedByEmail': ?instance.requestedByEmail,
  'processedById': ?instance.processedById,
  'reason': instance.reason,
  'staffNote': ?instance.staffNote,
  'status': ?_$CancelRequestStatusEnumMap[instance.status],
  'isRefundRequired': ?instance.isRefundRequired,
  'refundAmount': ?instance.refundAmount,
  'isRefunded': ?instance.isRefunded,
  'refundBankName': ?instance.refundBankName,
  'refundAccountName': ?instance.refundAccountName,
  'refundAccountNumber': ?instance.refundAccountNumber,
  'vnpTransactionNo': ?instance.vnpTransactionNo,
  'createdAt': ?instance.createdAt?.toIso8601String(),
  'updatedAt': ?instance.updatedAt?.toIso8601String(),
};

const _$CancelRequestStatusEnumMap = {
  CancelRequestStatus.pending: 'Pending',
  CancelRequestStatus.approved: 'Approved',
  CancelRequestStatus.rejected: 'Rejected',
};
