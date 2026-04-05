// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_inspection_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StartInspectionDtoCWProxy {
  StartInspectionDto inspectionNote(String? inspectionNote);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StartInspectionDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StartInspectionDto(...).copyWith(id: 12, name: "My name")
  /// ```
  StartInspectionDto call({String? inspectionNote});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfStartInspectionDto.copyWith(...)` or call `instanceOfStartInspectionDto.copyWith.fieldName(value)` for a single field.
class _$StartInspectionDtoCWProxyImpl implements _$StartInspectionDtoCWProxy {
  const _$StartInspectionDtoCWProxyImpl(this._value);

  final StartInspectionDto _value;

  @override
  StartInspectionDto inspectionNote(String? inspectionNote) =>
      call(inspectionNote: inspectionNote);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StartInspectionDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StartInspectionDto(...).copyWith(id: 12, name: "My name")
  /// ```
  StartInspectionDto call({
    Object? inspectionNote = const $CopyWithPlaceholder(),
  }) {
    return StartInspectionDto(
      inspectionNote: inspectionNote == const $CopyWithPlaceholder()
          ? _value.inspectionNote
          // ignore: cast_nullable_to_non_nullable
          : inspectionNote as String?,
    );
  }
}

extension $StartInspectionDtoCopyWith on StartInspectionDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfStartInspectionDto.copyWith(...)` or `instanceOfStartInspectionDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StartInspectionDtoCWProxy get copyWith =>
      _$StartInspectionDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartInspectionDto _$StartInspectionDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StartInspectionDto', json, ($checkedConvert) {
      final val = StartInspectionDto(
        inspectionNote: $checkedConvert('inspectionNote', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$StartInspectionDtoToJson(StartInspectionDto instance) =>
    <String, dynamic>{'inspectionNote': ?instance.inspectionNote};
