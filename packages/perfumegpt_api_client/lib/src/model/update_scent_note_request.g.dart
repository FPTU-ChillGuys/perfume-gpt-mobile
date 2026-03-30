// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_scent_note_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateScentNoteRequestCWProxy {
  UpdateScentNoteRequest name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateScentNoteRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateScentNoteRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateScentNoteRequest call({String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateScentNoteRequest.copyWith(...)` or call `instanceOfUpdateScentNoteRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateScentNoteRequestCWProxyImpl
    implements _$UpdateScentNoteRequestCWProxy {
  const _$UpdateScentNoteRequestCWProxyImpl(this._value);

  final UpdateScentNoteRequest _value;

  @override
  UpdateScentNoteRequest name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateScentNoteRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateScentNoteRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateScentNoteRequest call({Object? name = const $CopyWithPlaceholder()}) {
    return UpdateScentNoteRequest(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $UpdateScentNoteRequestCopyWith on UpdateScentNoteRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateScentNoteRequest.copyWith(...)` or `instanceOfUpdateScentNoteRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateScentNoteRequestCWProxy get copyWith =>
      _$UpdateScentNoteRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateScentNoteRequest _$UpdateScentNoteRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateScentNoteRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = UpdateScentNoteRequest(
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$UpdateScentNoteRequestToJson(
  UpdateScentNoteRequest instance,
) => <String, dynamic>{'name': instance.name};
