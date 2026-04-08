// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_adjustment_detail_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StockAdjustmentDetailResponseCWProxy {
  StockAdjustmentDetailResponse id(String? id);

  StockAdjustmentDetailResponse productVariantId(String? productVariantId);

  StockAdjustmentDetailResponse productName(String productName);

  StockAdjustmentDetailResponse variantSku(String variantSku);

  StockAdjustmentDetailResponse batchId(String? batchId);

  StockAdjustmentDetailResponse batchCode(String batchCode);

  StockAdjustmentDetailResponse adjustmentQuantity(int? adjustmentQuantity);

  StockAdjustmentDetailResponse approvedQuantity(int? approvedQuantity);

  StockAdjustmentDetailResponse note(String? note);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StockAdjustmentDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StockAdjustmentDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  StockAdjustmentDetailResponse call({
    String? id,
    String? productVariantId,
    String productName,
    String variantSku,
    String? batchId,
    String batchCode,
    int? adjustmentQuantity,
    int? approvedQuantity,
    String? note,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfStockAdjustmentDetailResponse.copyWith(...)` or call `instanceOfStockAdjustmentDetailResponse.copyWith.fieldName(value)` for a single field.
class _$StockAdjustmentDetailResponseCWProxyImpl
    implements _$StockAdjustmentDetailResponseCWProxy {
  const _$StockAdjustmentDetailResponseCWProxyImpl(this._value);

  final StockAdjustmentDetailResponse _value;

  @override
  StockAdjustmentDetailResponse id(String? id) => call(id: id);

  @override
  StockAdjustmentDetailResponse productVariantId(String? productVariantId) =>
      call(productVariantId: productVariantId);

  @override
  StockAdjustmentDetailResponse productName(String productName) =>
      call(productName: productName);

  @override
  StockAdjustmentDetailResponse variantSku(String variantSku) =>
      call(variantSku: variantSku);

  @override
  StockAdjustmentDetailResponse batchId(String? batchId) =>
      call(batchId: batchId);

  @override
  StockAdjustmentDetailResponse batchCode(String batchCode) =>
      call(batchCode: batchCode);

  @override
  StockAdjustmentDetailResponse adjustmentQuantity(int? adjustmentQuantity) =>
      call(adjustmentQuantity: adjustmentQuantity);

  @override
  StockAdjustmentDetailResponse approvedQuantity(int? approvedQuantity) =>
      call(approvedQuantity: approvedQuantity);

  @override
  StockAdjustmentDetailResponse note(String? note) => call(note: note);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StockAdjustmentDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StockAdjustmentDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  StockAdjustmentDetailResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? productVariantId = const $CopyWithPlaceholder(),
    Object? productName = const $CopyWithPlaceholder(),
    Object? variantSku = const $CopyWithPlaceholder(),
    Object? batchId = const $CopyWithPlaceholder(),
    Object? batchCode = const $CopyWithPlaceholder(),
    Object? adjustmentQuantity = const $CopyWithPlaceholder(),
    Object? approvedQuantity = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
  }) {
    return StockAdjustmentDetailResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      productVariantId: productVariantId == const $CopyWithPlaceholder()
          ? _value.productVariantId
          // ignore: cast_nullable_to_non_nullable
          : productVariantId as String?,
      productName:
          productName == const $CopyWithPlaceholder() || productName == null
          ? _value.productName
          // ignore: cast_nullable_to_non_nullable
          : productName as String,
      variantSku:
          variantSku == const $CopyWithPlaceholder() || variantSku == null
          ? _value.variantSku
          // ignore: cast_nullable_to_non_nullable
          : variantSku as String,
      batchId: batchId == const $CopyWithPlaceholder()
          ? _value.batchId
          // ignore: cast_nullable_to_non_nullable
          : batchId as String?,
      batchCode: batchCode == const $CopyWithPlaceholder() || batchCode == null
          ? _value.batchCode
          // ignore: cast_nullable_to_non_nullable
          : batchCode as String,
      adjustmentQuantity: adjustmentQuantity == const $CopyWithPlaceholder()
          ? _value.adjustmentQuantity
          // ignore: cast_nullable_to_non_nullable
          : adjustmentQuantity as int?,
      approvedQuantity: approvedQuantity == const $CopyWithPlaceholder()
          ? _value.approvedQuantity
          // ignore: cast_nullable_to_non_nullable
          : approvedQuantity as int?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
    );
  }
}

extension $StockAdjustmentDetailResponseCopyWith
    on StockAdjustmentDetailResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfStockAdjustmentDetailResponse.copyWith(...)` or `instanceOfStockAdjustmentDetailResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StockAdjustmentDetailResponseCWProxy get copyWith =>
      _$StockAdjustmentDetailResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockAdjustmentDetailResponse _$StockAdjustmentDetailResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('StockAdjustmentDetailResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['productName', 'variantSku', 'batchCode'],
  );
  final val = StockAdjustmentDetailResponse(
    id: $checkedConvert('id', (v) => v as String?),
    productVariantId: $checkedConvert('productVariantId', (v) => v as String?),
    productName: $checkedConvert('productName', (v) => v as String),
    variantSku: $checkedConvert('variantSku', (v) => v as String),
    batchId: $checkedConvert('batchId', (v) => v as String?),
    batchCode: $checkedConvert('batchCode', (v) => v as String),
    adjustmentQuantity: $checkedConvert(
      'adjustmentQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    approvedQuantity: $checkedConvert(
      'approvedQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    note: $checkedConvert('note', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$StockAdjustmentDetailResponseToJson(
  StockAdjustmentDetailResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'productVariantId': ?instance.productVariantId,
  'productName': instance.productName,
  'variantSku': instance.variantSku,
  'batchId': ?instance.batchId,
  'batchCode': instance.batchCode,
  'adjustmentQuantity': ?instance.adjustmentQuantity,
  'approvedQuantity': ?instance.approvedQuantity,
  'note': ?instance.note,
};
