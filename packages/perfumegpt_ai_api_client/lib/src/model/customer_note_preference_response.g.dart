// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_note_preference_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomerNotePreferenceResponseCWProxy {
  CustomerNotePreferenceResponse noteId(int? noteId);

  CustomerNotePreferenceResponse noteName(String noteName);

  CustomerNotePreferenceResponse noteType(NoteType? noteType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CustomerNotePreferenceResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CustomerNotePreferenceResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CustomerNotePreferenceResponse call({
    int? noteId,
    String noteName,
    NoteType? noteType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCustomerNotePreferenceResponse.copyWith(...)` or call `instanceOfCustomerNotePreferenceResponse.copyWith.fieldName(value)` for a single field.
class _$CustomerNotePreferenceResponseCWProxyImpl
    implements _$CustomerNotePreferenceResponseCWProxy {
  const _$CustomerNotePreferenceResponseCWProxyImpl(this._value);

  final CustomerNotePreferenceResponse _value;

  @override
  CustomerNotePreferenceResponse noteId(int? noteId) => call(noteId: noteId);

  @override
  CustomerNotePreferenceResponse noteName(String noteName) =>
      call(noteName: noteName);

  @override
  CustomerNotePreferenceResponse noteType(NoteType? noteType) =>
      call(noteType: noteType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CustomerNotePreferenceResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CustomerNotePreferenceResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CustomerNotePreferenceResponse call({
    Object? noteId = const $CopyWithPlaceholder(),
    Object? noteName = const $CopyWithPlaceholder(),
    Object? noteType = const $CopyWithPlaceholder(),
  }) {
    return CustomerNotePreferenceResponse(
      noteId: noteId == const $CopyWithPlaceholder()
          ? _value.noteId
          // ignore: cast_nullable_to_non_nullable
          : noteId as int?,
      noteName: noteName == const $CopyWithPlaceholder() || noteName == null
          ? _value.noteName
          // ignore: cast_nullable_to_non_nullable
          : noteName as String,
      noteType: noteType == const $CopyWithPlaceholder()
          ? _value.noteType
          // ignore: cast_nullable_to_non_nullable
          : noteType as NoteType?,
    );
  }
}

extension $CustomerNotePreferenceResponseCopyWith
    on CustomerNotePreferenceResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCustomerNotePreferenceResponse.copyWith(...)` or `instanceOfCustomerNotePreferenceResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomerNotePreferenceResponseCWProxy get copyWith =>
      _$CustomerNotePreferenceResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerNotePreferenceResponse _$CustomerNotePreferenceResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CustomerNotePreferenceResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['noteName']);
  final val = CustomerNotePreferenceResponse(
    noteId: $checkedConvert('noteId', (v) => (v as num?)?.toInt()),
    noteName: $checkedConvert('noteName', (v) => v as String),
    noteType: $checkedConvert(
      'noteType',
      (v) => $enumDecodeNullable(_$NoteTypeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$CustomerNotePreferenceResponseToJson(
  CustomerNotePreferenceResponse instance,
) => <String, dynamic>{
  'noteId': ?instance.noteId,
  'noteName': instance.noteName,
  'noteType': ?_$NoteTypeEnumMap[instance.noteType],
};

const _$NoteTypeEnumMap = {
  NoteType.top: 'Top',
  NoteType.heart: 'Heart',
  NoteType.base_: 'Base',
};
