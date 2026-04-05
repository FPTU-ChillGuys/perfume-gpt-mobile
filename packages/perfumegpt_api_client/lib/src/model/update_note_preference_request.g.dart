// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_note_preference_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateNotePreferenceRequestCWProxy {
  UpdateNotePreferenceRequest noteId(int? noteId);

  UpdateNotePreferenceRequest noteType(NoteType? noteType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateNotePreferenceRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateNotePreferenceRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateNotePreferenceRequest call({int? noteId, NoteType? noteType});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateNotePreferenceRequest.copyWith(...)` or call `instanceOfUpdateNotePreferenceRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateNotePreferenceRequestCWProxyImpl
    implements _$UpdateNotePreferenceRequestCWProxy {
  const _$UpdateNotePreferenceRequestCWProxyImpl(this._value);

  final UpdateNotePreferenceRequest _value;

  @override
  UpdateNotePreferenceRequest noteId(int? noteId) => call(noteId: noteId);

  @override
  UpdateNotePreferenceRequest noteType(NoteType? noteType) =>
      call(noteType: noteType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateNotePreferenceRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateNotePreferenceRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateNotePreferenceRequest call({
    Object? noteId = const $CopyWithPlaceholder(),
    Object? noteType = const $CopyWithPlaceholder(),
  }) {
    return UpdateNotePreferenceRequest(
      noteId: noteId == const $CopyWithPlaceholder()
          ? _value.noteId
          // ignore: cast_nullable_to_non_nullable
          : noteId as int?,
      noteType: noteType == const $CopyWithPlaceholder()
          ? _value.noteType
          // ignore: cast_nullable_to_non_nullable
          : noteType as NoteType?,
    );
  }
}

extension $UpdateNotePreferenceRequestCopyWith on UpdateNotePreferenceRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateNotePreferenceRequest.copyWith(...)` or `instanceOfUpdateNotePreferenceRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateNotePreferenceRequestCWProxy get copyWith =>
      _$UpdateNotePreferenceRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateNotePreferenceRequest _$UpdateNotePreferenceRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateNotePreferenceRequest', json, ($checkedConvert) {
  final val = UpdateNotePreferenceRequest(
    noteId: $checkedConvert('noteId', (v) => (v as num?)?.toInt()),
    noteType: $checkedConvert(
      'noteType',
      (v) => $enumDecodeNullable(_$NoteTypeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateNotePreferenceRequestToJson(
  UpdateNotePreferenceRequest instance,
) => <String, dynamic>{
  'noteId': ?instance.noteId,
  'noteType': ?_$NoteTypeEnumMap[instance.noteType],
};

const _$NoteTypeEnumMap = {
  NoteType.top: 'Top',
  NoteType.heart: 'Heart',
  NoteType.base_: 'Base',
};
