// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_for_pos_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductVariantForPosResponseCWProxy {
  ProductVariantForPosResponse id(String? id);

  ProductVariantForPosResponse barcode(String barcode);

  ProductVariantForPosResponse sku(String sku);

  ProductVariantForPosResponse name(String name);

  ProductVariantForPosResponse volumeMl(int? volumeMl);

  ProductVariantForPosResponse concentrationName(String concentrationName);

  ProductVariantForPosResponse displayName(String displayName);

  ProductVariantForPosResponse basePrice(num? basePrice);

  ProductVariantForPosResponse primaryImageUrl(String? primaryImageUrl);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductVariantForPosResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductVariantForPosResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductVariantForPosResponse call({
    String? id,
    String barcode,
    String sku,
    String name,
    int? volumeMl,
    String concentrationName,
    String displayName,
    num? basePrice,
    String? primaryImageUrl,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductVariantForPosResponse.copyWith(...)` or call `instanceOfProductVariantForPosResponse.copyWith.fieldName(value)` for a single field.
class _$ProductVariantForPosResponseCWProxyImpl
    implements _$ProductVariantForPosResponseCWProxy {
  const _$ProductVariantForPosResponseCWProxyImpl(this._value);

  final ProductVariantForPosResponse _value;

  @override
  ProductVariantForPosResponse id(String? id) => call(id: id);

  @override
  ProductVariantForPosResponse barcode(String barcode) =>
      call(barcode: barcode);

  @override
  ProductVariantForPosResponse sku(String sku) => call(sku: sku);

  @override
  ProductVariantForPosResponse name(String name) => call(name: name);

  @override
  ProductVariantForPosResponse volumeMl(int? volumeMl) =>
      call(volumeMl: volumeMl);

  @override
  ProductVariantForPosResponse concentrationName(String concentrationName) =>
      call(concentrationName: concentrationName);

  @override
  ProductVariantForPosResponse displayName(String displayName) =>
      call(displayName: displayName);

  @override
  ProductVariantForPosResponse basePrice(num? basePrice) =>
      call(basePrice: basePrice);

  @override
  ProductVariantForPosResponse primaryImageUrl(String? primaryImageUrl) =>
      call(primaryImageUrl: primaryImageUrl);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductVariantForPosResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductVariantForPosResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductVariantForPosResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? barcode = const $CopyWithPlaceholder(),
    Object? sku = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? concentrationName = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? basePrice = const $CopyWithPlaceholder(),
    Object? primaryImageUrl = const $CopyWithPlaceholder(),
  }) {
    return ProductVariantForPosResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      barcode: barcode == const $CopyWithPlaceholder() || barcode == null
          ? _value.barcode
          // ignore: cast_nullable_to_non_nullable
          : barcode as String,
      sku: sku == const $CopyWithPlaceholder() || sku == null
          ? _value.sku
          // ignore: cast_nullable_to_non_nullable
          : sku as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      volumeMl: volumeMl == const $CopyWithPlaceholder()
          ? _value.volumeMl
          // ignore: cast_nullable_to_non_nullable
          : volumeMl as int?,
      concentrationName:
          concentrationName == const $CopyWithPlaceholder() ||
              concentrationName == null
          ? _value.concentrationName
          // ignore: cast_nullable_to_non_nullable
          : concentrationName as String,
      displayName:
          displayName == const $CopyWithPlaceholder() || displayName == null
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as String,
      basePrice: basePrice == const $CopyWithPlaceholder()
          ? _value.basePrice
          // ignore: cast_nullable_to_non_nullable
          : basePrice as num?,
      primaryImageUrl: primaryImageUrl == const $CopyWithPlaceholder()
          ? _value.primaryImageUrl
          // ignore: cast_nullable_to_non_nullable
          : primaryImageUrl as String?,
    );
  }
}

extension $ProductVariantForPosResponseCopyWith
    on ProductVariantForPosResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductVariantForPosResponse.copyWith(...)` or `instanceOfProductVariantForPosResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductVariantForPosResponseCWProxy get copyWith =>
      _$ProductVariantForPosResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductVariantForPosResponse _$ProductVariantForPosResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductVariantForPosResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'barcode',
      'sku',
      'name',
      'concentrationName',
      'displayName',
    ],
  );
  final val = ProductVariantForPosResponse(
    id: $checkedConvert('id', (v) => v as String?),
    barcode: $checkedConvert('barcode', (v) => v as String),
    sku: $checkedConvert('sku', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    volumeMl: $checkedConvert('volumeMl', (v) => (v as num?)?.toInt()),
    concentrationName: $checkedConvert('concentrationName', (v) => v as String),
    displayName: $checkedConvert('displayName', (v) => v as String),
    basePrice: $checkedConvert('basePrice', (v) => v as num?),
    primaryImageUrl: $checkedConvert('primaryImageUrl', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ProductVariantForPosResponseToJson(
  ProductVariantForPosResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'barcode': instance.barcode,
  'sku': instance.sku,
  'name': instance.name,
  'volumeMl': ?instance.volumeMl,
  'concentrationName': instance.concentrationName,
  'displayName': instance.displayName,
  'basePrice': ?instance.basePrice,
  'primaryImageUrl': ?instance.primaryImageUrl,
};
