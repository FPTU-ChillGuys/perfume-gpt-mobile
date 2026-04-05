// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'olfactory_lookup_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OlfactoryLookupResponseCWProxy {
  OlfactoryLookupResponse id(int? id);

  OlfactoryLookupResponse name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OlfactoryLookupResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OlfactoryLookupResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OlfactoryLookupResponse call({int? id, String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOlfactoryLookupResponse.copyWith(...)` or call `instanceOfOlfactoryLookupResponse.copyWith.fieldName(value)` for a single field.
class _$OlfactoryLookupResponseCWProxyImpl
    implements _$OlfactoryLookupResponseCWProxy {
  const _$OlfactoryLookupResponseCWProxyImpl(this._value);

  final OlfactoryLookupResponse _value;

  @override
  OlfactoryLookupResponse id(int? id) => call(id: id);

  @override
  OlfactoryLookupResponse name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OlfactoryLookupResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OlfactoryLookupResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OlfactoryLookupResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return OlfactoryLookupResponse(
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

extension $OlfactoryLookupResponseCopyWith on OlfactoryLookupResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOlfactoryLookupResponse.copyWith(...)` or `instanceOfOlfactoryLookupResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OlfactoryLookupResponseCWProxy get copyWith =>
      _$OlfactoryLookupResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OlfactoryLookupResponse _$OlfactoryLookupResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OlfactoryLookupResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['name']);
  final val = OlfactoryLookupResponse(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$OlfactoryLookupResponseToJson(
  OlfactoryLookupResponse instance,
) => <String, dynamic>{'id': ?instance.id, 'name': instance.name};
