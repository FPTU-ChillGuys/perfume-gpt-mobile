// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap_damaged_stock_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SwapDamagedStockRequestCWProxy {
  SwapDamagedStockRequest orderDetailId(String? orderDetailId);

  SwapDamagedStockRequest damagedReservationId(String? damagedReservationId);

  SwapDamagedStockRequest damageNote(String? damageNote);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SwapDamagedStockRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SwapDamagedStockRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  SwapDamagedStockRequest call({
    String? orderDetailId,
    String? damagedReservationId,
    String? damageNote,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSwapDamagedStockRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSwapDamagedStockRequest.copyWith.fieldName(...)`
class _$SwapDamagedStockRequestCWProxyImpl
    implements _$SwapDamagedStockRequestCWProxy {
  const _$SwapDamagedStockRequestCWProxyImpl(this._value);

  final SwapDamagedStockRequest _value;

  @override
  SwapDamagedStockRequest orderDetailId(String? orderDetailId) =>
      this(orderDetailId: orderDetailId);

  @override
  SwapDamagedStockRequest damagedReservationId(String? damagedReservationId) =>
      this(damagedReservationId: damagedReservationId);

  @override
  SwapDamagedStockRequest damageNote(String? damageNote) =>
      this(damageNote: damageNote);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SwapDamagedStockRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SwapDamagedStockRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  SwapDamagedStockRequest call({
    Object? orderDetailId = const $CopyWithPlaceholder(),
    Object? damagedReservationId = const $CopyWithPlaceholder(),
    Object? damageNote = const $CopyWithPlaceholder(),
  }) {
    return SwapDamagedStockRequest(
      orderDetailId: orderDetailId == const $CopyWithPlaceholder()
          ? _value.orderDetailId
          // ignore: cast_nullable_to_non_nullable
          : orderDetailId as String?,
      damagedReservationId: damagedReservationId == const $CopyWithPlaceholder()
          ? _value.damagedReservationId
          // ignore: cast_nullable_to_non_nullable
          : damagedReservationId as String?,
      damageNote: damageNote == const $CopyWithPlaceholder()
          ? _value.damageNote
          // ignore: cast_nullable_to_non_nullable
          : damageNote as String?,
    );
  }
}

extension $SwapDamagedStockRequestCopyWith on SwapDamagedStockRequest {
  /// Returns a callable class that can be used as follows: `instanceOfSwapDamagedStockRequest.copyWith(...)` or like so:`instanceOfSwapDamagedStockRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SwapDamagedStockRequestCWProxy get copyWith =>
      _$SwapDamagedStockRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwapDamagedStockRequest _$SwapDamagedStockRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SwapDamagedStockRequest', json, ($checkedConvert) {
  final val = SwapDamagedStockRequest(
    orderDetailId: $checkedConvert('orderDetailId', (v) => v as String?),
    damagedReservationId: $checkedConvert(
      'damagedReservationId',
      (v) => v as String?,
    ),
    damageNote: $checkedConvert('damageNote', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$SwapDamagedStockRequestToJson(
  SwapDamagedStockRequest instance,
) => <String, dynamic>{
  'orderDetailId': ?instance.orderDetailId,
  'damagedReservationId': ?instance.damagedReservationId,
  'damageNote': ?instance.damageNote,
};
