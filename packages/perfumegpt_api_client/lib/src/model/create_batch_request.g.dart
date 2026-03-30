// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_batch_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateBatchRequestCWProxy {
  CreateBatchRequest batchCode(String batchCode);

  CreateBatchRequest manufactureDate(DateTime manufactureDate);

  CreateBatchRequest expiryDate(DateTime expiryDate);

  CreateBatchRequest quantity(int? quantity);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateBatchRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateBatchRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateBatchRequest call({
    String batchCode,
    DateTime manufactureDate,
    DateTime expiryDate,
    int? quantity,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateBatchRequest.copyWith(...)` or call `instanceOfCreateBatchRequest.copyWith.fieldName(value)` for a single field.
class _$CreateBatchRequestCWProxyImpl implements _$CreateBatchRequestCWProxy {
  const _$CreateBatchRequestCWProxyImpl(this._value);

  final CreateBatchRequest _value;

  @override
  CreateBatchRequest batchCode(String batchCode) => call(batchCode: batchCode);

  @override
  CreateBatchRequest manufactureDate(DateTime manufactureDate) =>
      call(manufactureDate: manufactureDate);

  @override
  CreateBatchRequest expiryDate(DateTime expiryDate) =>
      call(expiryDate: expiryDate);

  @override
  CreateBatchRequest quantity(int? quantity) => call(quantity: quantity);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateBatchRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateBatchRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateBatchRequest call({
    Object? batchCode = const $CopyWithPlaceholder(),
    Object? manufactureDate = const $CopyWithPlaceholder(),
    Object? expiryDate = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return CreateBatchRequest(
      batchCode: batchCode == const $CopyWithPlaceholder() || batchCode == null
          ? _value.batchCode
          // ignore: cast_nullable_to_non_nullable
          : batchCode as String,
      manufactureDate:
          manufactureDate == const $CopyWithPlaceholder() ||
              manufactureDate == null
          ? _value.manufactureDate
          // ignore: cast_nullable_to_non_nullable
          : manufactureDate as DateTime,
      expiryDate:
          expiryDate == const $CopyWithPlaceholder() || expiryDate == null
          ? _value.expiryDate
          // ignore: cast_nullable_to_non_nullable
          : expiryDate as DateTime,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
    );
  }
}

extension $CreateBatchRequestCopyWith on CreateBatchRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateBatchRequest.copyWith(...)` or `instanceOfCreateBatchRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateBatchRequestCWProxy get copyWith =>
      _$CreateBatchRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBatchRequest _$CreateBatchRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreateBatchRequest', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['batchCode', 'manufactureDate', 'expiryDate'],
      );
      final val = CreateBatchRequest(
        batchCode: $checkedConvert('batchCode', (v) => v as String),
        manufactureDate: $checkedConvert(
          'manufactureDate',
          (v) => DateTime.parse(v as String),
        ),
        expiryDate: $checkedConvert(
          'expiryDate',
          (v) => DateTime.parse(v as String),
        ),
        quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$CreateBatchRequestToJson(CreateBatchRequest instance) =>
    <String, dynamic>{
      'batchCode': instance.batchCode,
      'manufactureDate': instance.manufactureDate.toIso8601String(),
      'expiryDate': instance.expiryDate.toIso8601String(),
      'quantity': ?instance.quantity,
    };
