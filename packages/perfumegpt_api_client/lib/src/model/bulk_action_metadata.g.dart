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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BulkActionMetadata(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BulkActionMetadata(...).copyWith(id: 12, name: "My name")
  /// ````
  BulkActionMetadata call({
    List<BulkOperationResult>? operations,
    bool? hasPartialFailure,
    bool? allSucceeded,
    int? totalOperations,
    int? totalSucceeded,
    int? totalFailed,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBulkActionMetadata.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBulkActionMetadata.copyWith.fieldName(...)`
class _$BulkActionMetadataCWProxyImpl implements _$BulkActionMetadataCWProxy {
  const _$BulkActionMetadataCWProxyImpl(this._value);

  final BulkActionMetadata _value;

  @override
  BulkActionMetadata operations(List<BulkOperationResult>? operations) =>
      this(operations: operations);

  @override
  BulkActionMetadata hasPartialFailure(bool? hasPartialFailure) =>
      this(hasPartialFailure: hasPartialFailure);

  @override
  BulkActionMetadata allSucceeded(bool? allSucceeded) =>
      this(allSucceeded: allSucceeded);

  @override
  BulkActionMetadata totalOperations(int? totalOperations) =>
      this(totalOperations: totalOperations);

  @override
  BulkActionMetadata totalSucceeded(int? totalSucceeded) =>
      this(totalSucceeded: totalSucceeded);

  @override
  BulkActionMetadata totalFailed(int? totalFailed) =>
      this(totalFailed: totalFailed);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BulkActionMetadata(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BulkActionMetadata(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfBulkActionMetadata.copyWith(...)` or like so:`instanceOfBulkActionMetadata.copyWith.fieldName(...)`.
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
