// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_inspection_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RecordInspectionDtoCWProxy {
  RecordInspectionDto approvedRefundAmount(num? approvedRefundAmount);

  RecordInspectionDto isRestocked(bool? isRestocked);

  RecordInspectionDto inspectionNote(String? inspectionNote);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RecordInspectionDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RecordInspectionDto(...).copyWith(id: 12, name: "My name")
  /// ```
  RecordInspectionDto call({
    num? approvedRefundAmount,
    bool? isRestocked,
    String? inspectionNote,
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
  RecordInspectionDto isRestocked(bool? isRestocked) =>
      call(isRestocked: isRestocked);

  @override
  RecordInspectionDto inspectionNote(String? inspectionNote) =>
      call(inspectionNote: inspectionNote);

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
    Object? isRestocked = const $CopyWithPlaceholder(),
    Object? inspectionNote = const $CopyWithPlaceholder(),
  }) {
    return RecordInspectionDto(
      approvedRefundAmount: approvedRefundAmount == const $CopyWithPlaceholder()
          ? _value.approvedRefundAmount
          // ignore: cast_nullable_to_non_nullable
          : approvedRefundAmount as num?,
      isRestocked: isRestocked == const $CopyWithPlaceholder()
          ? _value.isRestocked
          // ignore: cast_nullable_to_non_nullable
          : isRestocked as bool?,
      inspectionNote: inspectionNote == const $CopyWithPlaceholder()
          ? _value.inspectionNote
          // ignore: cast_nullable_to_non_nullable
          : inspectionNote as String?,
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
      final val = RecordInspectionDto(
        approvedRefundAmount: $checkedConvert(
          'approvedRefundAmount',
          (v) => v as num?,
        ),
        isRestocked: $checkedConvert('isRestocked', (v) => v as bool?),
        inspectionNote: $checkedConvert('inspectionNote', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$RecordInspectionDtoToJson(
  RecordInspectionDto instance,
) => <String, dynamic>{
  'approvedRefundAmount': ?instance.approvedRefundAmount,
  'isRestocked': ?instance.isRestocked,
  'inspectionNote': ?instance.inspectionNote,
};
