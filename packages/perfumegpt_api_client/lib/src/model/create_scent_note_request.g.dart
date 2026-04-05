// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_scent_note_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateScentNoteRequestCWProxy {
  CreateScentNoteRequest name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateScentNoteRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateScentNoteRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateScentNoteRequest call({String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateScentNoteRequest.copyWith(...)` or call `instanceOfCreateScentNoteRequest.copyWith.fieldName(value)` for a single field.
class _$CreateScentNoteRequestCWProxyImpl
    implements _$CreateScentNoteRequestCWProxy {
  const _$CreateScentNoteRequestCWProxyImpl(this._value);

  final CreateScentNoteRequest _value;

  @override
  CreateScentNoteRequest name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateScentNoteRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateScentNoteRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateScentNoteRequest call({Object? name = const $CopyWithPlaceholder()}) {
    return CreateScentNoteRequest(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $CreateScentNoteRequestCopyWith on CreateScentNoteRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateScentNoteRequest.copyWith(...)` or `instanceOfCreateScentNoteRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateScentNoteRequestCWProxy get copyWith =>
      _$CreateScentNoteRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateScentNoteRequest _$CreateScentNoteRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateScentNoteRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = CreateScentNoteRequest(
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$CreateScentNoteRequestToJson(
  CreateScentNoteRequest instance,
) => <String, dynamic>{'name': instance.name};
