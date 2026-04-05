// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_status_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateOrderStatusRequestCWProxy {
  UpdateOrderStatusRequest status(OrderStatus? status);

  UpdateOrderStatusRequest note(String? note);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateOrderStatusRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateOrderStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateOrderStatusRequest call({OrderStatus? status, String? note});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateOrderStatusRequest.copyWith(...)` or call `instanceOfUpdateOrderStatusRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateOrderStatusRequestCWProxyImpl
    implements _$UpdateOrderStatusRequestCWProxy {
  const _$UpdateOrderStatusRequestCWProxyImpl(this._value);

  final UpdateOrderStatusRequest _value;

  @override
  UpdateOrderStatusRequest status(OrderStatus? status) => call(status: status);

  @override
  UpdateOrderStatusRequest note(String? note) => call(note: note);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateOrderStatusRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateOrderStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateOrderStatusRequest call({
    Object? status = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
  }) {
    return UpdateOrderStatusRequest(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as OrderStatus?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
    );
  }
}

extension $UpdateOrderStatusRequestCopyWith on UpdateOrderStatusRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateOrderStatusRequest.copyWith(...)` or `instanceOfUpdateOrderStatusRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateOrderStatusRequestCWProxy get copyWith =>
      _$UpdateOrderStatusRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOrderStatusRequest _$UpdateOrderStatusRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateOrderStatusRequest', json, ($checkedConvert) {
  final val = UpdateOrderStatusRequest(
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$OrderStatusEnumMap, v),
    ),
    note: $checkedConvert('note', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$UpdateOrderStatusRequestToJson(
  UpdateOrderStatusRequest instance,
) => <String, dynamic>{
  'status': ?_$OrderStatusEnumMap[instance.status],
  'note': ?instance.note,
};

const _$OrderStatusEnumMap = {
  OrderStatus.pending: 'Pending',
  OrderStatus.processing: 'Processing',
  OrderStatus.delivering: 'Delivering',
  OrderStatus.delivered: 'Delivered',
  OrderStatus.returning: 'Returning',
  OrderStatus.cancelled: 'Cancelled',
  OrderStatus.partialReturned: 'Partial_Returned',
  OrderStatus.returned: 'Returned',
};
