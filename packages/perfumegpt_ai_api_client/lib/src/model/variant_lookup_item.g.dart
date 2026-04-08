// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantLookupItemCWProxy {
  VariantLookupItem id(String? id);

  VariantLookupItem barcode(String barcode);

  VariantLookupItem sku(String sku);

  VariantLookupItem displayName(String displayName);

  VariantLookupItem volumeMl(int? volumeMl);

  VariantLookupItem concentrationName(String concentrationName);

  VariantLookupItem basePrice(num? basePrice);

  VariantLookupItem primaryImageUrl(String? primaryImageUrl);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantLookupItem call({
    String? id,
    String barcode,
    String sku,
    String displayName,
    int? volumeMl,
    String concentrationName,
    num? basePrice,
    String? primaryImageUrl,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVariantLookupItem.copyWith(...)` or call `instanceOfVariantLookupItem.copyWith.fieldName(value)` for a single field.
class _$VariantLookupItemCWProxyImpl implements _$VariantLookupItemCWProxy {
  const _$VariantLookupItemCWProxyImpl(this._value);

  final VariantLookupItem _value;

  @override
  VariantLookupItem id(String? id) => call(id: id);

  @override
  VariantLookupItem barcode(String barcode) => call(barcode: barcode);

  @override
  VariantLookupItem sku(String sku) => call(sku: sku);

  @override
  VariantLookupItem displayName(String displayName) =>
      call(displayName: displayName);

  @override
  VariantLookupItem volumeMl(int? volumeMl) => call(volumeMl: volumeMl);

  @override
  VariantLookupItem concentrationName(String concentrationName) =>
      call(concentrationName: concentrationName);

  @override
  VariantLookupItem basePrice(num? basePrice) => call(basePrice: basePrice);

  @override
  VariantLookupItem primaryImageUrl(String? primaryImageUrl) =>
      call(primaryImageUrl: primaryImageUrl);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? barcode = const $CopyWithPlaceholder(),
    Object? sku = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? concentrationName = const $CopyWithPlaceholder(),
    Object? basePrice = const $CopyWithPlaceholder(),
    Object? primaryImageUrl = const $CopyWithPlaceholder(),
  }) {
    return VariantLookupItem(
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
      displayName:
          displayName == const $CopyWithPlaceholder() || displayName == null
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as String,
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

extension $VariantLookupItemCopyWith on VariantLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVariantLookupItem.copyWith(...)` or `instanceOfVariantLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VariantLookupItemCWProxy get copyWith =>
      _$VariantLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariantLookupItem _$VariantLookupItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VariantLookupItem', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['barcode', 'sku', 'displayName', 'concentrationName'],
  );
  final val = VariantLookupItem(
    id: $checkedConvert('id', (v) => v as String?),
    barcode: $checkedConvert('barcode', (v) => v as String),
    sku: $checkedConvert('sku', (v) => v as String),
    displayName: $checkedConvert('displayName', (v) => v as String),
    volumeMl: $checkedConvert('volumeMl', (v) => (v as num?)?.toInt()),
    concentrationName: $checkedConvert('concentrationName', (v) => v as String),
    basePrice: $checkedConvert('basePrice', (v) => v as num?),
    primaryImageUrl: $checkedConvert('primaryImageUrl', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$VariantLookupItemToJson(VariantLookupItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'barcode': instance.barcode,
      'sku': instance.sku,
      'displayName': instance.displayName,
      'volumeMl': ?instance.volumeMl,
      'concentrationName': instance.concentrationName,
      'basePrice': ?instance.basePrice,
      'primaryImageUrl': ?instance.primaryImageUrl,
    };
