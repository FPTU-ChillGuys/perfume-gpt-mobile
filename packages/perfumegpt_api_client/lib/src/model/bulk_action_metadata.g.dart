// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_metadata.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BulkActionMetadataCWProxy {
  BulkActionMetadata operations(List<BulkOperationResult>? operations);

  BulkActionMetadata hasPartialFailure(bool? hasPartialFailure);

  BulkActionMetadata allSucceeded(bool? allSucceeded);

  BulkActionMetadata totalOperations(int? totalOperations);

  BulkActionMetadata totalSucceeded(int? totalSucceeded);

  BulkActionMetadata totalFailed(int? totalFailed);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BulkActionMetadata(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BulkActionMetadata(...).copyWith(id: 12, name: "My name")
  /// ```
  BulkActionMetadata call({
    List<BulkOperationResult>? operations,
    bool? hasPartialFailure,
    bool? allSucceeded,
    int? totalOperations,
    int? totalSucceeded,
    int? totalFailed,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBulkActionMetadata.copyWith(...)` or call `instanceOfBulkActionMetadata.copyWith.fieldName(value)` for a single field.
class _$BulkActionMetadataCWProxyImpl implements _$BulkActionMetadataCWProxy {
  const _$BulkActionMetadataCWProxyImpl(this._value);

  final BulkActionMetadata _value;

  @override
  BulkActionMetadata operations(List<BulkOperationResult>? operations) =>
      call(operations: operations);

  @override
  BulkActionMetadata hasPartialFailure(bool? hasPartialFailure) =>
      call(hasPartialFailure: hasPartialFailure);

  @override
  BulkActionMetadata allSucceeded(bool? allSucceeded) =>
      call(allSucceeded: allSucceeded);

  @override
  BulkActionMetadata totalOperations(int? totalOperations) =>
      call(totalOperations: totalOperations);

  @override
  BulkActionMetadata totalSucceeded(int? totalSucceeded) =>
      call(totalSucceeded: totalSucceeded);

  @override
  BulkActionMetadata totalFailed(int? totalFailed) =>
      call(totalFailed: totalFailed);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BulkActionMetadata(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BulkActionMetadata(...).copyWith(id: 12, name: "My name")
  /// ```
  BulkActionMetadata call({
    Object? operations = const $CopyWithPlaceholder(),
    Object? hasPartialFailure = const $CopyWithPlaceholder(),
    Object? allSucceeded = const $CopyWithPlaceholder(),
    Object? totalOperations = const $CopyWithPlaceholder(),
    Object? totalSucceeded = const $CopyWithPlaceholder(),
    Object? totalFailed = const $CopyWithPlaceholder(),
  }) {
    return BulkActionMetadata(
      operations: operations == const $CopyWithPlaceholder()
          ? _value.operations
          // ignore: cast_nullable_to_non_nullable
          : operations as List<BulkOperationResult>?,
      hasPartialFailure: hasPartialFailure == const $CopyWithPlaceholder()
          ? _value.hasPartialFailure
          // ignore: cast_nullable_to_non_nullable
          : hasPartialFailure as bool?,
      allSucceeded: allSucceeded == const $CopyWithPlaceholder()
          ? _value.allSucceeded
          // ignore: cast_nullable_to_non_nullable
          : allSucceeded as bool?,
      totalOperations: totalOperations == const $CopyWithPlaceholder()
          ? _value.totalOperations
          // ignore: cast_nullable_to_non_nullable
          : totalOperations as int?,
      totalSucceeded: totalSucceeded == const $CopyWithPlaceholder()
          ? _value.totalSucceeded
          // ignore: cast_nullable_to_non_nullable
          : totalSucceeded as int?,
      totalFailed: totalFailed == const $CopyWithPlaceholder()
          ? _value.totalFailed
          // ignore: cast_nullable_to_non_nullable
          : totalFailed as int?,
    );
  }
}

extension $BulkActionMetadataCopyWith on BulkActionMetadata {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBulkActionMetadata.copyWith(...)` or `instanceOfBulkActionMetadata.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BulkActionMetadataCWProxy get copyWith =>
      _$BulkActionMetadataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkActionMetadata _$BulkActionMetadataFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BulkActionMetadata', json, ($checkedConvert) {
  final val = BulkActionMetadata(
    operations: $checkedConvert(
      'operations',
      (v) => (v as List<dynamic>?)
          ?.map((e) => BulkOperationResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    hasPartialFailure: $checkedConvert('hasPartialFailure', (v) => v as bool?),
    allSucceeded: $checkedConvert('allSucceeded', (v) => v as bool?),
    totalOperations: $checkedConvert(
      'totalOperations',
      (v) => (v as num?)?.toInt(),
    ),
    totalSucceeded: $checkedConvert(
      'totalSucceeded',
      (v) => (v as num?)?.toInt(),
    ),
    totalFailed: $checkedConvert('totalFailed', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$BulkActionMetadataToJson(BulkActionMetadata instance) =>
    <String, dynamic>{
      'operations': ?instance.operations?.map((e) => e.toJson()).toList(),
      'hasPartialFailure': ?instance.hasPartialFailure,
      'allSucceeded': ?instance.allSucceeded,
      'totalOperations': ?instance.totalOperations,
      'totalSucceeded': ?instance.totalSucceeded,
      'totalFailed': ?instance.totalFailed,
    };
