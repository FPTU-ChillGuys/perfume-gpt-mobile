// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_inspection_detail_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RecordInspectionDetailDtoCWProxy {
  RecordInspectionDetailDto detailId(String detailId);

  RecordInspectionDetailDto isRestocked(bool? isRestocked);

  RecordInspectionDetailDto note(String? note);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RecordInspectionDetailDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RecordInspectionDetailDto(...).copyWith(id: 12, name: "My name")
  /// ```
  RecordInspectionDetailDto call({
    String detailId,
    bool? isRestocked,
    String? note,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRecordInspectionDetailDto.copyWith(...)` or call `instanceOfRecordInspectionDetailDto.copyWith.fieldName(value)` for a single field.
class _$RecordInspectionDetailDtoCWProxyImpl
    implements _$RecordInspectionDetailDtoCWProxy {
  const _$RecordInspectionDetailDtoCWProxyImpl(this._value);

  final RecordInspectionDetailDto _value;

  @override
  RecordInspectionDetailDto detailId(String detailId) =>
      call(detailId: detailId);

  @override
  RecordInspectionDetailDto isRestocked(bool? isRestocked) =>
      call(isRestocked: isRestocked);

  @override
  RecordInspectionDetailDto note(String? note) => call(note: note);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RecordInspectionDetailDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RecordInspectionDetailDto(...).copyWith(id: 12, name: "My name")
  /// ```
  RecordInspectionDetailDto call({
    Object? detailId = const $CopyWithPlaceholder(),
    Object? isRestocked = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
  }) {
    return RecordInspectionDetailDto(
      detailId: detailId == const $CopyWithPlaceholder() || detailId == null
          ? _value.detailId
          // ignore: cast_nullable_to_non_nullable
          : detailId as String,
      isRestocked: isRestocked == const $CopyWithPlaceholder()
          ? _value.isRestocked
          // ignore: cast_nullable_to_non_nullable
          : isRestocked as bool?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
    );
  }
}

extension $RecordInspectionDetailDtoCopyWith on RecordInspectionDetailDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRecordInspectionDetailDto.copyWith(...)` or `instanceOfRecordInspectionDetailDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RecordInspectionDetailDtoCWProxy get copyWith =>
      _$RecordInspectionDetailDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordInspectionDetailDto _$RecordInspectionDetailDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RecordInspectionDetailDto', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['detailId']);
  final val = RecordInspectionDetailDto(
    detailId: $checkedConvert('detailId', (v) => v as String),
    isRestocked: $checkedConvert('isRestocked', (v) => v as bool?),
    note: $checkedConvert('note', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$RecordInspectionDetailDtoToJson(
  RecordInspectionDetailDto instance,
) => <String, dynamic>{
  'detailId': instance.detailId,
  'isRestocked': ?instance.isRestocked,
  'note': ?instance.note,
};
