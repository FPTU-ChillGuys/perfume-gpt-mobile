// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_scent_note_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductScentNoteResponseCWProxy {
  ProductScentNoteResponse noteId(int? noteId);

  ProductScentNoteResponse name(String name);

  ProductScentNoteResponse type(NoteType? type);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductScentNoteResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductScentNoteResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductScentNoteResponse call({int? noteId, String name, NoteType? type});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductScentNoteResponse.copyWith(...)` or call `instanceOfProductScentNoteResponse.copyWith.fieldName(value)` for a single field.
class _$ProductScentNoteResponseCWProxyImpl
    implements _$ProductScentNoteResponseCWProxy {
  const _$ProductScentNoteResponseCWProxyImpl(this._value);

  final ProductScentNoteResponse _value;

  @override
  ProductScentNoteResponse noteId(int? noteId) => call(noteId: noteId);

  @override
  ProductScentNoteResponse name(String name) => call(name: name);

  @override
  ProductScentNoteResponse type(NoteType? type) => call(type: type);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductScentNoteResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductScentNoteResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductScentNoteResponse call({
    Object? noteId = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return ProductScentNoteResponse(
      noteId: noteId == const $CopyWithPlaceholder()
          ? _value.noteId
          // ignore: cast_nullable_to_non_nullable
          : noteId as int?,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as NoteType?,
    );
  }
}

extension $ProductScentNoteResponseCopyWith on ProductScentNoteResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductScentNoteResponse.copyWith(...)` or `instanceOfProductScentNoteResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductScentNoteResponseCWProxy get copyWith =>
      _$ProductScentNoteResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductScentNoteResponse _$ProductScentNoteResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductScentNoteResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = ProductScentNoteResponse(
    noteId: $checkedConvert('noteId', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(_$NoteTypeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProductScentNoteResponseToJson(
  ProductScentNoteResponse instance,
) => <String, dynamic>{
  'noteId': ?instance.noteId,
  'name': instance.name,
  'type': ?_$NoteTypeEnumMap[instance.type],
};

const _$NoteTypeEnumMap = {
  NoteType.top: 'Top',
  NoteType.heart: 'Heart',
  NoteType.base_: 'Base',
};
