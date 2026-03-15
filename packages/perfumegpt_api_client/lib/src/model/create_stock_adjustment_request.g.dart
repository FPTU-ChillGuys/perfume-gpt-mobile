// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_stock_adjustment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateStockAdjustmentRequestCWProxy {
  CreateStockAdjustmentRequest adjustmentDate(DateTime? adjustmentDate);

  CreateStockAdjustmentRequest reason(StockAdjustmentReason? reason);

  CreateStockAdjustmentRequest note(String? note);

  CreateStockAdjustmentRequest adjustmentDetails(
    List<CreateStockAdjustmentDetailRequest>? adjustmentDetails,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateStockAdjustmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateStockAdjustmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateStockAdjustmentRequest call({
    DateTime? adjustmentDate,
    StockAdjustmentReason? reason,
    String? note,
    List<CreateStockAdjustmentDetailRequest>? adjustmentDetails,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateStockAdjustmentRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateStockAdjustmentRequest.copyWith.fieldName(...)`
class _$CreateStockAdjustmentRequestCWProxyImpl
    implements _$CreateStockAdjustmentRequestCWProxy {
  const _$CreateStockAdjustmentRequestCWProxyImpl(this._value);

  final CreateStockAdjustmentRequest _value;

  @override
  CreateStockAdjustmentRequest adjustmentDate(DateTime? adjustmentDate) =>
      this(adjustmentDate: adjustmentDate);

  @override
  CreateStockAdjustmentRequest reason(StockAdjustmentReason? reason) =>
      this(reason: reason);

  @override
  CreateStockAdjustmentRequest note(String? note) => this(note: note);

  @override
  CreateStockAdjustmentRequest adjustmentDetails(
    List<CreateStockAdjustmentDetailRequest>? adjustmentDetails,
  ) => this(adjustmentDetails: adjustmentDetails);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateStockAdjustmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateStockAdjustmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateStockAdjustmentRequest call({
    Object? adjustmentDate = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
    Object? adjustmentDetails = const $CopyWithPlaceholder(),
  }) {
    return CreateStockAdjustmentRequest(
      adjustmentDate: adjustmentDate == const $CopyWithPlaceholder()
          ? _value.adjustmentDate
          // ignore: cast_nullable_to_non_nullable
          : adjustmentDate as DateTime?,
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as StockAdjustmentReason?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
      adjustmentDetails: adjustmentDetails == const $CopyWithPlaceholder()
          ? _value.adjustmentDetails
          // ignore: cast_nullable_to_non_nullable
          : adjustmentDetails as List<CreateStockAdjustmentDetailRequest>?,
    );
  }
}

extension $CreateStockAdjustmentRequestCopyWith
    on CreateStockAdjustmentRequest {
  /// Returns a callable class that can be used as follows: `instanceOfCreateStockAdjustmentRequest.copyWith(...)` or like so:`instanceOfCreateStockAdjustmentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateStockAdjustmentRequestCWProxy get copyWith =>
      _$CreateStockAdjustmentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateStockAdjustmentRequest _$CreateStockAdjustmentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateStockAdjustmentRequest', json, ($checkedConvert) {
  final val = CreateStockAdjustmentRequest(
    adjustmentDate: $checkedConvert(
      'adjustmentDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    reason: $checkedConvert(
      'reason',
      (v) => $enumDecodeNullable(_$StockAdjustmentReasonEnumMap, v),
    ),
    note: $checkedConvert('note', (v) => v as String?),
    adjustmentDetails: $checkedConvert(
      'adjustmentDetails',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => CreateStockAdjustmentDetailRequest.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateStockAdjustmentRequestToJson(
  CreateStockAdjustmentRequest instance,
) => <String, dynamic>{
  'adjustmentDate': ?instance.adjustmentDate?.toIso8601String(),
  'reason': ?_$StockAdjustmentReasonEnumMap[instance.reason],
  'note': ?instance.note,
  'adjustmentDetails': ?instance.adjustmentDetails
      ?.map((e) => e.toJson())
      .toList(),
};

const _$StockAdjustmentReasonEnumMap = {
  StockAdjustmentReason.damage: 'Damage',
  StockAdjustmentReason.expired: 'Expired',
  StockAdjustmentReason.theft: 'Theft',
  StockAdjustmentReason.loss: 'Loss',
  StockAdjustmentReason.found: 'Found',
  StockAdjustmentReason.correction: 'Correction',
  StockAdjustmentReason.return_: 'Return',
  StockAdjustmentReason.other: 'Other',
};
