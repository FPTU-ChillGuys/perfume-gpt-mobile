// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'olfactory_family_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OlfactoryFamilyResponseCWProxy {
  OlfactoryFamilyResponse id(int? id);

  OlfactoryFamilyResponse name(String? name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OlfactoryFamilyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OlfactoryFamilyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OlfactoryFamilyResponse call({int? id, String? name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOlfactoryFamilyResponse.copyWith(...)` or call `instanceOfOlfactoryFamilyResponse.copyWith.fieldName(value)` for a single field.
class _$OlfactoryFamilyResponseCWProxyImpl
    implements _$OlfactoryFamilyResponseCWProxy {
  const _$OlfactoryFamilyResponseCWProxyImpl(this._value);

  final OlfactoryFamilyResponse _value;

  @override
  OlfactoryFamilyResponse id(int? id) => call(id: id);

  @override
  OlfactoryFamilyResponse name(String? name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OlfactoryFamilyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OlfactoryFamilyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OlfactoryFamilyResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return OlfactoryFamilyResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $OlfactoryFamilyResponseCopyWith on OlfactoryFamilyResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOlfactoryFamilyResponse.copyWith(...)` or `instanceOfOlfactoryFamilyResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OlfactoryFamilyResponseCWProxy get copyWith =>
      _$OlfactoryFamilyResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OlfactoryFamilyResponse _$OlfactoryFamilyResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OlfactoryFamilyResponse', json, ($checkedConvert) {
  final val = OlfactoryFamilyResponse(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$OlfactoryFamilyResponseToJson(
  OlfactoryFamilyResponse instance,
) => <String, dynamic>{'id': ?instance.id, 'name': ?instance.name};
