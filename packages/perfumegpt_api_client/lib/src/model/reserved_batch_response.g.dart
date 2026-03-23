// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reserved_batch_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReservedBatchResponseCWProxy {
  ReservedBatchResponse batchId(String? batchId);

  ReservedBatchResponse batchCode(String? batchCode);

  ReservedBatchResponse reservedQuantity(int? reservedQuantity);

  ReservedBatchResponse expiryDate(DateTime? expiryDate);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReservedBatchResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReservedBatchResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ReservedBatchResponse call({
    String? batchId,
    String? batchCode,
    int? reservedQuantity,
    DateTime? expiryDate,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReservedBatchResponse.copyWith(...)` or call `instanceOfReservedBatchResponse.copyWith.fieldName(value)` for a single field.
class _$ReservedBatchResponseCWProxyImpl
    implements _$ReservedBatchResponseCWProxy {
  const _$ReservedBatchResponseCWProxyImpl(this._value);

  final ReservedBatchResponse _value;

  @override
  ReservedBatchResponse batchId(String? batchId) => call(batchId: batchId);

  @override
  ReservedBatchResponse batchCode(String? batchCode) =>
      call(batchCode: batchCode);

  @override
  ReservedBatchResponse reservedQuantity(int? reservedQuantity) =>
      call(reservedQuantity: reservedQuantity);

  @override
  ReservedBatchResponse expiryDate(DateTime? expiryDate) =>
      call(expiryDate: expiryDate);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReservedBatchResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReservedBatchResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ReservedBatchResponse call({
    Object? batchId = const $CopyWithPlaceholder(),
    Object? batchCode = const $CopyWithPlaceholder(),
    Object? reservedQuantity = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
  }) {
    return ReservedBatchResponse(
      batchId: batchId == const $CopyWithPlaceholder()
          ? _value.batchId
          // ignore: cast_nullable_to_non_nullable
          : batchId as String?,
      batchCode: batchCode == const $CopyWithPlaceholder()
          ? _value.batchCode
          // ignore: cast_nullable_to_non_nullable
          : batchCode as String?,
      reservedQuantity: reservedQuantity == const $CopyWithPlaceholder()
          ? _value.reservedQuantity
          // ignore: cast_nullable_to_non_nullable
          : reservedQuantity as int?,
      expiryDate: expiryDate == const $CopyWithPlaceholder()
          ? _value.expiryDate
          // ignore: cast_nullable_to_non_nullable
          : expiryDate as DateTime?,
    );
  }
}

extension $ReservedBatchResponseCopyWith on ReservedBatchResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReservedBatchResponse.copyWith(...)` or `instanceOfReservedBatchResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReservedBatchResponseCWProxy get copyWith =>
      _$ReservedBatchResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReservedBatchResponse _$ReservedBatchResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ReservedBatchResponse', json, ($checkedConvert) {
  final val = ReservedBatchResponse(
    batchId: $checkedConvert('batchId', (v) => v as String?),
    batchCode: $checkedConvert('batchCode', (v) => v as String?),
    reservedQuantity: $checkedConvert(
      'reservedQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    expiryDate: $checkedConvert(
      'expiryDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$ReservedBatchResponseToJson(
  ReservedBatchResponse instance,
) => <String, dynamic>{
  'batchId': ?instance.batchId,
  'batchCode': ?instance.batchCode,
  'reservedQuantity': ?instance.reservedQuantity,
  'expiryDate': ?instance.expiryDate?.toIso8601String(),
};
