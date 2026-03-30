// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_stock_adjustment_detail_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateStockAdjustmentDetailRequestCWProxy {
  CreateStockAdjustmentDetailRequest variantId(String variantId);

  CreateStockAdjustmentDetailRequest batchId(String batchId);

  CreateStockAdjustmentDetailRequest adjustmentQuantity(
    int? adjustmentQuantity,
  );

  CreateStockAdjustmentDetailRequest note(String? note);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateStockAdjustmentDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateStockAdjustmentDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateStockAdjustmentDetailRequest call({
    String variantId,
    String batchId,
    int? adjustmentQuantity,
    String? note,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateStockAdjustmentDetailRequest.copyWith(...)` or call `instanceOfCreateStockAdjustmentDetailRequest.copyWith.fieldName(value)` for a single field.
class _$CreateStockAdjustmentDetailRequestCWProxyImpl
    implements _$CreateStockAdjustmentDetailRequestCWProxy {
  const _$CreateStockAdjustmentDetailRequestCWProxyImpl(this._value);

  final CreateStockAdjustmentDetailRequest _value;

  @override
  CreateStockAdjustmentDetailRequest variantId(String variantId) =>
      call(variantId: variantId);

  @override
  CreateStockAdjustmentDetailRequest batchId(String batchId) =>
      call(batchId: batchId);

  @override
  CreateStockAdjustmentDetailRequest adjustmentQuantity(
    int? adjustmentQuantity,
  ) => call(adjustmentQuantity: adjustmentQuantity);

  @override
  CreateStockAdjustmentDetailRequest note(String? note) => call(note: note);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateStockAdjustmentDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateStockAdjustmentDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateStockAdjustmentDetailRequest call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? batchId = const $CopyWithPlaceholder(),
    Object? adjustmentQuantity = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
  }) {
    return CreateStockAdjustmentDetailRequest(
      variantId: variantId == const $CopyWithPlaceholder() || variantId == null
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String,
      batchId: batchId == const $CopyWithPlaceholder() || batchId == null
          ? _value.batchId
          // ignore: cast_nullable_to_non_nullable
          : batchId as String,
      adjustmentQuantity: adjustmentQuantity == const $CopyWithPlaceholder()
          ? _value.adjustmentQuantity
          // ignore: cast_nullable_to_non_nullable
          : adjustmentQuantity as int?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
    );
  }
}

extension $CreateStockAdjustmentDetailRequestCopyWith
    on CreateStockAdjustmentDetailRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateStockAdjustmentDetailRequest.copyWith(...)` or `instanceOfCreateStockAdjustmentDetailRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateStockAdjustmentDetailRequestCWProxy get copyWith =>
      _$CreateStockAdjustmentDetailRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateStockAdjustmentDetailRequest _$CreateStockAdjustmentDetailRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateStockAdjustmentDetailRequest', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['variantId', 'batchId']);
  final val = CreateStockAdjustmentDetailRequest(
    variantId: $checkedConvert('variantId', (v) => v as String),
    batchId: $checkedConvert('batchId', (v) => v as String),
    adjustmentQuantity: $checkedConvert(
      'adjustmentQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    note: $checkedConvert('note', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CreateStockAdjustmentDetailRequestToJson(
  CreateStockAdjustmentDetailRequest instance,
) => <String, dynamic>{
  'variantId': instance.variantId,
  'batchId': instance.batchId,
  'adjustmentQuantity': ?instance.adjustmentQuantity,
  'note': ?instance.note,
};
