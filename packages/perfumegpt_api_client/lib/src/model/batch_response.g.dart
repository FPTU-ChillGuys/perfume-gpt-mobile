// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BatchResponseCWProxy {
  BatchResponse id(String? id);

  BatchResponse batchCode(String batchCode);

  BatchResponse manufactureDate(DateTime? manufactureDate);

  BatchResponse expiryDate(DateTime? expiryDate);

  BatchResponse importQuantity(int? importQuantity);

  BatchResponse remainingQuantity(int? remainingQuantity);

  BatchResponse availableQuantity(int? availableQuantity);

  BatchResponse createdAt(DateTime? createdAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BatchResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BatchResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BatchResponse call({
    String? id,
    String batchCode,
    DateTime? manufactureDate,
    DateTime? expiryDate,
    int? importQuantity,
    int? remainingQuantity,
    int? availableQuantity,
    DateTime? createdAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBatchResponse.copyWith(...)` or call `instanceOfBatchResponse.copyWith.fieldName(value)` for a single field.
class _$BatchResponseCWProxyImpl implements _$BatchResponseCWProxy {
  const _$BatchResponseCWProxyImpl(this._value);

  final BatchResponse _value;

  @override
  BatchResponse id(String? id) => call(id: id);

  @override
  BatchResponse batchCode(String batchCode) => call(batchCode: batchCode);

  @override
  BatchResponse manufactureDate(DateTime? manufactureDate) =>
      call(manufactureDate: manufactureDate);

  @override
  BatchResponse expiryDate(DateTime? expiryDate) =>
      call(expiryDate: expiryDate);

  @override
  BatchResponse importQuantity(int? importQuantity) =>
      call(importQuantity: importQuantity);

  @override
  BatchResponse remainingQuantity(int? remainingQuantity) =>
      call(remainingQuantity: remainingQuantity);

  @override
  BatchResponse availableQuantity(int? availableQuantity) =>
      call(availableQuantity: availableQuantity);

  @override
  BatchResponse createdAt(DateTime? createdAt) => call(createdAt: createdAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BatchResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BatchResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BatchResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? batchCode = const $CopyWithPlaceholder(),
    Object? manufactureDate = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
    Object? importQuantity = const $CopyWithPlaceholder(),
    Object? remainingQuantity = const $CopyWithPlaceholder(),
    Object? availableQuantity = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return BatchResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      batchCode: batchCode == const $CopyWithPlaceholder() || batchCode == null
          ? _value.batchCode
          // ignore: cast_nullable_to_non_nullable
          : batchCode as String,
      manufactureDate: manufactureDate == const $CopyWithPlaceholder()
          ? _value.manufactureDate
          // ignore: cast_nullable_to_non_nullable
          : manufactureDate as DateTime?,
      expiryDate: expiryDate == const $CopyWithPlaceholder()
          ? _value.expiryDate
          // ignore: cast_nullable_to_non_nullable
          : expiryDate as DateTime?,
      importQuantity: importQuantity == const $CopyWithPlaceholder()
          ? _value.importQuantity
          // ignore: cast_nullable_to_non_nullable
          : importQuantity as int?,
      remainingQuantity: remainingQuantity == const $CopyWithPlaceholder()
          ? _value.remainingQuantity
          // ignore: cast_nullable_to_non_nullable
          : remainingQuantity as int?,
      availableQuantity: availableQuantity == const $CopyWithPlaceholder()
          ? _value.availableQuantity
          // ignore: cast_nullable_to_non_nullable
          : availableQuantity as int?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
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

BatchResponse _$BatchResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BatchResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['batchCode']);
      final val = BatchResponse(
        id: $checkedConvert('id', (v) => v as String?),
        batchCode: $checkedConvert('batchCode', (v) => v as String),
        manufactureDate: $checkedConvert(
          'manufactureDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        expiryDate: $checkedConvert(
          'expiryDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        importQuantity: $checkedConvert(
          'importQuantity',
          (v) => (v as num?)?.toInt(),
        ),
        remainingQuantity: $checkedConvert(
          'remainingQuantity',
          (v) => (v as num?)?.toInt(),
        ),
        availableQuantity: $checkedConvert(
          'availableQuantity',
          (v) => (v as num?)?.toInt(),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$BatchResponseToJson(BatchResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'batchCode': instance.batchCode,
      'manufactureDate': ?instance.manufactureDate?.toIso8601String(),
      'expiryDate': ?instance.expiryDate?.toIso8601String(),
      'importQuantity': ?instance.importQuantity,
      'remainingQuantity': ?instance.remainingQuantity,
      'availableQuantity': ?instance.availableQuantity,
      'createdAt': ?instance.createdAt?.toIso8601String(),
    };
