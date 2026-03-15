// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_status_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateOrderStatusRequestCWProxy {
  UpdateOrderStatusRequest status(OrderStatus? status);

  UpdateOrderStatusRequest note(String? note);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateOrderStatusRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateOrderStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateOrderStatusRequest call({OrderStatus? status, String? note});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateOrderStatusRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateOrderStatusRequest.copyWith.fieldName(...)`
class _$UpdateOrderStatusRequestCWProxyImpl
    implements _$UpdateOrderStatusRequestCWProxy {
  const _$UpdateOrderStatusRequestCWProxyImpl(this._value);

  final UpdateOrderStatusRequest _value;

  @override
  UpdateOrderStatusRequest status(OrderStatus? status) => this(status: status);

  @override
  UpdateOrderStatusRequest note(String? note) => this(note: note);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateOrderStatusRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateOrderStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfUpdateOrderStatusRequest.copyWith(...)` or like so:`instanceOfUpdateOrderStatusRequest.copyWith.fieldName(...)`.
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
  OrderStatus.canceled: 'Canceled',
  OrderStatus.returned: 'Returned',
};
