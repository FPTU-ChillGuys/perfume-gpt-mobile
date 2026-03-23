// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concentration_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConcentrationResponseCWProxy {
  ConcentrationResponse id(int? id);

  ConcentrationResponse name(String? name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConcentrationResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConcentrationResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ConcentrationResponse call({int? id, String? name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConcentrationResponse.copyWith(...)` or call `instanceOfConcentrationResponse.copyWith.fieldName(value)` for a single field.
class _$ConcentrationResponseCWProxyImpl
    implements _$ConcentrationResponseCWProxy {
  const _$ConcentrationResponseCWProxyImpl(this._value);

  final ConcentrationResponse _value;

  @override
  ConcentrationResponse id(int? id) => call(id: id);

  @override
  ConcentrationResponse name(String? name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConcentrationResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConcentrationResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ConcentrationResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return ConcentrationResponse(
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

extension $ConcentrationResponseCopyWith on ConcentrationResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConcentrationResponse.copyWith(...)` or `instanceOfConcentrationResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConcentrationResponseCWProxy get copyWith =>
      _$ConcentrationResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConcentrationResponse _$ConcentrationResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ConcentrationResponse', json, ($checkedConvert) {
  final val = ConcentrationResponse(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ConcentrationResponseToJson(
  ConcentrationResponse instance,
) => <String, dynamic>{'id': ?instance.id, 'name': ?instance.name};
