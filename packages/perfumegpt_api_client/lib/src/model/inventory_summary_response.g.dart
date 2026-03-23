// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_summary_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventorySummaryResponseCWProxy {
  InventorySummaryResponse totalVariants(int? totalVariants);

  InventorySummaryResponse totalStockQuantity(int? totalStockQuantity);

  InventorySummaryResponse lowStockVariantsCount(int? lowStockVariantsCount);

  InventorySummaryResponse totalBatches(int? totalBatches);

  InventorySummaryResponse expiredBatchesCount(int? expiredBatchesCount);

  InventorySummaryResponse expiringSoonCount(int? expiringSoonCount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventorySummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventorySummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  InventorySummaryResponse call({
    int? totalVariants,
    int? totalStockQuantity,
    int? lowStockVariantsCount,
    int? totalBatches,
    int? expiredBatchesCount,
    int? expiringSoonCount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventorySummaryResponse.copyWith(...)` or call `instanceOfInventorySummaryResponse.copyWith.fieldName(value)` for a single field.
class _$InventorySummaryResponseCWProxyImpl
    implements _$InventorySummaryResponseCWProxy {
  const _$InventorySummaryResponseCWProxyImpl(this._value);

  final InventorySummaryResponse _value;

  @override
  InventorySummaryResponse totalVariants(int? totalVariants) =>
      call(totalVariants: totalVariants);

  @override
  InventorySummaryResponse totalStockQuantity(int? totalStockQuantity) =>
      call(totalStockQuantity: totalStockQuantity);

  @override
  InventorySummaryResponse lowStockVariantsCount(int? lowStockVariantsCount) =>
      call(lowStockVariantsCount: lowStockVariantsCount);

  @override
  InventorySummaryResponse totalBatches(int? totalBatches) =>
      call(totalBatches: totalBatches);

  @override
  InventorySummaryResponse expiredBatchesCount(int? expiredBatchesCount) =>
      call(expiredBatchesCount: expiredBatchesCount);

  @override
  InventorySummaryResponse expiringSoonCount(int? expiringSoonCount) =>
      call(expiringSoonCount: expiringSoonCount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventorySummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventorySummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  InventorySummaryResponse call({
    Object? totalVariants = const $CopyWithPlaceholder(),
    Object? totalStockQuantity = const $CopyWithPlaceholder(),
    Object? lowStockVariantsCount = const $CopyWithPlaceholder(),
    Object? totalBatches = const $CopyWithPlaceholder(),
    Object? expiredBatchesCount = const $CopyWithPlaceholder(),
    Object? expiringSoonCount = const $CopyWithPlaceholder(),
  }) {
    return InventorySummaryResponse(
      totalVariants: totalVariants == const $CopyWithPlaceholder()
          ? _value.totalVariants
          // ignore: cast_nullable_to_non_nullable
          : totalVariants as int?,
      totalStockQuantity: totalStockQuantity == const $CopyWithPlaceholder()
          ? _value.totalStockQuantity
          // ignore: cast_nullable_to_non_nullable
          : totalStockQuantity as int?,
      lowStockVariantsCount:
          lowStockVariantsCount == const $CopyWithPlaceholder()
          ? _value.lowStockVariantsCount
          // ignore: cast_nullable_to_non_nullable
          : lowStockVariantsCount as int?,
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

extension $InventorySummaryResponseCopyWith on InventorySummaryResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventorySummaryResponse.copyWith(...)` or `instanceOfInventorySummaryResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventorySummaryResponseCWProxy get copyWith =>
      _$InventorySummaryResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventorySummaryResponse _$InventorySummaryResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InventorySummaryResponse', json, ($checkedConvert) {
  final val = InventorySummaryResponse(
    totalVariants: $checkedConvert(
      'totalVariants',
      (v) => (v as num?)?.toInt(),
    ),
    totalStockQuantity: $checkedConvert(
      'totalStockQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    lowStockVariantsCount: $checkedConvert(
      'lowStockVariantsCount',
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

Map<String, dynamic> _$InventorySummaryResponseToJson(
  InventorySummaryResponse instance,
) => <String, dynamic>{
  'totalVariants': ?instance.totalVariants,
  'totalStockQuantity': ?instance.totalStockQuantity,
  'lowStockVariantsCount': ?instance.lowStockVariantsCount,
  'totalBatches': ?instance.totalBatches,
  'expiredBatchesCount': ?instance.expiredBatchesCount,
  'expiringSoonCount': ?instance.expiringSoonCount,
};
