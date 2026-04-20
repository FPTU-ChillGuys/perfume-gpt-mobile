// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BatchResponseCWProxy {
  BatchResponse batchCode(String batchCode);

  BatchResponse createdAt(DateTime createdAt);

  BatchResponse expiryDate(DateTime expiryDate);

  BatchResponse id(String id);

  BatchResponse importQuantity(num importQuantity);

  BatchResponse manufactureDate(DateTime manufactureDate);

  BatchResponse remainingQuantity(num remainingQuantity);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BatchResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BatchResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BatchResponse call({
    String batchCode,
    DateTime createdAt,
    DateTime expiryDate,
    String id,
    num importQuantity,
    DateTime manufactureDate,
    num remainingQuantity,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBatchResponse.copyWith(...)` or call `instanceOfBatchResponse.copyWith.fieldName(value)` for a single field.
class _$BatchResponseCWProxyImpl implements _$BatchResponseCWProxy {
  const _$BatchResponseCWProxyImpl(this._value);

  final BatchResponse _value;

  @override
  BatchResponse batchCode(String batchCode) => call(batchCode: batchCode);

  @override
  BatchResponse createdAt(DateTime createdAt) => call(createdAt: createdAt);

  @override
  BatchResponse expiryDate(DateTime expiryDate) => call(expiryDate: expiryDate);

  @override
  BatchResponse id(String id) => call(id: id);

  @override
  BatchResponse importQuantity(num importQuantity) =>
      call(importQuantity: importQuantity);

  @override
  BatchResponse manufactureDate(DateTime manufactureDate) =>
      call(manufactureDate: manufactureDate);

  @override
  BatchResponse remainingQuantity(num remainingQuantity) =>
      call(remainingQuantity: remainingQuantity);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BatchResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BatchResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BatchResponse call({
    Object? batchCode = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? importQuantity = const $CopyWithPlaceholder(),
    Object? manufactureDate = const $CopyWithPlaceholder(),
    Object? remainingQuantity = const $CopyWithPlaceholder(),
  }) {
    return BatchResponse(
      batchCode: batchCode == const $CopyWithPlaceholder() || batchCode == null
          ? _value.batchCode
          // ignore: cast_nullable_to_non_nullable
          : batchCode as String,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      expiryDate:
          expiryDate == const $CopyWithPlaceholder() || expiryDate == null
          ? _value.expiryDate
          // ignore: cast_nullable_to_non_nullable
          : expiryDate as DateTime,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      importQuantity:
          importQuantity == const $CopyWithPlaceholder() ||
              importQuantity == null
          ? _value.importQuantity
          // ignore: cast_nullable_to_non_nullable
          : importQuantity as num,
      manufactureDate:
          manufactureDate == const $CopyWithPlaceholder() ||
              manufactureDate == null
          ? _value.manufactureDate
          // ignore: cast_nullable_to_non_nullable
          : manufactureDate as DateTime,
      remainingQuantity:
          remainingQuantity == const $CopyWithPlaceholder() ||
              remainingQuantity == null
          ? _value.remainingQuantity
          // ignore: cast_nullable_to_non_nullable
          : remainingQuantity as num,
    );
  }
}

extension $BatchResponseCopyWith on BatchResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBatchResponse.copyWith(...)` or `instanceOfBatchResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BatchResponseCWProxy get copyWith => _$BatchResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchResponse _$BatchResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BatchResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'batchCode',
      'createdAt',
      'expiryDate',
      'id',
      'importQuantity',
      'manufactureDate',
      'remainingQuantity',
    ],
  );
  final val = BatchResponse(
    batchCode: $checkedConvert('batchCode', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    expiryDate: $checkedConvert(
      'expiryDate',
      (v) => DateTime.parse(v as String),
    ),
    id: $checkedConvert('id', (v) => v as String),
    importQuantity: $checkedConvert('importQuantity', (v) => v as num),
    manufactureDate: $checkedConvert(
      'manufactureDate',
      (v) => DateTime.parse(v as String),
    ),
    remainingQuantity: $checkedConvert('remainingQuantity', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$BatchResponseToJson(BatchResponse instance) =>
    <String, dynamic>{
      'batchCode': instance.batchCode,
      'createdAt': instance.createdAt.toIso8601String(),
      'expiryDate': instance.expiryDate.toIso8601String(),
      'id': instance.id,
      'importQuantity': instance.importQuantity,
      'manufactureDate': instance.manufactureDate.toIso8601String(),
      'remainingQuantity': instance.remainingQuantity,
    };
