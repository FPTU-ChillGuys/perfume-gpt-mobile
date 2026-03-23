// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_stock_adjustment_detail_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VerifyStockAdjustmentDetailRequestCWProxy {
  VerifyStockAdjustmentDetailRequest detailId(String? detailId);

  VerifyStockAdjustmentDetailRequest approvedQuantity(int? approvedQuantity);

  VerifyStockAdjustmentDetailRequest note(String? note);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VerifyStockAdjustmentDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VerifyStockAdjustmentDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  VerifyStockAdjustmentDetailRequest call({
    String? detailId,
    int? approvedQuantity,
    String? note,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVerifyStockAdjustmentDetailRequest.copyWith(...)` or call `instanceOfVerifyStockAdjustmentDetailRequest.copyWith.fieldName(value)` for a single field.
class _$VerifyStockAdjustmentDetailRequestCWProxyImpl
    implements _$VerifyStockAdjustmentDetailRequestCWProxy {
  const _$VerifyStockAdjustmentDetailRequestCWProxyImpl(this._value);

  final VerifyStockAdjustmentDetailRequest _value;

  @override
  VerifyStockAdjustmentDetailRequest detailId(String? detailId) =>
      call(detailId: detailId);

  @override
  VerifyStockAdjustmentDetailRequest approvedQuantity(int? approvedQuantity) =>
      call(approvedQuantity: approvedQuantity);

  @override
  VerifyStockAdjustmentDetailRequest note(String? note) => call(note: note);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VerifyStockAdjustmentDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VerifyStockAdjustmentDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVerifyStockAdjustmentDetailRequest.copyWith(...)` or `instanceOfVerifyStockAdjustmentDetailRequest.copyWith.fieldName(...)`.
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
