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

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateStockAdjustmentRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateStockAdjustmentRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateStockAdjustmentRequest call({
    DateTime? adjustmentDate,
    StockAdjustmentReason? reason,
    String? note,
    List<CreateStockAdjustmentDetailRequest>? adjustmentDetails,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateStockAdjustmentRequest.copyWith(...)` or call `instanceOfCreateStockAdjustmentRequest.copyWith.fieldName(value)` for a single field.
class _$CreateStockAdjustmentRequestCWProxyImpl
    implements _$CreateStockAdjustmentRequestCWProxy {
  const _$CreateStockAdjustmentRequestCWProxyImpl(this._value);

  final CreateStockAdjustmentRequest _value;

  @override
  CreateStockAdjustmentRequest adjustmentDate(DateTime? adjustmentDate) =>
      call(adjustmentDate: adjustmentDate);

  @override
  CreateStockAdjustmentRequest reason(StockAdjustmentReason? reason) =>
      call(reason: reason);

  @override
  CreateStockAdjustmentRequest note(String? note) => call(note: note);

  @override
  CreateStockAdjustmentRequest adjustmentDetails(
    List<CreateStockAdjustmentDetailRequest>? adjustmentDetails,
  ) => call(adjustmentDetails: adjustmentDetails);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateStockAdjustmentRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateStockAdjustmentRequest(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateStockAdjustmentRequest.copyWith(...)` or `instanceOfCreateStockAdjustmentRequest.copyWith.fieldName(...)`.
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
