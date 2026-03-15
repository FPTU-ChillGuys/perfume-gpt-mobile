// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_stock_adjustment_status_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateStockAdjustmentStatusRequestCWProxy {
  UpdateStockAdjustmentStatusRequest status(StockAdjustmentStatus? status);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateStockAdjustmentStatusRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateStockAdjustmentStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateStockAdjustmentStatusRequest call({StockAdjustmentStatus? status});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateStockAdjustmentStatusRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateStockAdjustmentStatusRequest.copyWith.fieldName(...)`
class _$UpdateStockAdjustmentStatusRequestCWProxyImpl
    implements _$UpdateStockAdjustmentStatusRequestCWProxy {
  const _$UpdateStockAdjustmentStatusRequestCWProxyImpl(this._value);

  final UpdateStockAdjustmentStatusRequest _value;

  @override
  UpdateStockAdjustmentStatusRequest status(StockAdjustmentStatus? status) =>
      this(status: status);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateStockAdjustmentStatusRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateStockAdjustmentStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateStockAdjustmentStatusRequest call({
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return UpdateStockAdjustmentStatusRequest(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as StockAdjustmentStatus?,
    );
  }
}

extension $UpdateStockAdjustmentStatusRequestCopyWith
    on UpdateStockAdjustmentStatusRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateStockAdjustmentStatusRequest.copyWith(...)` or like so:`instanceOfUpdateStockAdjustmentStatusRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateStockAdjustmentStatusRequestCWProxy get copyWith =>
      _$UpdateStockAdjustmentStatusRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateStockAdjustmentStatusRequest _$UpdateStockAdjustmentStatusRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateStockAdjustmentStatusRequest', json, (
  $checkedConvert,
) {
  final val = UpdateStockAdjustmentStatusRequest(
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$StockAdjustmentStatusEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateStockAdjustmentStatusRequestToJson(
  UpdateStockAdjustmentStatusRequest instance,
) => <String, dynamic>{
  'status': ?_$StockAdjustmentStatusEnumMap[instance.status],
};

const _$StockAdjustmentStatusEnumMap = {
  StockAdjustmentStatus.pending: 'Pending',
  StockAdjustmentStatus.inProgress: 'InProgress',
  StockAdjustmentStatus.completed: 'Completed',
  StockAdjustmentStatus.canceled: 'Canceled',
};
