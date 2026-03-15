// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_stock_adjustment_detail_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VerifyStockAdjustmentDetailRequestCWProxy {
  VerifyStockAdjustmentDetailRequest detailId(String? detailId);

  VerifyStockAdjustmentDetailRequest approvedQuantity(int? approvedQuantity);

  VerifyStockAdjustmentDetailRequest note(String? note);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VerifyStockAdjustmentDetailRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VerifyStockAdjustmentDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  VerifyStockAdjustmentDetailRequest call({
    String? detailId,
    int? approvedQuantity,
    String? note,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVerifyStockAdjustmentDetailRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVerifyStockAdjustmentDetailRequest.copyWith.fieldName(...)`
class _$VerifyStockAdjustmentDetailRequestCWProxyImpl
    implements _$VerifyStockAdjustmentDetailRequestCWProxy {
  const _$VerifyStockAdjustmentDetailRequestCWProxyImpl(this._value);

  final VerifyStockAdjustmentDetailRequest _value;

  @override
  VerifyStockAdjustmentDetailRequest detailId(String? detailId) =>
      this(detailId: detailId);

  @override
  VerifyStockAdjustmentDetailRequest approvedQuantity(int? approvedQuantity) =>
      this(approvedQuantity: approvedQuantity);

  @override
  VerifyStockAdjustmentDetailRequest note(String? note) => this(note: note);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VerifyStockAdjustmentDetailRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VerifyStockAdjustmentDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  VerifyStockAdjustmentDetailRequest call({
    Object? detailId = const $CopyWithPlaceholder(),
    Object? approvedQuantity = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
  }) {
    return VerifyStockAdjustmentDetailRequest(
      detailId: detailId == const $CopyWithPlaceholder()
          ? _value.detailId
          // ignore: cast_nullable_to_non_nullable
          : detailId as String?,
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

extension $VerifyStockAdjustmentDetailRequestCopyWith
    on VerifyStockAdjustmentDetailRequest {
  /// Returns a callable class that can be used as follows: `instanceOfVerifyStockAdjustmentDetailRequest.copyWith(...)` or like so:`instanceOfVerifyStockAdjustmentDetailRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VerifyStockAdjustmentDetailRequestCWProxy get copyWith =>
      _$VerifyStockAdjustmentDetailRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyStockAdjustmentDetailRequest _$VerifyStockAdjustmentDetailRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VerifyStockAdjustmentDetailRequest', json, (
  $checkedConvert,
) {
  final val = VerifyStockAdjustmentDetailRequest(
    detailId: $checkedConvert('detailId', (v) => v as String?),
    approvedQuantity: $checkedConvert(
      'approvedQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    note: $checkedConvert('note', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$VerifyStockAdjustmentDetailRequestToJson(
  VerifyStockAdjustmentDetailRequest instance,
) => <String, dynamic>{
  'detailId': ?instance.detailId,
  'approvedQuantity': ?instance.approvedQuantity,
  'note': ?instance.note,
};
