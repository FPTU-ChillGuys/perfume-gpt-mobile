// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_inspection_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RecordInspectionDtoCWProxy {
  RecordInspectionDto approvedRefundAmount(num? approvedRefundAmount);

  RecordInspectionDto inspectionResults(
    List<RecordInspectionDetailDto> inspectionResults,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RecordInspectionDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RecordInspectionDto(...).copyWith(id: 12, name: "My name")
  /// ```
  RecordInspectionDto call({
    num? approvedRefundAmount,
    List<RecordInspectionDetailDto> inspectionResults,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRecordInspectionDto.copyWith(...)` or call `instanceOfRecordInspectionDto.copyWith.fieldName(value)` for a single field.
class _$RecordInspectionDtoCWProxyImpl implements _$RecordInspectionDtoCWProxy {
  const _$RecordInspectionDtoCWProxyImpl(this._value);

  final RecordInspectionDto _value;

  @override
  RecordInspectionDto approvedRefundAmount(num? approvedRefundAmount) =>
      call(approvedRefundAmount: approvedRefundAmount);

  @override
  RecordInspectionDto inspectionResults(
    List<RecordInspectionDetailDto> inspectionResults,
  ) => call(inspectionResults: inspectionResults);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RecordInspectionDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RecordInspectionDto(...).copyWith(id: 12, name: "My name")
  /// ```
  RecordInspectionDto call({
    Object? approvedRefundAmount = const $CopyWithPlaceholder(),
    Object? inspectionResults = const $CopyWithPlaceholder(),
  }) {
    return RecordInspectionDto(
      approvedRefundAmount: approvedRefundAmount == const $CopyWithPlaceholder()
          ? _value.approvedRefundAmount
          // ignore: cast_nullable_to_non_nullable
          : approvedRefundAmount as num?,
      inspectionResults:
          inspectionResults == const $CopyWithPlaceholder() ||
              inspectionResults == null
          ? _value.inspectionResults
          // ignore: cast_nullable_to_non_nullable
          : inspectionResults as List<RecordInspectionDetailDto>,
    );
  }
}

extension $RecordInspectionDtoCopyWith on RecordInspectionDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRecordInspectionDto.copyWith(...)` or `instanceOfRecordInspectionDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RecordInspectionDtoCWProxy get copyWith =>
      _$RecordInspectionDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordInspectionDto _$RecordInspectionDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RecordInspectionDto', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['inspectionResults']);
      final val = RecordInspectionDto(
        approvedRefundAmount: $checkedConvert(
          'approvedRefundAmount',
          (v) => v as num?,
        ),
        inspectionResults: $checkedConvert(
          'inspectionResults',
          (v) => (v as List<dynamic>)
              .map(
                (e) => RecordInspectionDetailDto.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$RecordInspectionDtoToJson(
  RecordInspectionDto instance,
) => <String, dynamic>{
  'approvedRefundAmount': ?instance.approvedRefundAmount,
  'inspectionResults': instance.inspectionResults
      .map((e) => e.toJson())
      .toList(),
};
