// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_stock_adjustment_detail_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateStockAdjustmentDetailRequestCWProxy {
  CreateStockAdjustmentDetailRequest variantId(String? variantId);

  CreateStockAdjustmentDetailRequest batchId(String? batchId);

  CreateStockAdjustmentDetailRequest adjustmentQuantity(
    int? adjustmentQuantity,
  );

  CreateStockAdjustmentDetailRequest note(String? note);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateStockAdjustmentDetailRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateStockAdjustmentDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateStockAdjustmentDetailRequest call({
    String? variantId,
    String? batchId,
    int? adjustmentQuantity,
    String? note,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateStockAdjustmentDetailRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateStockAdjustmentDetailRequest.copyWith.fieldName(...)`
class _$CreateStockAdjustmentDetailRequestCWProxyImpl
    implements _$CreateStockAdjustmentDetailRequestCWProxy {
  const _$CreateStockAdjustmentDetailRequestCWProxyImpl(this._value);

  final CreateStockAdjustmentDetailRequest _value;

  @override
  CreateStockAdjustmentDetailRequest variantId(String? variantId) =>
      this(variantId: variantId);

  @override
  CreateStockAdjustmentDetailRequest batchId(String? batchId) =>
      this(batchId: batchId);

  @override
  CreateStockAdjustmentDetailRequest adjustmentQuantity(
    int? adjustmentQuantity,
  ) => this(adjustmentQuantity: adjustmentQuantity);

  @override
  CreateStockAdjustmentDetailRequest note(String? note) => this(note: note);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateStockAdjustmentDetailRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateStockAdjustmentDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateStockAdjustmentDetailRequest call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? batchId = const $CopyWithPlaceholder(),
    Object? adjustmentQuantity = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
  }) {
    return CreateStockAdjustmentDetailRequest(
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      batchId: batchId == const $CopyWithPlaceholder()
          ? _value.batchId
          // ignore: cast_nullable_to_non_nullable
          : batchId as String?,
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
  /// Returns a callable class that can be used as follows: `instanceOfCreateStockAdjustmentDetailRequest.copyWith(...)` or like so:`instanceOfCreateStockAdjustmentDetailRequest.copyWith.fieldName(...)`.
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
  final val = CreateStockAdjustmentDetailRequest(
    variantId: $checkedConvert('variantId', (v) => v as String?),
    batchId: $checkedConvert('batchId', (v) => v as String?),
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
  'variantId': ?instance.variantId,
  'batchId': ?instance.batchId,
  'adjustmentQuantity': ?instance.adjustmentQuantity,
  'note': ?instance.note,
};
