// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scent_note_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ScentNoteResponseCWProxy {
  ScentNoteResponse id(int? id);

  ScentNoteResponse name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ScentNoteResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ScentNoteResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ScentNoteResponse call({int? id, String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfScentNoteResponse.copyWith(...)` or call `instanceOfScentNoteResponse.copyWith.fieldName(value)` for a single field.
class _$ScentNoteResponseCWProxyImpl implements _$ScentNoteResponseCWProxy {
  const _$ScentNoteResponseCWProxyImpl(this._value);

  final ScentNoteResponse _value;

  @override
  ScentNoteResponse id(int? id) => call(id: id);

  @override
  ScentNoteResponse name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ScentNoteResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ScentNoteResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ScentNoteResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return ScentNoteResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $ScentNoteResponseCopyWith on ScentNoteResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfScentNoteResponse.copyWith(...)` or `instanceOfScentNoteResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ScentNoteResponseCWProxy get copyWith =>
      _$ScentNoteResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScentNoteResponse _$ScentNoteResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ScentNoteResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['name']);
      final val = ScentNoteResponse(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ScentNoteResponseToJson(ScentNoteResponse instance) =>
    <String, dynamic>{'id': ?instance.id, 'name': instance.name};
