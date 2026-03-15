// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concentration_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConcentrationResponseCWProxy {
  ConcentrationResponse id(int? id);

  ConcentrationResponse name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ConcentrationResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ConcentrationResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ConcentrationResponse call({int? id, String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfConcentrationResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfConcentrationResponse.copyWith.fieldName(...)`
class _$ConcentrationResponseCWProxyImpl
    implements _$ConcentrationResponseCWProxy {
  const _$ConcentrationResponseCWProxyImpl(this._value);

  final ConcentrationResponse _value;

  @override
  ConcentrationResponse id(int? id) => this(id: id);

  @override
  ConcentrationResponse name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ConcentrationResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ConcentrationResponse(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfConcentrationResponse.copyWith(...)` or like so:`instanceOfConcentrationResponse.copyWith.fieldName(...)`.
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
