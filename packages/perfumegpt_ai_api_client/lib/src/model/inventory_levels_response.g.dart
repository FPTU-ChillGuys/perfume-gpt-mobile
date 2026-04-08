// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_levels_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryLevelsResponseCWProxy {
  InventoryLevelsResponse totalVariants(int? totalVariants);

  InventoryLevelsResponse totalStockQuantity(int? totalStockQuantity);

  InventoryLevelsResponse totalAvailableQuantity(int? totalAvailableQuantity);

  InventoryLevelsResponse lowStockVariantsCount(int? lowStockVariantsCount);

  InventoryLevelsResponse outOfStockVariantsCount(int? outOfStockVariantsCount);

  InventoryLevelsResponse totalBatches(int? totalBatches);

  InventoryLevelsResponse expiredBatchesCount(int? expiredBatchesCount);

  InventoryLevelsResponse expiringSoonCount(int? expiringSoonCount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryLevelsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryLevelsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryLevelsResponse call({
    int? totalVariants,
    int? totalStockQuantity,
    int? totalAvailableQuantity,
    int? lowStockVariantsCount,
    int? outOfStockVariantsCount,
    int? totalBatches,
    int? expiredBatchesCount,
    int? expiringSoonCount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryLevelsResponse.copyWith(...)` or call `instanceOfInventoryLevelsResponse.copyWith.fieldName(value)` for a single field.
class _$InventoryLevelsResponseCWProxyImpl
    implements _$InventoryLevelsResponseCWProxy {
  const _$InventoryLevelsResponseCWProxyImpl(this._value);

  final InventoryLevelsResponse _value;

  @override
  InventoryLevelsResponse totalVariants(int? totalVariants) =>
      call(totalVariants: totalVariants);

  @override
  InventoryLevelsResponse totalStockQuantity(int? totalStockQuantity) =>
      call(totalStockQuantity: totalStockQuantity);

  @override
  InventoryLevelsResponse totalAvailableQuantity(int? totalAvailableQuantity) =>
      call(totalAvailableQuantity: totalAvailableQuantity);

  @override
  InventoryLevelsResponse lowStockVariantsCount(int? lowStockVariantsCount) =>
      call(lowStockVariantsCount: lowStockVariantsCount);

  @override
  InventoryLevelsResponse outOfStockVariantsCount(
    int? outOfStockVariantsCount,
  ) => call(outOfStockVariantsCount: outOfStockVariantsCount);

  @override
  InventoryLevelsResponse totalBatches(int? totalBatches) =>
      call(totalBatches: totalBatches);

  @override
  InventoryLevelsResponse expiredBatchesCount(int? expiredBatchesCount) =>
      call(expiredBatchesCount: expiredBatchesCount);

  @override
  InventoryLevelsResponse expiringSoonCount(int? expiringSoonCount) =>
      call(expiringSoonCount: expiringSoonCount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryLevelsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryLevelsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryLevelsResponse call({
    Object? totalVariants = const $CopyWithPlaceholder(),
    Object? totalStockQuantity = const $CopyWithPlaceholder(),
    Object? totalAvailableQuantity = const $CopyWithPlaceholder(),
    Object? lowStockVariantsCount = const $CopyWithPlaceholder(),
    Object? outOfStockVariantsCount = const $CopyWithPlaceholder(),
    Object? totalBatches = const $CopyWithPlaceholder(),
    Object? expiredBatchesCount = const $CopyWithPlaceholder(),
    Object? expiringSoonCount = const $CopyWithPlaceholder(),
  }) {
    return InventoryLevelsResponse(
      totalVariants: totalVariants == const $CopyWithPlaceholder()
          ? _value.totalVariants
          // ignore: cast_nullable_to_non_nullable
          : totalVariants as int?,
      totalStockQuantity: totalStockQuantity == const $CopyWithPlaceholder()
          ? _value.totalStockQuantity
          // ignore: cast_nullable_to_non_nullable
          : totalStockQuantity as int?,
      totalAvailableQuantity:
          totalAvailableQuantity == const $CopyWithPlaceholder()
          ? _value.totalAvailableQuantity
          // ignore: cast_nullable_to_non_nullable
          : totalAvailableQuantity as int?,
      lowStockVariantsCount:
          lowStockVariantsCount == const $CopyWithPlaceholder()
          ? _value.lowStockVariantsCount
          // ignore: cast_nullable_to_non_nullable
          : lowStockVariantsCount as int?,
      outOfStockVariantsCount:
          outOfStockVariantsCount == const $CopyWithPlaceholder()
          ? _value.outOfStockVariantsCount
          // ignore: cast_nullable_to_non_nullable
          : outOfStockVariantsCount as int?,
      totalBatches: totalBatches == const $CopyWithPlaceholder()
          ? _value.totalBatches
          // ignore: cast_nullable_to_non_nullable
          : totalBatches as int?,
      expiredBatchesCount: expiredBatchesCount == const $CopyWithPlaceholder()
          ? _value.expiredBatchesCount
          // ignore: cast_nullable_to_non_nullable
          : expiredBatchesCount as int?,
      expiringSoonCount: expiringSoonCount == const $CopyWithPlaceholder()
          ? _value.expiringSoonCount
          // ignore: cast_nullable_to_non_nullable
          : expiringSoonCount as int?,
    );
  }
}

extension $InventoryLevelsResponseCopyWith on InventoryLevelsResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryLevelsResponse.copyWith(...)` or `instanceOfInventoryLevelsResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryLevelsResponseCWProxy get copyWith =>
      _$InventoryLevelsResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryLevelsResponse _$InventoryLevelsResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InventoryLevelsResponse', json, ($checkedConvert) {
  final val = InventoryLevelsResponse(
    totalVariants: $checkedConvert(
      'totalVariants',
      (v) => (v as num?)?.toInt(),
    ),
    totalStockQuantity: $checkedConvert(
      'totalStockQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    totalAvailableQuantity: $checkedConvert(
      'totalAvailableQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    lowStockVariantsCount: $checkedConvert(
      'lowStockVariantsCount',
      (v) => (v as num?)?.toInt(),
    ),
    outOfStockVariantsCount: $checkedConvert(
      'outOfStockVariantsCount',
      (v) => (v as num?)?.toInt(),
    ),
    totalBatches: $checkedConvert('totalBatches', (v) => (v as num?)?.toInt()),
    expiredBatchesCount: $checkedConvert(
      'expiredBatchesCount',
      (v) => (v as num?)?.toInt(),
    ),
    expiringSoonCount: $checkedConvert(
      'expiringSoonCount',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$InventoryLevelsResponseToJson(
  InventoryLevelsResponse instance,
) => <String, dynamic>{
  'totalVariants': ?instance.totalVariants,
  'totalStockQuantity': ?instance.totalStockQuantity,
  'totalAvailableQuantity': ?instance.totalAvailableQuantity,
  'lowStockVariantsCount': ?instance.lowStockVariantsCount,
  'outOfStockVariantsCount': ?instance.outOfStockVariantsCount,
  'totalBatches': ?instance.totalBatches,
  'expiredBatchesCount': ?instance.expiredBatchesCount,
  'expiringSoonCount': ?instance.expiringSoonCount,
};
