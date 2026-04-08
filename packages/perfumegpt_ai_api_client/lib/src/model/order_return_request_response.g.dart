// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_return_request_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderReturnRequestResponseCWProxy {
  OrderReturnRequestResponse id(String? id);

  OrderReturnRequestResponse orderId(String? orderId);

  OrderReturnRequestResponse orderCode(String orderCode);

  OrderReturnRequestResponse customerId(String? customerId);

  OrderReturnRequestResponse customerEmail(String? customerEmail);

  OrderReturnRequestResponse processedById(String? processedById);

  OrderReturnRequestResponse processedByName(String? processedByName);

  OrderReturnRequestResponse inspectedById(String? inspectedById);

  OrderReturnRequestResponse inspectedByName(String? inspectedByName);

  OrderReturnRequestResponse reason(String reason);

  OrderReturnRequestResponse customerNote(String? customerNote);

  OrderReturnRequestResponse staffNote(String? staffNote);

  OrderReturnRequestResponse inspectionNote(String? inspectionNote);

  OrderReturnRequestResponse status(ReturnRequestStatus? status);

  OrderReturnRequestResponse requestedRefundAmount(num? requestedRefundAmount);

  OrderReturnRequestResponse approvedRefundAmount(num? approvedRefundAmount);

  OrderReturnRequestResponse isRefunded(bool? isRefunded);

  OrderReturnRequestResponse isRefundOnly(bool? isRefundOnly);

  OrderReturnRequestResponse refundBankName(String? refundBankName);

  OrderReturnRequestResponse refundAccountName(String? refundAccountName);

  OrderReturnRequestResponse refundAccountNumber(String? refundAccountNumber);

  OrderReturnRequestResponse vnpTransactionNo(String? vnpTransactionNo);

  OrderReturnRequestResponse isRestocked(bool? isRestocked);

  OrderReturnRequestResponse returnShippingInfo(
    ReturnShippingInfoResponse? returnShippingInfo,
  );

  OrderReturnRequestResponse returnDetails(
    List<OrderReturnRequestDetailResponse>? returnDetails,
  );

  OrderReturnRequestResponse proofImages(List<MediaResponse>? proofImages);

  OrderReturnRequestResponse createdAt(DateTime? createdAt);

  OrderReturnRequestResponse updatedAt(DateTime? updatedAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderReturnRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderReturnRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderReturnRequestResponse call({
    String? id,
    String? orderId,
    String orderCode,
    String? customerId,
    String? customerEmail,
    String? processedById,
    String? processedByName,
    String? inspectedById,
    String? inspectedByName,
    String reason,
    String? customerNote,
    String? staffNote,
    String? inspectionNote,
    ReturnRequestStatus? status,
    num? requestedRefundAmount,
    num? approvedRefundAmount,
    bool? isRefunded,
    bool? isRefundOnly,
    String? refundBankName,
    String? refundAccountName,
    String? refundAccountNumber,
    String? vnpTransactionNo,
    bool? isRestocked,
    ReturnShippingInfoResponse? returnShippingInfo,
    List<OrderReturnRequestDetailResponse>? returnDetails,
    List<MediaResponse>? proofImages,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderReturnRequestResponse.copyWith(...)` or call `instanceOfOrderReturnRequestResponse.copyWith.fieldName(value)` for a single field.
class _$OrderReturnRequestResponseCWProxyImpl
    implements _$OrderReturnRequestResponseCWProxy {
  const _$OrderReturnRequestResponseCWProxyImpl(this._value);

  final OrderReturnRequestResponse _value;

  @override
  OrderReturnRequestResponse id(String? id) => call(id: id);

  @override
  OrderReturnRequestResponse orderId(String? orderId) => call(orderId: orderId);

  @override
  OrderReturnRequestResponse orderCode(String orderCode) =>
      call(orderCode: orderCode);

  @override
  OrderReturnRequestResponse customerId(String? customerId) =>
      call(customerId: customerId);

  @override
  OrderReturnRequestResponse customerEmail(String? customerEmail) =>
      call(customerEmail: customerEmail);

  @override
  OrderReturnRequestResponse processedById(String? processedById) =>
      call(processedById: processedById);

  @override
  OrderReturnRequestResponse processedByName(String? processedByName) =>
      call(processedByName: processedByName);

  @override
  OrderReturnRequestResponse inspectedById(String? inspectedById) =>
      call(inspectedById: inspectedById);

  @override
  OrderReturnRequestResponse inspectedByName(String? inspectedByName) =>
      call(inspectedByName: inspectedByName);

  @override
  OrderReturnRequestResponse reason(String reason) => call(reason: reason);

  @override
  OrderReturnRequestResponse customerNote(String? customerNote) =>
      call(customerNote: customerNote);

  @override
  OrderReturnRequestResponse staffNote(String? staffNote) =>
      call(staffNote: staffNote);

  @override
  OrderReturnRequestResponse inspectionNote(String? inspectionNote) =>
      call(inspectionNote: inspectionNote);

  @override
  OrderReturnRequestResponse status(ReturnRequestStatus? status) =>
      call(status: status);

  @override
  OrderReturnRequestResponse requestedRefundAmount(
    num? requestedRefundAmount,
  ) => call(requestedRefundAmount: requestedRefundAmount);

  @override
  OrderReturnRequestResponse approvedRefundAmount(num? approvedRefundAmount) =>
      call(approvedRefundAmount: approvedRefundAmount);

  @override
  OrderReturnRequestResponse isRefunded(bool? isRefunded) =>
      call(isRefunded: isRefunded);

  @override
  OrderReturnRequestResponse isRefundOnly(bool? isRefundOnly) =>
      call(isRefundOnly: isRefundOnly);

  @override
  OrderReturnRequestResponse refundBankName(String? refundBankName) =>
      call(refundBankName: refundBankName);

  @override
  OrderReturnRequestResponse refundAccountName(String? refundAccountName) =>
      call(refundAccountName: refundAccountName);

  @override
  OrderReturnRequestResponse refundAccountNumber(String? refundAccountNumber) =>
      call(refundAccountNumber: refundAccountNumber);

  @override
  OrderReturnRequestResponse vnpTransactionNo(String? vnpTransactionNo) =>
      call(vnpTransactionNo: vnpTransactionNo);

  @override
  OrderReturnRequestResponse isRestocked(bool? isRestocked) =>
      call(isRestocked: isRestocked);

  @override
  OrderReturnRequestResponse returnShippingInfo(
    ReturnShippingInfoResponse? returnShippingInfo,
  ) => call(returnShippingInfo: returnShippingInfo);

  @override
  OrderReturnRequestResponse returnDetails(
    List<OrderReturnRequestDetailResponse>? returnDetails,
  ) => call(returnDetails: returnDetails);

  @override
  OrderReturnRequestResponse proofImages(List<MediaResponse>? proofImages) =>
      call(proofImages: proofImages);

  @override
  OrderReturnRequestResponse createdAt(DateTime? createdAt) =>
      call(createdAt: createdAt);

  @override
  OrderReturnRequestResponse updatedAt(DateTime? updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderReturnRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderReturnRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderReturnRequestResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? orderCode = const $CopyWithPlaceholder(),
    Object? customerId = const $CopyWithPlaceholder(),
    Object? customerEmail = const $CopyWithPlaceholder(),
    Object? processedById = const $CopyWithPlaceholder(),
    Object? processedByName = const $CopyWithPlaceholder(),
    Object? inspectedById = const $CopyWithPlaceholder(),
    Object? inspectedByName = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
    Object? customerNote = const $CopyWithPlaceholder(),
    Object? staffNote = const $CopyWithPlaceholder(),
    Object? inspectionNote = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? requestedRefundAmount = const $CopyWithPlaceholder(),
    Object? approvedRefundAmount = const $CopyWithPlaceholder(),
    Object? isRefunded = const $CopyWithPlaceholder(),
    Object? isRefundOnly = const $CopyWithPlaceholder(),
    Object? refundBankName = const $CopyWithPlaceholder(),
    Object? refundAccountName = const $CopyWithPlaceholder(),
    Object? refundAccountNumber = const $CopyWithPlaceholder(),
    Object? vnpTransactionNo = const $CopyWithPlaceholder(),
    Object? isRestocked = const $CopyWithPlaceholder(),
    Object? returnShippingInfo = const $CopyWithPlaceholder(),
    Object? returnDetails = const $CopyWithPlaceholder(),
    Object? proofImages = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return OrderReturnRequestResponse(
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
      customerId: customerId == const $CopyWithPlaceholder()
          ? _value.customerId
          // ignore: cast_nullable_to_non_nullable
          : customerId as String?,
      customerEmail: customerEmail == const $CopyWithPlaceholder()
          ? _value.customerEmail
          // ignore: cast_nullable_to_non_nullable
          : customerEmail as String?,
      processedById: processedById == const $CopyWithPlaceholder()
          ? _value.processedById
          // ignore: cast_nullable_to_non_nullable
          : processedById as String?,
      processedByName: processedByName == const $CopyWithPlaceholder()
          ? _value.processedByName
          // ignore: cast_nullable_to_non_nullable
          : processedByName as String?,
      inspectedById: inspectedById == const $CopyWithPlaceholder()
          ? _value.inspectedById
          // ignore: cast_nullable_to_non_nullable
          : inspectedById as String?,
      inspectedByName: inspectedByName == const $CopyWithPlaceholder()
          ? _value.inspectedByName
          // ignore: cast_nullable_to_non_nullable
          : inspectedByName as String?,
      reason: reason == const $CopyWithPlaceholder() || reason == null
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as String,
      customerNote: customerNote == const $CopyWithPlaceholder()
          ? _value.customerNote
          // ignore: cast_nullable_to_non_nullable
          : customerNote as String?,
      staffNote: staffNote == const $CopyWithPlaceholder()
          ? _value.staffNote
          // ignore: cast_nullable_to_non_nullable
          : staffNote as String?,
      inspectionNote: inspectionNote == const $CopyWithPlaceholder()
          ? _value.inspectionNote
          // ignore: cast_nullable_to_non_nullable
          : inspectionNote as String?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ReturnRequestStatus?,
      requestedRefundAmount:
          requestedRefundAmount == const $CopyWithPlaceholder()
          ? _value.requestedRefundAmount
          // ignore: cast_nullable_to_non_nullable
          : requestedRefundAmount as num?,
      approvedRefundAmount: approvedRefundAmount == const $CopyWithPlaceholder()
          ? _value.approvedRefundAmount
          // ignore: cast_nullable_to_non_nullable
          : approvedRefundAmount as num?,
      isRefunded: isRefunded == const $CopyWithPlaceholder()
          ? _value.isRefunded
          // ignore: cast_nullable_to_non_nullable
          : isRefunded as bool?,
      isRefundOnly: isRefundOnly == const $CopyWithPlaceholder()
          ? _value.isRefundOnly
          // ignore: cast_nullable_to_non_nullable
          : isRefundOnly as bool?,
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
      isRestocked: isRestocked == const $CopyWithPlaceholder()
          ? _value.isRestocked
          // ignore: cast_nullable_to_non_nullable
          : isRestocked as bool?,
      returnShippingInfo: returnShippingInfo == const $CopyWithPlaceholder()
          ? _value.returnShippingInfo
          // ignore: cast_nullable_to_non_nullable
          : returnShippingInfo as ReturnShippingInfoResponse?,
      returnDetails: returnDetails == const $CopyWithPlaceholder()
          ? _value.returnDetails
          // ignore: cast_nullable_to_non_nullable
          : returnDetails as List<OrderReturnRequestDetailResponse>?,
      proofImages: proofImages == const $CopyWithPlaceholder()
          ? _value.proofImages
          // ignore: cast_nullable_to_non_nullable
          : proofImages as List<MediaResponse>?,
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

extension $OrderReturnRequestResponseCopyWith on OrderReturnRequestResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderReturnRequestResponse.copyWith(...)` or `instanceOfOrderReturnRequestResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderReturnRequestResponseCWProxy get copyWith =>
      _$OrderReturnRequestResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderReturnRequestResponse _$OrderReturnRequestResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OrderReturnRequestResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['orderCode', 'reason']);
  final val = OrderReturnRequestResponse(
    id: $checkedConvert('id', (v) => v as String?),
    orderId: $checkedConvert('orderId', (v) => v as String?),
    orderCode: $checkedConvert('orderCode', (v) => v as String),
    customerId: $checkedConvert('customerId', (v) => v as String?),
    customerEmail: $checkedConvert('customerEmail', (v) => v as String?),
    processedById: $checkedConvert('processedById', (v) => v as String?),
    processedByName: $checkedConvert('processedByName', (v) => v as String?),
    inspectedById: $checkedConvert('inspectedById', (v) => v as String?),
    inspectedByName: $checkedConvert('inspectedByName', (v) => v as String?),
    reason: $checkedConvert('reason', (v) => v as String),
    customerNote: $checkedConvert('customerNote', (v) => v as String?),
    staffNote: $checkedConvert('staffNote', (v) => v as String?),
    inspectionNote: $checkedConvert('inspectionNote', (v) => v as String?),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$ReturnRequestStatusEnumMap, v),
    ),
    requestedRefundAmount: $checkedConvert(
      'requestedRefundAmount',
      (v) => v as num?,
    ),
    approvedRefundAmount: $checkedConvert(
      'approvedRefundAmount',
      (v) => v as num?,
    ),
    isRefunded: $checkedConvert('isRefunded', (v) => v as bool?),
    isRefundOnly: $checkedConvert('isRefundOnly', (v) => v as bool?),
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
    isRestocked: $checkedConvert('isRestocked', (v) => v as bool?),
    returnShippingInfo: $checkedConvert(
      'returnShippingInfo',
      (v) => v == null
          ? null
          : ReturnShippingInfoResponse.fromJson(v as Map<String, dynamic>),
    ),
    returnDetails: $checkedConvert(
      'returnDetails',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => OrderReturnRequestDetailResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    proofImages: $checkedConvert(
      'proofImages',
      (v) => (v as List<dynamic>?)
          ?.map((e) => MediaResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
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

Map<String, dynamic> _$OrderReturnRequestResponseToJson(
  OrderReturnRequestResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'orderId': ?instance.orderId,
  'orderCode': instance.orderCode,
  'customerId': ?instance.customerId,
  'customerEmail': ?instance.customerEmail,
  'processedById': ?instance.processedById,
  'processedByName': ?instance.processedByName,
  'inspectedById': ?instance.inspectedById,
  'inspectedByName': ?instance.inspectedByName,
  'reason': instance.reason,
  'customerNote': ?instance.customerNote,
  'staffNote': ?instance.staffNote,
  'inspectionNote': ?instance.inspectionNote,
  'status': ?_$ReturnRequestStatusEnumMap[instance.status],
  'requestedRefundAmount': ?instance.requestedRefundAmount,
  'approvedRefundAmount': ?instance.approvedRefundAmount,
  'isRefunded': ?instance.isRefunded,
  'isRefundOnly': ?instance.isRefundOnly,
  'refundBankName': ?instance.refundBankName,
  'refundAccountName': ?instance.refundAccountName,
  'refundAccountNumber': ?instance.refundAccountNumber,
  'vnpTransactionNo': ?instance.vnpTransactionNo,
  'isRestocked': ?instance.isRestocked,
  'returnShippingInfo': ?instance.returnShippingInfo?.toJson(),
  'returnDetails': ?instance.returnDetails?.map((e) => e.toJson()).toList(),
  'proofImages': ?instance.proofImages?.map((e) => e.toJson()).toList(),
  'createdAt': ?instance.createdAt?.toIso8601String(),
  'updatedAt': ?instance.updatedAt?.toIso8601String(),
};

const _$ReturnRequestStatusEnumMap = {
  ReturnRequestStatus.pending: 'Pending',
  ReturnRequestStatus.approvedForReturn: 'ApprovedForReturn',
  ReturnRequestStatus.inspecting: 'Inspecting',
  ReturnRequestStatus.readyForRefund: 'ReadyForRefund',
  ReturnRequestStatus.completed: 'Completed',
  ReturnRequestStatus.rejected: 'Rejected',
  ReturnRequestStatus.requestMoreInfo: 'RequestMoreInfo',
};
