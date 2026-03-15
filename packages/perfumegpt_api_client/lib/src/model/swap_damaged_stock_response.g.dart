// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swap_damaged_stock_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SwapDamagedStockResponseCWProxy {
  SwapDamagedStockResponse newReservationId(String? newReservationId);

  SwapDamagedStockResponse newBatchId(String? newBatchId);

  SwapDamagedStockResponse newBatchCode(String? newBatchCode);

  SwapDamagedStockResponse newLocation(String? newLocation);

  SwapDamagedStockResponse reservedQuantity(int? reservedQuantity);

  SwapDamagedStockResponse expiryDate(DateTime? expiryDate);

  SwapDamagedStockResponse message(String? message);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SwapDamagedStockResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SwapDamagedStockResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  SwapDamagedStockResponse call({
    String? newReservationId,
    String? newBatchId,
    String? newBatchCode,
    String? newLocation,
    int? reservedQuantity,
    DateTime? expiryDate,
    String? message,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSwapDamagedStockResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSwapDamagedStockResponse.copyWith.fieldName(...)`
class _$SwapDamagedStockResponseCWProxyImpl
    implements _$SwapDamagedStockResponseCWProxy {
  const _$SwapDamagedStockResponseCWProxyImpl(this._value);

  final SwapDamagedStockResponse _value;

  @override
  SwapDamagedStockResponse newReservationId(String? newReservationId) =>
      this(newReservationId: newReservationId);

  @override
  SwapDamagedStockResponse newBatchId(String? newBatchId) =>
      this(newBatchId: newBatchId);

  @override
  SwapDamagedStockResponse newBatchCode(String? newBatchCode) =>
      this(newBatchCode: newBatchCode);

  @override
  SwapDamagedStockResponse newLocation(String? newLocation) =>
      this(newLocation: newLocation);

  @override
  SwapDamagedStockResponse reservedQuantity(int? reservedQuantity) =>
      this(reservedQuantity: reservedQuantity);

  @override
  SwapDamagedStockResponse expiryDate(DateTime? expiryDate) =>
      this(expiryDate: expiryDate);

  @override
  SwapDamagedStockResponse message(String? message) => this(message: message);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SwapDamagedStockResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SwapDamagedStockResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  SwapDamagedStockResponse call({
    Object? newReservationId = const $CopyWithPlaceholder(),
    Object? newBatchId = const $CopyWithPlaceholder(),
    Object? newBatchCode = const $CopyWithPlaceholder(),
    Object? newLocation = const $CopyWithPlaceholder(),
    Object? reservedQuantity = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
  }) {
    return SwapDamagedStockResponse(
      newReservationId: newReservationId == const $CopyWithPlaceholder()
          ? _value.newReservationId
          // ignore: cast_nullable_to_non_nullable
          : newReservationId as String?,
      newBatchId: newBatchId == const $CopyWithPlaceholder()
          ? _value.newBatchId
          // ignore: cast_nullable_to_non_nullable
          : newBatchId as String?,
      newBatchCode: newBatchCode == const $CopyWithPlaceholder()
          ? _value.newBatchCode
          // ignore: cast_nullable_to_non_nullable
          : newBatchCode as String?,
      newLocation: newLocation == const $CopyWithPlaceholder()
          ? _value.newLocation
          // ignore: cast_nullable_to_non_nullable
          : newLocation as String?,
      reservedQuantity: reservedQuantity == const $CopyWithPlaceholder()
          ? _value.reservedQuantity
          // ignore: cast_nullable_to_non_nullable
          : reservedQuantity as int?,
      expiryDate: expiryDate == const $CopyWithPlaceholder()
          ? _value.expiryDate
          // ignore: cast_nullable_to_non_nullable
          : expiryDate as DateTime?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
    );
  }
}

extension $SwapDamagedStockResponseCopyWith on SwapDamagedStockResponse {
  /// Returns a callable class that can be used as follows: `instanceOfSwapDamagedStockResponse.copyWith(...)` or like so:`instanceOfSwapDamagedStockResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SwapDamagedStockResponseCWProxy get copyWith =>
      _$SwapDamagedStockResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SwapDamagedStockResponse _$SwapDamagedStockResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SwapDamagedStockResponse', json, ($checkedConvert) {
  final val = SwapDamagedStockResponse(
    newReservationId: $checkedConvert('newReservationId', (v) => v as String?),
    newBatchId: $checkedConvert('newBatchId', (v) => v as String?),
    newBatchCode: $checkedConvert('newBatchCode', (v) => v as String?),
    newLocation: $checkedConvert('newLocation', (v) => v as String?),
    reservedQuantity: $checkedConvert(
      'reservedQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    expiryDate: $checkedConvert(
      'expiryDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    message: $checkedConvert('message', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$SwapDamagedStockResponseToJson(
  SwapDamagedStockResponse instance,
) => <String, dynamic>{
  'newReservationId': ?instance.newReservationId,
  'newBatchId': ?instance.newBatchId,
  'newBatchCode': ?instance.newBatchCode,
  'newLocation': ?instance.newLocation,
  'reservedQuantity': ?instance.reservedQuantity,
  'expiryDate': ?instance.expiryDate?.toIso8601String(),
  'message': ?instance.message,
};
