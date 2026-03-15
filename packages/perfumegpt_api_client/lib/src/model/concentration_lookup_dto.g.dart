// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concentration_lookup_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConcentrationLookupDtoCWProxy {
  ConcentrationLookupDto id(int? id);

  ConcentrationLookupDto name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ConcentrationLookupDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ConcentrationLookupDto(...).copyWith(id: 12, name: "My name")
  /// ````
  ConcentrationLookupDto call({int? id, String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfConcentrationLookupDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfConcentrationLookupDto.copyWith.fieldName(...)`
class _$ConcentrationLookupDtoCWProxyImpl
    implements _$ConcentrationLookupDtoCWProxy {
  const _$ConcentrationLookupDtoCWProxyImpl(this._value);

  final ConcentrationLookupDto _value;

  @override
  ConcentrationLookupDto id(int? id) => this(id: id);

  @override
  ConcentrationLookupDto name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ConcentrationLookupDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ConcentrationLookupDto(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfConcentrationLookupDto.copyWith(...)` or like so:`instanceOfConcentrationLookupDto.copyWith.fieldName(...)`.
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
