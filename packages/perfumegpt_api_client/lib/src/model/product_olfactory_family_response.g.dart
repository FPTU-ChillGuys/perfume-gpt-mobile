// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_olfactory_family_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductOlfactoryFamilyResponseCWProxy {
  ProductOlfactoryFamilyResponse olfactoryFamilyId(int? olfactoryFamilyId);

  ProductOlfactoryFamilyResponse name(String? name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductOlfactoryFamilyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductOlfactoryFamilyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductOlfactoryFamilyResponse call({int? olfactoryFamilyId, String? name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductOlfactoryFamilyResponse.copyWith(...)` or call `instanceOfProductOlfactoryFamilyResponse.copyWith.fieldName(value)` for a single field.
class _$ProductOlfactoryFamilyResponseCWProxyImpl
    implements _$ProductOlfactoryFamilyResponseCWProxy {
  const _$ProductOlfactoryFamilyResponseCWProxyImpl(this._value);

  final ProductOlfactoryFamilyResponse _value;

  @override
  ProductOlfactoryFamilyResponse olfactoryFamilyId(int? olfactoryFamilyId) =>
      call(olfactoryFamilyId: olfactoryFamilyId);

  @override
  ProductOlfactoryFamilyResponse name(String? name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductOlfactoryFamilyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductOlfactoryFamilyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductOlfactoryFamilyResponse call({
    Object? olfactoryFamilyId = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return ProductOlfactoryFamilyResponse(
      olfactoryFamilyId: olfactoryFamilyId == const $CopyWithPlaceholder()
          ? _value.olfactoryFamilyId
          // ignore: cast_nullable_to_non_nullable
          : olfactoryFamilyId as int?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $ProductOlfactoryFamilyResponseCopyWith
    on ProductOlfactoryFamilyResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductOlfactoryFamilyResponse.copyWith(...)` or `instanceOfProductOlfactoryFamilyResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductOlfactoryFamilyResponseCWProxy get copyWith =>
      _$ProductOlfactoryFamilyResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductOlfactoryFamilyResponse _$ProductOlfactoryFamilyResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductOlfactoryFamilyResponse', json, ($checkedConvert) {
  final val = ProductOlfactoryFamilyResponse(
    olfactoryFamilyId: $checkedConvert(
      'olfactoryFamilyId',
      (v) => (v as num?)?.toInt(),
    ),
    name: $checkedConvert('name', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ProductOlfactoryFamilyResponseToJson(
  ProductOlfactoryFamilyResponse instance,
) => <String, dynamic>{
  'olfactoryFamilyId': ?instance.olfactoryFamilyId,
  'name': ?instance.name,
};
