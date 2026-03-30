// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_stock_adjustment_status_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateStockAdjustmentStatusRequestCWProxy {
  UpdateStockAdjustmentStatusRequest status(StockAdjustmentStatus? status);

  UpdateStockAdjustmentStatusRequest note(String? note);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateStockAdjustmentStatusRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateStockAdjustmentStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateStockAdjustmentStatusRequest call({
    StockAdjustmentStatus? status,
    String? note,
  });
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
  UpdateStockAdjustmentStatusRequest note(String? note) => call(note: note);

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
    Object? note = const $CopyWithPlaceholder(),
  }) {
    return UpdateStockAdjustmentStatusRequest(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as StockAdjustmentStatus?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
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
    note: $checkedConvert('note', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$UpdateStockAdjustmentStatusRequestToJson(
  UpdateStockAdjustmentStatusRequest instance,
) => <String, dynamic>{
  'status': ?_$StockAdjustmentStatusEnumMap[instance.status],
  'note': ?instance.note,
};

const _$StockAdjustmentStatusEnumMap = {
  StockAdjustmentStatus.pending: 'Pending',
  StockAdjustmentStatus.inProgress: 'InProgress',
  StockAdjustmentStatus.completed: 'Completed',
  StockAdjustmentStatus.cancelled: 'Cancelled',
};
