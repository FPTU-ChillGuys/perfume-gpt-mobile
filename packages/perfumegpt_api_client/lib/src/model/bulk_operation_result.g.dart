// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_operation_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BulkOperationResultCWProxy {
  BulkOperationResult operationName(String? operationName);

  BulkOperationResult succeededCount(int? succeededCount);

  BulkOperationResult failedCount(int? failedCount);

  BulkOperationResult errors(List<BulkActionError>? errors);

  BulkOperationResult totalProcessed(int? totalProcessed);

  BulkOperationResult hasError(bool? hasError);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BulkOperationResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BulkOperationResult(...).copyWith(id: 12, name: "My name")
  /// ````
  BulkOperationResult call({
    String? operationName,
    int? succeededCount,
    int? failedCount,
    List<BulkActionError>? errors,
    int? totalProcessed,
    bool? hasError,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBulkOperationResult.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBulkOperationResult.copyWith.fieldName(...)`
class _$BulkOperationResultCWProxyImpl implements _$BulkOperationResultCWProxy {
  const _$BulkOperationResultCWProxyImpl(this._value);

  final BulkOperationResult _value;

  @override
  BulkOperationResult operationName(String? operationName) =>
      this(operationName: operationName);

  @override
  BulkOperationResult succeededCount(int? succeededCount) =>
      this(succeededCount: succeededCount);

  @override
  BulkOperationResult failedCount(int? failedCount) =>
      this(failedCount: failedCount);

  @override
  BulkOperationResult errors(List<BulkActionError>? errors) =>
      this(errors: errors);

  @override
  BulkOperationResult totalProcessed(int? totalProcessed) =>
      this(totalProcessed: totalProcessed);

  @override
  BulkOperationResult hasError(bool? hasError) => this(hasError: hasError);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BulkOperationResult(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BulkOperationResult(...).copyWith(id: 12, name: "My name")
  /// ````
  BulkOperationResult call({
    Object? operationName = const $CopyWithPlaceholder(),
    Object? succeededCount = const $CopyWithPlaceholder(),
    Object? failedCount = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? totalProcessed = const $CopyWithPlaceholder(),
    Object? hasError = const $CopyWithPlaceholder(),
  }) {
    return BulkOperationResult(
      operationName: operationName == const $CopyWithPlaceholder()
          ? _value.operationName
          // ignore: cast_nullable_to_non_nullable
          : operationName as String?,
      succeededCount: succeededCount == const $CopyWithPlaceholder()
          ? _value.succeededCount
          // ignore: cast_nullable_to_non_nullable
          : succeededCount as int?,
      failedCount: failedCount == const $CopyWithPlaceholder()
          ? _value.failedCount
          // ignore: cast_nullable_to_non_nullable
          : failedCount as int?,
      errors: errors == const $CopyWithPlaceholder()
          ? _value.errors
          // ignore: cast_nullable_to_non_nullable
          : errors as List<BulkActionError>?,
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
  /// Returns a callable class that can be used as follows: `instanceOfBulkOperationResult.copyWith(...)` or like so:`instanceOfBulkOperationResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BulkOperationResultCWProxy get copyWith =>
      _$BulkOperationResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkOperationResult _$BulkOperationResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BulkOperationResult', json, ($checkedConvert) {
      final val = BulkOperationResult(
        operationName: $checkedConvert('operationName', (v) => v as String?),
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
          (v) => (v as List<dynamic>?)
              ?.map((e) => BulkActionError.fromJson(e as Map<String, dynamic>))
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
  'operationName': ?instance.operationName,
  'succeededCount': ?instance.succeededCount,
  'failedCount': ?instance.failedCount,
  'errors': ?instance.errors?.map((e) => e.toJson()).toList(),
  'totalProcessed': ?instance.totalProcessed,
  'hasError': ?instance.hasError,
};
