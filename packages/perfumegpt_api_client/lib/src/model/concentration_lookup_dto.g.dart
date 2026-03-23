// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concentration_lookup_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConcentrationLookupDtoCWProxy {
  ConcentrationLookupDto id(int? id);

  ConcentrationLookupDto name(String? name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConcentrationLookupDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConcentrationLookupDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ConcentrationLookupDto call({int? id, String? name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConcentrationLookupDto.copyWith(...)` or call `instanceOfConcentrationLookupDto.copyWith.fieldName(value)` for a single field.
class _$ConcentrationLookupDtoCWProxyImpl
    implements _$ConcentrationLookupDtoCWProxy {
  const _$ConcentrationLookupDtoCWProxyImpl(this._value);

  final ConcentrationLookupDto _value;

  @override
  ConcentrationLookupDto id(int? id) => call(id: id);

  @override
  ConcentrationLookupDto name(String? name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConcentrationLookupDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConcentrationLookupDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ConcentrationLookupDto call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return ConcentrationLookupDto(
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

extension $ConcentrationLookupDtoCopyWith on ConcentrationLookupDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConcentrationLookupDto.copyWith(...)` or `instanceOfConcentrationLookupDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConcentrationLookupDtoCWProxy get copyWith =>
      _$ConcentrationLookupDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConcentrationLookupDto _$ConcentrationLookupDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ConcentrationLookupDto', json, ($checkedConvert) {
  final val = ConcentrationLookupDto(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    name: $checkedConvert('name', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ConcentrationLookupDtoToJson(
  ConcentrationLookupDto instance,
) => <String, dynamic>{'id': ?instance.id, 'name': ?instance.name};
