// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_operation_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BulkOperationResultCWProxy {
  BulkOperationResult operationName(String operationName);

  BulkOperationResult succeededCount(int? succeededCount);

  BulkOperationResult failedCount(int? failedCount);

  BulkOperationResult errors(List<BulkActionError> errors);

  BulkOperationResult totalProcessed(int? totalProcessed);

  BulkOperationResult hasError(bool? hasError);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BulkOperationResult(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BulkOperationResult(...).copyWith(id: 12, name: "My name")
  /// ```
  BulkOperationResult call({
    String operationName,
    int? succeededCount,
    int? failedCount,
    List<BulkActionError> errors,
    int? totalProcessed,
    bool? hasError,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBulkOperationResult.copyWith(...)` or call `instanceOfBulkOperationResult.copyWith.fieldName(value)` for a single field.
class _$BulkOperationResultCWProxyImpl implements _$BulkOperationResultCWProxy {
  const _$BulkOperationResultCWProxyImpl(this._value);

  final BulkOperationResult _value;

  @override
  BulkOperationResult operationName(String operationName) =>
      call(operationName: operationName);

  @override
  BulkOperationResult succeededCount(int? succeededCount) =>
      call(succeededCount: succeededCount);

  @override
  BulkOperationResult failedCount(int? failedCount) =>
      call(failedCount: failedCount);

  @override
  BulkOperationResult errors(List<BulkActionError> errors) =>
      call(errors: errors);

  @override
  BulkOperationResult totalProcessed(int? totalProcessed) =>
      call(totalProcessed: totalProcessed);

  @override
  BulkOperationResult hasError(bool? hasError) => call(hasError: hasError);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BulkOperationResult(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BulkOperationResult(...).copyWith(id: 12, name: "My name")
  /// ```
  BulkOperationResult call({
    Object? operationName = const $CopyWithPlaceholder(),
    Object? succeededCount = const $CopyWithPlaceholder(),
    Object? failedCount = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? totalProcessed = const $CopyWithPlaceholder(),
    Object? hasError = const $CopyWithPlaceholder(),
  }) {
    return BulkOperationResult(
      operationName:
          operationName == const $CopyWithPlaceholder() || operationName == null
          ? _value.operationName
          // ignore: cast_nullable_to_non_nullable
          : operationName as String,
      succeededCount: succeededCount == const $CopyWithPlaceholder()
          ? _value.succeededCount
          // ignore: cast_nullable_to_non_nullable
          : succeededCount as int?,
      failedCount: failedCount == const $CopyWithPlaceholder()
          ? _value.failedCount
          // ignore: cast_nullable_to_non_nullable
          : failedCount as int?,
      errors: errors == const $CopyWithPlaceholder() || errors == null
          ? _value.errors
          // ignore: cast_nullable_to_non_nullable
          : errors as List<BulkActionError>,
      totalProcessed: totalProcessed == const $CopyWithPlaceholder()
          ? _value.totalProcessed
          // ignore: cast_nullable_to_non_nullable
          : totalProcessed as int?,
      hasError: hasError == const $CopyWithPlaceholder()
          ? _value.hasError
          // ignore: cast_nullable_to_non_nullable
          : hasError as bool?,
    );
  }
}

extension $BulkOperationResultCopyWith on BulkOperationResult {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBulkOperationResult.copyWith(...)` or `instanceOfBulkOperationResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BulkOperationResultCWProxy get copyWith =>
      _$BulkOperationResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkOperationResult _$BulkOperationResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BulkOperationResult', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['operationName', 'errors']);
      final val = BulkOperationResult(
        operationName: $checkedConvert('operationName', (v) => v as String),
        succeededCount: $checkedConvert(
          'succeededCount',
          (v) => (v as num?)?.toInt(),
        ),
        failedCount: $checkedConvert(
          'failedCount',
          (v) => (v as num?)?.toInt(),
        ),
        errors: $checkedConvert(
          'errors',
          (v) => (v as List<dynamic>)
              .map((e) => BulkActionError.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        totalProcessed: $checkedConvert(
          'totalProcessed',
          (v) => (v as num?)?.toInt(),
        ),
        hasError: $checkedConvert('hasError', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$BulkOperationResultToJson(
  BulkOperationResult instance,
) => <String, dynamic>{
  'operationName': instance.operationName,
  'succeededCount': ?instance.succeededCount,
  'failedCount': ?instance.failedCount,
  'errors': instance.errors.map((e) => e.toJson()).toList(),
  'totalProcessed': ?instance.totalProcessed,
  'hasError': ?instance.hasError,
};
