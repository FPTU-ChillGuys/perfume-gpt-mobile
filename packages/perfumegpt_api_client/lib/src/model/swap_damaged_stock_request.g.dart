// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap_damaged_stock_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SwapDamagedStockRequestCWProxy {
  SwapDamagedStockRequest orderDetailId(String? orderDetailId);

  SwapDamagedStockRequest damagedReservationId(String? damagedReservationId);

  SwapDamagedStockRequest damageNote(String? damageNote);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SwapDamagedStockRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SwapDamagedStockRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  SwapDamagedStockRequest call({
    String? orderDetailId,
    String? damagedReservationId,
    String? damageNote,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSwapDamagedStockRequest.copyWith(...)` or call `instanceOfSwapDamagedStockRequest.copyWith.fieldName(value)` for a single field.
class _$SwapDamagedStockRequestCWProxyImpl
    implements _$SwapDamagedStockRequestCWProxy {
  const _$SwapDamagedStockRequestCWProxyImpl(this._value);

  final SwapDamagedStockRequest _value;

  @override
  SwapDamagedStockRequest orderDetailId(String? orderDetailId) =>
      call(orderDetailId: orderDetailId);

  @override
  SwapDamagedStockRequest damagedReservationId(String? damagedReservationId) =>
      call(damagedReservationId: damagedReservationId);

  @override
  SwapDamagedStockRequest damageNote(String? damageNote) =>
      call(damageNote: damageNote);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SwapDamagedStockRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SwapDamagedStockRequest(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSwapDamagedStockRequest.copyWith(...)` or `instanceOfSwapDamagedStockRequest.copyWith.fieldName(...)`.
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
