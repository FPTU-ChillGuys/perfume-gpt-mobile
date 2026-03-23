// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_stock_adjustment_status_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateStockAdjustmentStatusRequestCWProxy {
  UpdateStockAdjustmentStatusRequest status(StockAdjustmentStatus? status);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateStockAdjustmentStatusRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateStockAdjustmentStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateStockAdjustmentStatusRequest call({StockAdjustmentStatus? status});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateStockAdjustmentStatusRequest.copyWith(...)` or call `instanceOfUpdateStockAdjustmentStatusRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateStockAdjustmentStatusRequestCWProxyImpl
    implements _$UpdateStockAdjustmentStatusRequestCWProxy {
  const _$UpdateStockAdjustmentStatusRequestCWProxyImpl(this._value);

  final UpdateStockAdjustmentStatusRequest _value;

  @override
  UpdateStockAdjustmentStatusRequest status(StockAdjustmentStatus? status) =>
      call(status: status);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateStockAdjustmentStatusRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateStockAdjustmentStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateStockAdjustmentStatusRequest.copyWith(...)` or `instanceOfUpdateStockAdjustmentStatusRequest.copyWith.fieldName(...)`.
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
