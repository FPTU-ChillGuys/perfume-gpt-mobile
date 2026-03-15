// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_adjustment_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StockAdjustmentListItemCWProxy {
  StockAdjustmentListItem id(String? id);

  StockAdjustmentListItem createdByName(String? createdByName);

  StockAdjustmentListItem adjustmentDate(DateTime? adjustmentDate);

  StockAdjustmentListItem reason(StockAdjustmentReason? reason);

  StockAdjustmentListItem status(StockAdjustmentStatus? status);

  StockAdjustmentListItem totalItems(int? totalItems);

  StockAdjustmentListItem createdAt(DateTime? createdAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StockAdjustmentListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StockAdjustmentListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  StockAdjustmentListItem call({
    String? id,
    String? createdByName,
    DateTime? adjustmentDate,
    StockAdjustmentReason? reason,
    StockAdjustmentStatus? status,
    int? totalItems,
    DateTime? createdAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStockAdjustmentListItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStockAdjustmentListItem.copyWith.fieldName(...)`
class _$StockAdjustmentListItemCWProxyImpl
    implements _$StockAdjustmentListItemCWProxy {
  const _$StockAdjustmentListItemCWProxyImpl(this._value);

  final StockAdjustmentListItem _value;

  @override
  StockAdjustmentListItem id(String? id) => this(id: id);

  @override
  StockAdjustmentListItem createdByName(String? createdByName) =>
      this(createdByName: createdByName);

  @override
  StockAdjustmentListItem adjustmentDate(DateTime? adjustmentDate) =>
      this(adjustmentDate: adjustmentDate);

  @override
  StockAdjustmentListItem reason(StockAdjustmentReason? reason) =>
      this(reason: reason);

  @override
  StockAdjustmentListItem status(StockAdjustmentStatus? status) =>
      this(status: status);

  @override
  StockAdjustmentListItem totalItems(int? totalItems) =>
      this(totalItems: totalItems);

  @override
  StockAdjustmentListItem createdAt(DateTime? createdAt) =>
      this(createdAt: createdAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StockAdjustmentListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StockAdjustmentListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  StockAdjustmentListItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdByName = const $CopyWithPlaceholder(),
    Object? adjustmentDate = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? totalItems = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return StockAdjustmentListItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      createdByName: createdByName == const $CopyWithPlaceholder()
          ? _value.createdByName
          // ignore: cast_nullable_to_non_nullable
          : createdByName as String?,
      adjustmentDate: adjustmentDate == const $CopyWithPlaceholder()
          ? _value.adjustmentDate
          // ignore: cast_nullable_to_non_nullable
          : adjustmentDate as DateTime?,
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as StockAdjustmentReason?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as StockAdjustmentStatus?,
      totalItems: totalItems == const $CopyWithPlaceholder()
          ? _value.totalItems
          // ignore: cast_nullable_to_non_nullable
          : totalItems as int?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
    );
  }
}

extension $StockAdjustmentListItemCopyWith on StockAdjustmentListItem {
  /// Returns a callable class that can be used as follows: `instanceOfStockAdjustmentListItem.copyWith(...)` or like so:`instanceOfStockAdjustmentListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StockAdjustmentListItemCWProxy get copyWith =>
      _$StockAdjustmentListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockAdjustmentListItem _$StockAdjustmentListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('StockAdjustmentListItem', json, ($checkedConvert) {
  final val = StockAdjustmentListItem(
    id: $checkedConvert('id', (v) => v as String?),
    createdByName: $checkedConvert('createdByName', (v) => v as String?),
    adjustmentDate: $checkedConvert(
      'adjustmentDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    reason: $checkedConvert(
      'reason',
      (v) => $enumDecodeNullable(_$StockAdjustmentReasonEnumMap, v),
    ),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$StockAdjustmentStatusEnumMap, v),
    ),
    totalItems: $checkedConvert('totalItems', (v) => (v as num?)?.toInt()),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$StockAdjustmentListItemToJson(
  StockAdjustmentListItem instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'createdByName': ?instance.createdByName,
  'adjustmentDate': ?instance.adjustmentDate?.toIso8601String(),
  'reason': ?_$StockAdjustmentReasonEnumMap[instance.reason],
  'status': ?_$StockAdjustmentStatusEnumMap[instance.status],
  'totalItems': ?instance.totalItems,
  'createdAt': ?instance.createdAt?.toIso8601String(),
};

const _$StockAdjustmentReasonEnumMap = {
  StockAdjustmentReason.damage: 'Damage',
  StockAdjustmentReason.expired: 'Expired',
  StockAdjustmentReason.theft: 'Theft',
  StockAdjustmentReason.loss: 'Loss',
  StockAdjustmentReason.found: 'Found',
  StockAdjustmentReason.correction: 'Correction',
  StockAdjustmentReason.return_: 'Return',
  StockAdjustmentReason.other: 'Other',
};

const _$StockAdjustmentStatusEnumMap = {
  StockAdjustmentStatus.pending: 'Pending',
  StockAdjustmentStatus.inProgress: 'InProgress',
  StockAdjustmentStatus.completed: 'Completed',
  StockAdjustmentStatus.canceled: 'Canceled',
};
