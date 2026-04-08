// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BrandResponseCWProxy {
  BrandResponse id(int? id);

  BrandResponse name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BrandResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BrandResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BrandResponse call({int? id, String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBrandResponse.copyWith(...)` or call `instanceOfBrandResponse.copyWith.fieldName(value)` for a single field.
class _$BrandResponseCWProxyImpl implements _$BrandResponseCWProxy {
  const _$BrandResponseCWProxyImpl(this._value);

  final BrandResponse _value;

  @override
  BrandResponse id(int? id) => call(id: id);

  @override
  BrandResponse name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BrandResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BrandResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BrandResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return BrandResponse(
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

extension $BrandResponseCopyWith on BrandResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBrandResponse.copyWith(...)` or `instanceOfBrandResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BrandResponseCWProxy get copyWith => _$BrandResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandResponse _$BrandResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BrandResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['name']);
      final val = BrandResponse(
        id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
        name: $checkedConvert('name', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$BrandResponseToJson(BrandResponse instance) =>
    <String, dynamic>{'id': ?instance.id, 'name': instance.name};
