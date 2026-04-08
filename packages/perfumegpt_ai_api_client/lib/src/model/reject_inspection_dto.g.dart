// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_inspection_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RejectInspectionDtoCWProxy {
  RejectInspectionDto note(String note);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RejectInspectionDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RejectInspectionDto(...).copyWith(id: 12, name: "My name")
  /// ```
  RejectInspectionDto call({String note});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRejectInspectionDto.copyWith(...)` or call `instanceOfRejectInspectionDto.copyWith.fieldName(value)` for a single field.
class _$RejectInspectionDtoCWProxyImpl implements _$RejectInspectionDtoCWProxy {
  const _$RejectInspectionDtoCWProxyImpl(this._value);

  final RejectInspectionDto _value;

  @override
  RejectInspectionDto note(String note) => call(note: note);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RejectInspectionDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RejectInspectionDto(...).copyWith(id: 12, name: "My name")
  /// ```
  RejectInspectionDto call({Object? note = const $CopyWithPlaceholder()}) {
    return RejectInspectionDto(
      note: note == const $CopyWithPlaceholder() || note == null
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String,
    );
  }
}

extension $RejectInspectionDtoCopyWith on RejectInspectionDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRejectInspectionDto.copyWith(...)` or `instanceOfRejectInspectionDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RejectInspectionDtoCWProxy get copyWith =>
      _$RejectInspectionDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RejectInspectionDto _$RejectInspectionDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RejectInspectionDto', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['note']);
      final val = RejectInspectionDto(
        note: $checkedConvert('note', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$RejectInspectionDtoToJson(
  RejectInspectionDto instance,
) => <String, dynamic>{'note': instance.note};
