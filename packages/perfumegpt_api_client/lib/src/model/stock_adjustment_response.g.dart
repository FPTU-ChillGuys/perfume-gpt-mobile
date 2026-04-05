// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_adjustment_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StockAdjustmentResponseCWProxy {
  StockAdjustmentResponse id(String? id);

  StockAdjustmentResponse createdById(String? createdById);

  StockAdjustmentResponse createdByName(String createdByName);

  StockAdjustmentResponse verifiedById(String? verifiedById);

  StockAdjustmentResponse verifiedByName(String? verifiedByName);

  StockAdjustmentResponse adjustmentDate(DateTime? adjustmentDate);

  StockAdjustmentResponse reason(StockAdjustmentReason? reason);

  StockAdjustmentResponse note(String? note);

  StockAdjustmentResponse status(StockAdjustmentStatus? status);

  StockAdjustmentResponse adjustmentDetails(
    List<StockAdjustmentDetailResponse> adjustmentDetails,
  );

  StockAdjustmentResponse createdAt(DateTime? createdAt);

  StockAdjustmentResponse updatedAt(DateTime? updatedAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StockAdjustmentResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StockAdjustmentResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  StockAdjustmentResponse call({
    String? id,
    String? createdById,
    String createdByName,
    String? verifiedById,
    String? verifiedByName,
    DateTime? adjustmentDate,
    StockAdjustmentReason? reason,
    String? note,
    StockAdjustmentStatus? status,
    List<StockAdjustmentDetailResponse> adjustmentDetails,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfStockAdjustmentResponse.copyWith(...)` or call `instanceOfStockAdjustmentResponse.copyWith.fieldName(value)` for a single field.
class _$StockAdjustmentResponseCWProxyImpl
    implements _$StockAdjustmentResponseCWProxy {
  const _$StockAdjustmentResponseCWProxyImpl(this._value);

  final StockAdjustmentResponse _value;

  @override
  StockAdjustmentResponse id(String? id) => call(id: id);

  @override
  StockAdjustmentResponse createdById(String? createdById) =>
      call(createdById: createdById);

  @override
  StockAdjustmentResponse createdByName(String createdByName) =>
      call(createdByName: createdByName);

  @override
  StockAdjustmentResponse verifiedById(String? verifiedById) =>
      call(verifiedById: verifiedById);

  @override
  StockAdjustmentResponse verifiedByName(String? verifiedByName) =>
      call(verifiedByName: verifiedByName);

  @override
  StockAdjustmentResponse adjustmentDate(DateTime? adjustmentDate) =>
      call(adjustmentDate: adjustmentDate);

  @override
  StockAdjustmentResponse reason(StockAdjustmentReason? reason) =>
      call(reason: reason);

  @override
  StockAdjustmentResponse note(String? note) => call(note: note);

  @override
  StockAdjustmentResponse status(StockAdjustmentStatus? status) =>
      call(status: status);

  @override
  StockAdjustmentResponse adjustmentDetails(
    List<StockAdjustmentDetailResponse> adjustmentDetails,
  ) => call(adjustmentDetails: adjustmentDetails);

  @override
  StockAdjustmentResponse createdAt(DateTime? createdAt) =>
      call(createdAt: createdAt);

  @override
  StockAdjustmentResponse updatedAt(DateTime? updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StockAdjustmentResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StockAdjustmentResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  StockAdjustmentResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdById = const $CopyWithPlaceholder(),
    Object? createdByName = const $CopyWithPlaceholder(),
    Object? verifiedById = const $CopyWithPlaceholder(),
    Object? verifiedByName = const $CopyWithPlaceholder(),
    Object? adjustmentDate = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? adjustmentDetails = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return StockAdjustmentResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      createdById: createdById == const $CopyWithPlaceholder()
          ? _value.createdById
          // ignore: cast_nullable_to_non_nullable
          : createdById as String?,
      createdByName:
          createdByName == const $CopyWithPlaceholder() || createdByName == null
          ? _value.createdByName
          // ignore: cast_nullable_to_non_nullable
          : createdByName as String,
      verifiedById: verifiedById == const $CopyWithPlaceholder()
          ? _value.verifiedById
          // ignore: cast_nullable_to_non_nullable
          : verifiedById as String?,
      verifiedByName: verifiedByName == const $CopyWithPlaceholder()
          ? _value.verifiedByName
          // ignore: cast_nullable_to_non_nullable
          : verifiedByName as String?,
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
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as StockAdjustmentStatus?,
      adjustmentDetails:
          adjustmentDetails == const $CopyWithPlaceholder() ||
              adjustmentDetails == null
          ? _value.adjustmentDetails
          // ignore: cast_nullable_to_non_nullable
          : adjustmentDetails as List<StockAdjustmentDetailResponse>,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
    );
  }
}

extension $StockAdjustmentResponseCopyWith on StockAdjustmentResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfStockAdjustmentResponse.copyWith(...)` or `instanceOfStockAdjustmentResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StockAdjustmentResponseCWProxy get copyWith =>
      _$StockAdjustmentResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockAdjustmentResponse _$StockAdjustmentResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('StockAdjustmentResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['createdByName', 'adjustmentDetails']);
  final val = StockAdjustmentResponse(
    id: $checkedConvert('id', (v) => v as String?),
    createdById: $checkedConvert('createdById', (v) => v as String?),
    createdByName: $checkedConvert('createdByName', (v) => v as String),
    verifiedById: $checkedConvert('verifiedById', (v) => v as String?),
    verifiedByName: $checkedConvert('verifiedByName', (v) => v as String?),
    adjustmentDate: $checkedConvert(
      'adjustmentDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    reason: $checkedConvert(
      'reason',
      (v) => $enumDecodeNullable(_$StockAdjustmentReasonEnumMap, v),
    ),
    note: $checkedConvert('note', (v) => v as String?),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$StockAdjustmentStatusEnumMap, v),
    ),
    adjustmentDetails: $checkedConvert(
      'adjustmentDetails',
      (v) => (v as List<dynamic>)
          .map(
            (e) => StockAdjustmentDetailResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$StockAdjustmentResponseToJson(
  StockAdjustmentResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'createdById': ?instance.createdById,
  'createdByName': instance.createdByName,
  'verifiedById': ?instance.verifiedById,
  'verifiedByName': ?instance.verifiedByName,
  'adjustmentDate': ?instance.adjustmentDate?.toIso8601String(),
  'reason': ?_$StockAdjustmentReasonEnumMap[instance.reason],
  'note': ?instance.note,
  'status': ?_$StockAdjustmentStatusEnumMap[instance.status],
  'adjustmentDetails': instance.adjustmentDetails
      .map((e) => e.toJson())
      .toList(),
  'createdAt': ?instance.createdAt?.toIso8601String(),
  'updatedAt': ?instance.updatedAt?.toIso8601String(),
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

const _$StockAdjustmentStatusEnumMap = {
  StockAdjustmentStatus.pending: 'Pending',
  StockAdjustmentStatus.inProgress: 'InProgress',
  StockAdjustmentStatus.completed: 'Completed',
  StockAdjustmentStatus.cancelled: 'Cancelled',
};
