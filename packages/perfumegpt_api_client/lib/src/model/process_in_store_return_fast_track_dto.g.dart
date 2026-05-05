// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_in_store_return_fast_track_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProcessInStoreReturnFastTrackDtoCWProxy {
  ProcessInStoreReturnFastTrackDto orderId(String orderId);

  ProcessInStoreReturnFastTrackDto orderCode(String orderCode);

  ProcessInStoreReturnFastTrackDto reason(ReturnOrderReason reason);

  ProcessInStoreReturnFastTrackDto isRefundOnly(bool? isRefundOnly);

  ProcessInStoreReturnFastTrackDto returnItems(List<ReturnItemDto> returnItems);

  ProcessInStoreReturnFastTrackDto approvedRefundAmount(
    num? approvedRefundAmount,
  );

  ProcessInStoreReturnFastTrackDto isRestocked(bool? isRestocked);

  ProcessInStoreReturnFastTrackDto inspectionNote(String? inspectionNote);

  ProcessInStoreReturnFastTrackDto customerNote(String? customerNote);

  ProcessInStoreReturnFastTrackDto refundBankName(String? refundBankName);

  ProcessInStoreReturnFastTrackDto refundAccountNumber(
    String? refundAccountNumber,
  );

  ProcessInStoreReturnFastTrackDto refundAccountName(String? refundAccountName);

  ProcessInStoreReturnFastTrackDto temporaryMediaIds(
    List<String>? temporaryMediaIds,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProcessInStoreReturnFastTrackDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProcessInStoreReturnFastTrackDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ProcessInStoreReturnFastTrackDto call({
    String orderId,
    String orderCode,
    ReturnOrderReason reason,
    bool? isRefundOnly,
    List<ReturnItemDto> returnItems,
    num? approvedRefundAmount,
    bool? isRestocked,
    String? inspectionNote,
    String? customerNote,
    String? refundBankName,
    String? refundAccountNumber,
    String? refundAccountName,
    List<String>? temporaryMediaIds,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProcessInStoreReturnFastTrackDto.copyWith(...)` or call `instanceOfProcessInStoreReturnFastTrackDto.copyWith.fieldName(value)` for a single field.
class _$ProcessInStoreReturnFastTrackDtoCWProxyImpl
    implements _$ProcessInStoreReturnFastTrackDtoCWProxy {
  const _$ProcessInStoreReturnFastTrackDtoCWProxyImpl(this._value);

  final ProcessInStoreReturnFastTrackDto _value;

  @override
  ProcessInStoreReturnFastTrackDto orderId(String orderId) =>
      call(orderId: orderId);

  @override
  ProcessInStoreReturnFastTrackDto orderCode(String orderCode) =>
      call(orderCode: orderCode);

  @override
  ProcessInStoreReturnFastTrackDto reason(ReturnOrderReason reason) =>
      call(reason: reason);

  @override
  ProcessInStoreReturnFastTrackDto isRefundOnly(bool? isRefundOnly) =>
      call(isRefundOnly: isRefundOnly);

  @override
  ProcessInStoreReturnFastTrackDto returnItems(
    List<ReturnItemDto> returnItems,
  ) => call(returnItems: returnItems);

  @override
  ProcessInStoreReturnFastTrackDto approvedRefundAmount(
    num? approvedRefundAmount,
  ) => call(approvedRefundAmount: approvedRefundAmount);

  @override
  ProcessInStoreReturnFastTrackDto isRestocked(bool? isRestocked) =>
      call(isRestocked: isRestocked);

  @override
  ProcessInStoreReturnFastTrackDto inspectionNote(String? inspectionNote) =>
      call(inspectionNote: inspectionNote);

  @override
  ProcessInStoreReturnFastTrackDto customerNote(String? customerNote) =>
      call(customerNote: customerNote);

  @override
  ProcessInStoreReturnFastTrackDto refundBankName(String? refundBankName) =>
      call(refundBankName: refundBankName);

  @override
  ProcessInStoreReturnFastTrackDto refundAccountNumber(
    String? refundAccountNumber,
  ) => call(refundAccountNumber: refundAccountNumber);

  @override
  ProcessInStoreReturnFastTrackDto refundAccountName(
    String? refundAccountName,
  ) => call(refundAccountName: refundAccountName);

  @override
  ProcessInStoreReturnFastTrackDto temporaryMediaIds(
    List<String>? temporaryMediaIds,
  ) => call(temporaryMediaIds: temporaryMediaIds);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProcessInStoreReturnFastTrackDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProcessInStoreReturnFastTrackDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ProcessInStoreReturnFastTrackDto call({
    Object? orderId = const $CopyWithPlaceholder(),
    Object? orderCode = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
    Object? isRefundOnly = const $CopyWithPlaceholder(),
    Object? returnItems = const $CopyWithPlaceholder(),
    Object? approvedRefundAmount = const $CopyWithPlaceholder(),
    Object? isRestocked = const $CopyWithPlaceholder(),
    Object? inspectionNote = const $CopyWithPlaceholder(),
    Object? customerNote = const $CopyWithPlaceholder(),
    Object? refundBankName = const $CopyWithPlaceholder(),
    Object? refundAccountNumber = const $CopyWithPlaceholder(),
    Object? refundAccountName = const $CopyWithPlaceholder(),
    Object? temporaryMediaIds = const $CopyWithPlaceholder(),
  }) {
    return ProcessInStoreReturnFastTrackDto(
      orderId: orderId == const $CopyWithPlaceholder() || orderId == null
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String,
      orderCode: orderCode == const $CopyWithPlaceholder() || orderCode == null
          ? _value.orderCode
          // ignore: cast_nullable_to_non_nullable
          : orderCode as String,
      reason: reason == const $CopyWithPlaceholder() || reason == null
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as ReturnOrderReason,
      isRefundOnly: isRefundOnly == const $CopyWithPlaceholder()
          ? _value.isRefundOnly
          // ignore: cast_nullable_to_non_nullable
          : isRefundOnly as bool?,
      returnItems:
          returnItems == const $CopyWithPlaceholder() || returnItems == null
          ? _value.returnItems
          // ignore: cast_nullable_to_non_nullable
          : returnItems as List<ReturnItemDto>,
      approvedRefundAmount: approvedRefundAmount == const $CopyWithPlaceholder()
          ? _value.approvedRefundAmount
          // ignore: cast_nullable_to_non_nullable
          : approvedRefundAmount as num?,
      isRestocked: isRestocked == const $CopyWithPlaceholder()
          ? _value.isRestocked
          // ignore: cast_nullable_to_non_nullable
          : isRestocked as bool?,
      inspectionNote: inspectionNote == const $CopyWithPlaceholder()
          ? _value.inspectionNote
          // ignore: cast_nullable_to_non_nullable
          : inspectionNote as String?,
      customerNote: customerNote == const $CopyWithPlaceholder()
          ? _value.customerNote
          // ignore: cast_nullable_to_non_nullable
          : customerNote as String?,
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
      temporaryMediaIds: temporaryMediaIds == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIds
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIds as List<String>?,
    );
  }
}

extension $ProcessInStoreReturnFastTrackDtoCopyWith
    on ProcessInStoreReturnFastTrackDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProcessInStoreReturnFastTrackDto.copyWith(...)` or `instanceOfProcessInStoreReturnFastTrackDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProcessInStoreReturnFastTrackDtoCWProxy get copyWith =>
      _$ProcessInStoreReturnFastTrackDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProcessInStoreReturnFastTrackDto _$ProcessInStoreReturnFastTrackDtoFromJson(
  Map<String, dynamic> json,
) =>
    $checkedCreate('ProcessInStoreReturnFastTrackDto', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['orderId', 'orderCode', 'reason', 'returnItems'],
      );
      final val = ProcessInStoreReturnFastTrackDto(
        orderId: $checkedConvert('orderId', (v) => v as String),
        orderCode: $checkedConvert('orderCode', (v) => v as String),
        reason: $checkedConvert(
          'reason',
          (v) => $enumDecode(_$ReturnOrderReasonEnumMap, v),
        ),
        isRefundOnly: $checkedConvert('isRefundOnly', (v) => v as bool?),
        returnItems: $checkedConvert(
          'returnItems',
          (v) => (v as List<dynamic>)
              .map((e) => ReturnItemDto.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        approvedRefundAmount: $checkedConvert(
          'approvedRefundAmount',
          (v) => v as num?,
        ),
        isRestocked: $checkedConvert('isRestocked', (v) => v as bool?),
        inspectionNote: $checkedConvert('inspectionNote', (v) => v as String?),
        customerNote: $checkedConvert('customerNote', (v) => v as String?),
        refundBankName: $checkedConvert('refundBankName', (v) => v as String?),
        refundAccountNumber: $checkedConvert(
          'refundAccountNumber',
          (v) => v as String?,
        ),
        refundAccountName: $checkedConvert(
          'refundAccountName',
          (v) => v as String?,
        ),
        temporaryMediaIds: $checkedConvert(
          'temporaryMediaIds',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProcessInStoreReturnFastTrackDtoToJson(
  ProcessInStoreReturnFastTrackDto instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'orderCode': instance.orderCode,
  'reason': _$ReturnOrderReasonEnumMap[instance.reason]!,
  'isRefundOnly': ?instance.isRefundOnly,
  'returnItems': instance.returnItems.map((e) => e.toJson()).toList(),
  'approvedRefundAmount': ?instance.approvedRefundAmount,
  'isRestocked': ?instance.isRestocked,
  'inspectionNote': ?instance.inspectionNote,
  'customerNote': ?instance.customerNote,
  'refundBankName': ?instance.refundBankName,
  'refundAccountNumber': ?instance.refundAccountNumber,
  'refundAccountName': ?instance.refundAccountName,
  'temporaryMediaIds': ?instance.temporaryMediaIds,
};

const _$ReturnOrderReasonEnumMap = {
  ReturnOrderReason.damagedProduct: 'DamagedProduct',
  ReturnOrderReason.wrongItemReceived: 'WrongItemReceived',
  ReturnOrderReason.itemNotAsDescribed: 'ItemNotAsDescribed',
  ReturnOrderReason.changedMind: 'ChangedMind',
  ReturnOrderReason.allergicReaction: 'AllergicReaction',
  ReturnOrderReason.insufficientStock: 'InsufficientStock',
  ReturnOrderReason.returnPeriodExpired: 'ReturnPeriodExpired',
  ReturnOrderReason.productUsedOrUnsealed: 'ProductUsedOrUnsealed',
  ReturnOrderReason.customerDamage: 'CustomerDamage',
  ReturnOrderReason.insufficientEvidence: 'InsufficientEvidence',
  ReturnOrderReason.missingAccessories: 'MissingAccessories',
  ReturnOrderReason.nonReturnableItem: 'NonReturnableItem',
  ReturnOrderReason.suspectedFraud: 'SuspectedFraud',
  ReturnOrderReason.other: 'Other',
};
