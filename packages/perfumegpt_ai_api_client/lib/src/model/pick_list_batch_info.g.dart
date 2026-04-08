// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_list_batch_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PickListBatchInfoCWProxy {
  PickListBatchInfo reservationId(String? reservationId);

  PickListBatchInfo batchId(String? batchId);

  PickListBatchInfo batchCode(String batchCode);

  PickListBatchInfo note(String? note);

  PickListBatchInfo reservedQuantity(int? reservedQuantity);

  PickListBatchInfo expiryDate(DateTime? expiryDate);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PickListBatchInfo(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PickListBatchInfo(...).copyWith(id: 12, name: "My name")
  /// ```
  PickListBatchInfo call({
    String? reservationId,
    String? batchId,
    String batchCode,
    String? note,
    int? reservedQuantity,
    DateTime? expiryDate,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPickListBatchInfo.copyWith(...)` or call `instanceOfPickListBatchInfo.copyWith.fieldName(value)` for a single field.
class _$PickListBatchInfoCWProxyImpl implements _$PickListBatchInfoCWProxy {
  const _$PickListBatchInfoCWProxyImpl(this._value);

  final PickListBatchInfo _value;

  @override
  PickListBatchInfo reservationId(String? reservationId) =>
      call(reservationId: reservationId);

  @override
  PickListBatchInfo batchId(String? batchId) => call(batchId: batchId);

  @override
  PickListBatchInfo batchCode(String batchCode) => call(batchCode: batchCode);

  @override
  PickListBatchInfo note(String? note) => call(note: note);

  @override
  PickListBatchInfo reservedQuantity(int? reservedQuantity) =>
      call(reservedQuantity: reservedQuantity);

  @override
  PickListBatchInfo expiryDate(DateTime? expiryDate) =>
      call(expiryDate: expiryDate);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PickListBatchInfo(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PickListBatchInfo(...).copyWith(id: 12, name: "My name")
  /// ```
  PickListBatchInfo call({
    Object? reservationId = const $CopyWithPlaceholder(),
    Object? batchId = const $CopyWithPlaceholder(),
    Object? batchCode = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
    Object? reservedQuantity = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
  }) {
    return PickListBatchInfo(
      reservationId: reservationId == const $CopyWithPlaceholder()
          ? _value.reservationId
          // ignore: cast_nullable_to_non_nullable
          : reservationId as String?,
      batchId: batchId == const $CopyWithPlaceholder()
          ? _value.batchId
          // ignore: cast_nullable_to_non_nullable
          : batchId as String?,
      batchCode: batchCode == const $CopyWithPlaceholder() || batchCode == null
          ? _value.batchCode
          // ignore: cast_nullable_to_non_nullable
          : batchCode as String,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
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

extension $PickListBatchInfoCopyWith on PickListBatchInfo {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPickListBatchInfo.copyWith(...)` or `instanceOfPickListBatchInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PickListBatchInfoCWProxy get copyWith =>
      _$PickListBatchInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickListBatchInfo _$PickListBatchInfoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PickListBatchInfo', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['batchCode']);
      final val = PickListBatchInfo(
        reservationId: $checkedConvert('reservationId', (v) => v as String?),
        batchId: $checkedConvert('batchId', (v) => v as String?),
        batchCode: $checkedConvert('batchCode', (v) => v as String),
        note: $checkedConvert('note', (v) => v as String?),
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

Map<String, dynamic> _$PickListBatchInfoToJson(PickListBatchInfo instance) =>
    <String, dynamic>{
      'reservationId': ?instance.reservationId,
      'batchId': ?instance.batchId,
      'batchCode': instance.batchCode,
      'note': ?instance.note,
      'reservedQuantity': ?instance.reservedQuantity,
      'expiryDate': ?instance.expiryDate?.toIso8601String(),
    };
