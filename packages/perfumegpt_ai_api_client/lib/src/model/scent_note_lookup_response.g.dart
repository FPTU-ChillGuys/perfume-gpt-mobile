// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scent_note_lookup_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ScentNoteLookupResponseCWProxy {
  ScentNoteLookupResponse id(int? id);

  ScentNoteLookupResponse name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ScentNoteLookupResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ScentNoteLookupResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ScentNoteLookupResponse call({int? id, String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfScentNoteLookupResponse.copyWith(...)` or call `instanceOfScentNoteLookupResponse.copyWith.fieldName(value)` for a single field.
class _$ScentNoteLookupResponseCWProxyImpl
    implements _$ScentNoteLookupResponseCWProxy {
  const _$ScentNoteLookupResponseCWProxyImpl(this._value);

  final ScentNoteLookupResponse _value;

  @override
  ScentNoteLookupResponse id(int? id) => call(id: id);

  @override
  ScentNoteLookupResponse name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ScentNoteLookupResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ScentNoteLookupResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ScentNoteLookupResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return ScentNoteLookupResponse(
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

extension $ScentNoteLookupResponseCopyWith on ScentNoteLookupResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfScentNoteLookupResponse.copyWith(...)` or `instanceOfScentNoteLookupResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ScentNoteLookupResponseCWProxy get copyWith =>
      _$ScentNoteLookupResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScentNoteLookupResponse _$ScentNoteLookupResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ScentNoteLookupResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = ScentNoteLookupResponse(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ScentNoteLookupResponseToJson(
  ScentNoteLookupResponse instance,
) => <String, dynamic>{'id': ?instance.id, 'name': instance.name};
