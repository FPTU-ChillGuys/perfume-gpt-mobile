// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_flow_ledger_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CashFlowLedgerItemResponseCWProxy {
  CashFlowLedgerItemResponse id(String? id);

  CashFlowLedgerItemResponse transactionDate(DateTime? transactionDate);

  CashFlowLedgerItemResponse amount(num? amount);

  CashFlowLedgerItemResponse flowType(CashFlowType? flowType);

  CashFlowLedgerItemResponse category(CashFlowCategory? category);

  CashFlowLedgerItemResponse referenceId(String? referenceId);

  CashFlowLedgerItemResponse referenceCode(String? referenceCode);

  CashFlowLedgerItemResponse description(String? description);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CashFlowLedgerItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CashFlowLedgerItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CashFlowLedgerItemResponse call({
    String? id,
    DateTime? transactionDate,
    num? amount,
    CashFlowType? flowType,
    CashFlowCategory? category,
    String? referenceId,
    String? referenceCode,
    String? description,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCashFlowLedgerItemResponse.copyWith(...)` or call `instanceOfCashFlowLedgerItemResponse.copyWith.fieldName(value)` for a single field.
class _$CashFlowLedgerItemResponseCWProxyImpl
    implements _$CashFlowLedgerItemResponseCWProxy {
  const _$CashFlowLedgerItemResponseCWProxyImpl(this._value);

  final CashFlowLedgerItemResponse _value;

  @override
  CashFlowLedgerItemResponse id(String? id) => call(id: id);

  @override
  CashFlowLedgerItemResponse transactionDate(DateTime? transactionDate) =>
      call(transactionDate: transactionDate);

  @override
  CashFlowLedgerItemResponse amount(num? amount) => call(amount: amount);

  @override
  CashFlowLedgerItemResponse flowType(CashFlowType? flowType) =>
      call(flowType: flowType);

  @override
  CashFlowLedgerItemResponse category(CashFlowCategory? category) =>
      call(category: category);

  @override
  CashFlowLedgerItemResponse referenceId(String? referenceId) =>
      call(referenceId: referenceId);

  @override
  CashFlowLedgerItemResponse referenceCode(String? referenceCode) =>
      call(referenceCode: referenceCode);

  @override
  CashFlowLedgerItemResponse description(String? description) =>
      call(description: description);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CashFlowLedgerItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CashFlowLedgerItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CashFlowLedgerItemResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? transactionDate = const $CopyWithPlaceholder(),
    Object? amount = const $CopyWithPlaceholder(),
    Object? flowType = const $CopyWithPlaceholder(),
    Object? category = const $CopyWithPlaceholder(),
    Object? referenceId = const $CopyWithPlaceholder(),
    Object? referenceCode = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
  }) {
    return CashFlowLedgerItemResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      transactionDate: transactionDate == const $CopyWithPlaceholder()
          ? _value.transactionDate
          // ignore: cast_nullable_to_non_nullable
          : transactionDate as DateTime?,
      amount: amount == const $CopyWithPlaceholder()
          ? _value.amount
          // ignore: cast_nullable_to_non_nullable
          : amount as num?,
      flowType: flowType == const $CopyWithPlaceholder()
          ? _value.flowType
          // ignore: cast_nullable_to_non_nullable
          : flowType as CashFlowType?,
      category: category == const $CopyWithPlaceholder()
          ? _value.category
          // ignore: cast_nullable_to_non_nullable
          : category as CashFlowCategory?,
      referenceId: referenceId == const $CopyWithPlaceholder()
          ? _value.referenceId
          // ignore: cast_nullable_to_non_nullable
          : referenceId as String?,
      referenceCode: referenceCode == const $CopyWithPlaceholder()
          ? _value.referenceCode
          // ignore: cast_nullable_to_non_nullable
          : referenceCode as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
    );
  }
}

extension $CashFlowLedgerItemResponseCopyWith on CashFlowLedgerItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCashFlowLedgerItemResponse.copyWith(...)` or `instanceOfCashFlowLedgerItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CashFlowLedgerItemResponseCWProxy get copyWith =>
      _$CashFlowLedgerItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashFlowLedgerItemResponse _$CashFlowLedgerItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CashFlowLedgerItemResponse', json, ($checkedConvert) {
  final val = CashFlowLedgerItemResponse(
    id: $checkedConvert('id', (v) => v as String?),
    transactionDate: $checkedConvert(
      'transactionDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    amount: $checkedConvert('amount', (v) => v as num?),
    flowType: $checkedConvert(
      'flowType',
      (v) => $enumDecodeNullable(_$CashFlowTypeEnumMap, v),
    ),
    category: $checkedConvert(
      'category',
      (v) => $enumDecodeNullable(_$CashFlowCategoryEnumMap, v),
    ),
    referenceId: $checkedConvert('referenceId', (v) => v as String?),
    referenceCode: $checkedConvert('referenceCode', (v) => v as String?),
    description: $checkedConvert('description', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CashFlowLedgerItemResponseToJson(
  CashFlowLedgerItemResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'transactionDate': ?instance.transactionDate?.toIso8601String(),
  'amount': ?instance.amount,
  'flowType': ?_$CashFlowTypeEnumMap[instance.flowType],
  'category': ?_$CashFlowCategoryEnumMap[instance.category],
  'referenceId': ?instance.referenceId,
  'referenceCode': ?instance.referenceCode,
  'description': ?instance.description,
};

const _$CashFlowTypeEnumMap = {
  CashFlowType.in_: 'In',
  CashFlowType.out_: 'Out',
};

const _$CashFlowCategoryEnumMap = {
  CashFlowCategory.orderPayment: 'OrderPayment',
  CashFlowCategory.refund: 'Refund',
  CashFlowCategory.shippingFeeToGHN: 'ShippingFeeToGHN',
  CashFlowCategory.supplierPayment: 'SupplierPayment',
};
