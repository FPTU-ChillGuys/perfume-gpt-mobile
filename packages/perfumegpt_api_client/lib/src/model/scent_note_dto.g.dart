// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scent_note_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ScentNoteDtoCWProxy {
  ScentNoteDto noteId(int? noteId);

  ScentNoteDto type(NoteType? type);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ScentNoteDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ScentNoteDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ScentNoteDto call({int? noteId, NoteType? type});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfScentNoteDto.copyWith(...)` or call `instanceOfScentNoteDto.copyWith.fieldName(value)` for a single field.
class _$ScentNoteDtoCWProxyImpl implements _$ScentNoteDtoCWProxy {
  const _$ScentNoteDtoCWProxyImpl(this._value);

  final ScentNoteDto _value;

  @override
  ScentNoteDto noteId(int? noteId) => call(noteId: noteId);

  @override
  ScentNoteDto type(NoteType? type) => call(type: type);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ScentNoteDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ScentNoteDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ScentNoteDto call({
    Object? noteId = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return ScentNoteDto(
      noteId: noteId == const $CopyWithPlaceholder()
          ? _value.noteId
          // ignore: cast_nullable_to_non_nullable
          : noteId as int?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as NoteType?,
    );
  }
}

extension $ScentNoteDtoCopyWith on ScentNoteDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfScentNoteDto.copyWith(...)` or `instanceOfScentNoteDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ScentNoteDtoCWProxy get copyWith => _$ScentNoteDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScentNoteDto _$ScentNoteDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ScentNoteDto', json, ($checkedConvert) {
      final val = ScentNoteDto(
        noteId: $checkedConvert('noteId', (v) => (v as num?)?.toInt()),
        type: $checkedConvert(
          'type',
          (v) => $enumDecodeNullable(_$NoteTypeEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ScentNoteDtoToJson(ScentNoteDto instance) =>
    <String, dynamic>{
      'noteId': ?instance.noteId,
      'type': ?_$NoteTypeEnumMap[instance.type],
    };

const _$NoteTypeEnumMap = {
  NoteType.top: 'Top',
  NoteType.heart: 'Heart',
  NoteType.base_: 'Base',
};
