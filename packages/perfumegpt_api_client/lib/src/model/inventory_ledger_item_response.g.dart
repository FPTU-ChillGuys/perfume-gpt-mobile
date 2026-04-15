// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_ledger_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryLedgerItemResponseCWProxy {
  InventoryLedgerItemResponse id(String? id);

  InventoryLedgerItemResponse createdAt(DateTime? createdAt);

  InventoryLedgerItemResponse variantId(String? variantId);

  InventoryLedgerItemResponse batchId(String? batchId);

  InventoryLedgerItemResponse quantityChange(int? quantityChange);

  InventoryLedgerItemResponse balanceAfter(int? balanceAfter);

  InventoryLedgerItemResponse type(StockTransactionType? type);

  InventoryLedgerItemResponse referenceId(String? referenceId);

  InventoryLedgerItemResponse description(String? description);

  InventoryLedgerItemResponse actorId(String? actorId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryLedgerItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryLedgerItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryLedgerItemResponse call({
    String? id,
    DateTime? createdAt,
    String? variantId,
    String? batchId,
    int? quantityChange,
    int? balanceAfter,
    StockTransactionType? type,
    String? referenceId,
    String? description,
    String? actorId,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryLedgerItemResponse.copyWith(...)` or call `instanceOfInventoryLedgerItemResponse.copyWith.fieldName(value)` for a single field.
class _$InventoryLedgerItemResponseCWProxyImpl
    implements _$InventoryLedgerItemResponseCWProxy {
  const _$InventoryLedgerItemResponseCWProxyImpl(this._value);

  final InventoryLedgerItemResponse _value;

  @override
  InventoryLedgerItemResponse id(String? id) => call(id: id);

  @override
  InventoryLedgerItemResponse createdAt(DateTime? createdAt) =>
      call(createdAt: createdAt);

  @override
  InventoryLedgerItemResponse variantId(String? variantId) =>
      call(variantId: variantId);

  @override
  InventoryLedgerItemResponse batchId(String? batchId) =>
      call(batchId: batchId);

  @override
  InventoryLedgerItemResponse quantityChange(int? quantityChange) =>
      call(quantityChange: quantityChange);

  @override
  InventoryLedgerItemResponse balanceAfter(int? balanceAfter) =>
      call(balanceAfter: balanceAfter);

  @override
  InventoryLedgerItemResponse type(StockTransactionType? type) =>
      call(type: type);

  @override
  InventoryLedgerItemResponse referenceId(String? referenceId) =>
      call(referenceId: referenceId);

  @override
  InventoryLedgerItemResponse description(String? description) =>
      call(description: description);

  @override
  InventoryLedgerItemResponse actorId(String? actorId) =>
      call(actorId: actorId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryLedgerItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryLedgerItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryLedgerItemResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? batchId = const $CopyWithPlaceholder(),
    Object? quantityChange = const $CopyWithPlaceholder(),
    Object? balanceAfter = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? referenceId = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? actorId = const $CopyWithPlaceholder(),
  }) {
    return InventoryLedgerItemResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      batchId: batchId == const $CopyWithPlaceholder()
          ? _value.batchId
          // ignore: cast_nullable_to_non_nullable
          : batchId as String?,
      quantityChange: quantityChange == const $CopyWithPlaceholder()
          ? _value.quantityChange
          // ignore: cast_nullable_to_non_nullable
          : quantityChange as int?,
      balanceAfter: balanceAfter == const $CopyWithPlaceholder()
          ? _value.balanceAfter
          // ignore: cast_nullable_to_non_nullable
          : balanceAfter as int?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as StockTransactionType?,
      referenceId: referenceId == const $CopyWithPlaceholder()
          ? _value.referenceId
          // ignore: cast_nullable_to_non_nullable
          : referenceId as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      actorId: actorId == const $CopyWithPlaceholder()
          ? _value.actorId
          // ignore: cast_nullable_to_non_nullable
          : actorId as String?,
    );
  }
}

extension $InventoryLedgerItemResponseCopyWith on InventoryLedgerItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryLedgerItemResponse.copyWith(...)` or `instanceOfInventoryLedgerItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryLedgerItemResponseCWProxy get copyWith =>
      _$InventoryLedgerItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryLedgerItemResponse _$InventoryLedgerItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InventoryLedgerItemResponse', json, ($checkedConvert) {
  final val = InventoryLedgerItemResponse(
    id: $checkedConvert('id', (v) => v as String?),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    variantId: $checkedConvert('variantId', (v) => v as String?),
    batchId: $checkedConvert('batchId', (v) => v as String?),
    quantityChange: $checkedConvert(
      'quantityChange',
      (v) => (v as num?)?.toInt(),
    ),
    balanceAfter: $checkedConvert('balanceAfter', (v) => (v as num?)?.toInt()),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(_$StockTransactionTypeEnumMap, v),
    ),
    referenceId: $checkedConvert('referenceId', (v) => v as String?),
    description: $checkedConvert('description', (v) => v as String?),
    actorId: $checkedConvert('actorId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$InventoryLedgerItemResponseToJson(
  InventoryLedgerItemResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'createdAt': ?instance.createdAt?.toIso8601String(),
  'variantId': ?instance.variantId,
  'batchId': ?instance.batchId,
  'quantityChange': ?instance.quantityChange,
  'balanceAfter': ?instance.balanceAfter,
  'type': ?_$StockTransactionTypeEnumMap[instance.type],
  'referenceId': ?instance.referenceId,
  'description': ?instance.description,
  'actorId': ?instance.actorId,
};

const _$StockTransactionTypeEnumMap = {
  StockTransactionType.import_: 'Import',
  StockTransactionType.sales: 'Sales',
  StockTransactionType.adjustment: 'Adjustment',
};
