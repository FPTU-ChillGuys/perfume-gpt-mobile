// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantLookupItemCWProxy {
  VariantLookupItem id(String? id);

  VariantLookupItem barcode(String? barcode);

  VariantLookupItem sku(String? sku);

  VariantLookupItem displayName(String? displayName);

  VariantLookupItem volumeMl(int? volumeMl);

  VariantLookupItem concentrationName(String? concentrationName);

  VariantLookupItem basePrice(num? basePrice);

  VariantLookupItem primaryImage(MediaResponse? primaryImage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VariantLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VariantLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  VariantLookupItem call({
    String? id,
    String? barcode,
    String? sku,
    String? displayName,
    int? volumeMl,
    String? concentrationName,
    num? basePrice,
    MediaResponse? primaryImage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVariantLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVariantLookupItem.copyWith.fieldName(...)`
class _$VariantLookupItemCWProxyImpl implements _$VariantLookupItemCWProxy {
  const _$VariantLookupItemCWProxyImpl(this._value);

  final VariantLookupItem _value;

  @override
  VariantLookupItem id(String? id) => this(id: id);

  @override
  VariantLookupItem barcode(String? barcode) => this(barcode: barcode);

  @override
  VariantLookupItem sku(String? sku) => this(sku: sku);

  @override
  VariantLookupItem displayName(String? displayName) =>
      this(displayName: displayName);

  @override
  VariantLookupItem volumeMl(int? volumeMl) => this(volumeMl: volumeMl);

  @override
  VariantLookupItem concentrationName(String? concentrationName) =>
      this(concentrationName: concentrationName);

  @override
  VariantLookupItem basePrice(num? basePrice) => this(basePrice: basePrice);

  @override
  VariantLookupItem primaryImage(MediaResponse? primaryImage) =>
      this(primaryImage: primaryImage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VariantLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VariantLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  VariantLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? barcode = const $CopyWithPlaceholder(),
    Object? sku = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? concentrationName = const $CopyWithPlaceholder(),
    Object? basePrice = const $CopyWithPlaceholder(),
    Object? primaryImage = const $CopyWithPlaceholder(),
  }) {
    return VariantLookupItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      barcode: barcode == const $CopyWithPlaceholder()
          ? _value.barcode
          // ignore: cast_nullable_to_non_nullable
          : barcode as String?,
      sku: sku == const $CopyWithPlaceholder()
          ? _value.sku
          // ignore: cast_nullable_to_non_nullable
          : sku as String?,
      displayName: displayName == const $CopyWithPlaceholder()
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as String?,
      volumeMl: volumeMl == const $CopyWithPlaceholder()
          ? _value.volumeMl
          // ignore: cast_nullable_to_non_nullable
          : volumeMl as int?,
      concentrationName: concentrationName == const $CopyWithPlaceholder()
          ? _value.concentrationName
          // ignore: cast_nullable_to_non_nullable
          : concentrationName as String?,
      basePrice: basePrice == const $CopyWithPlaceholder()
          ? _value.basePrice
          // ignore: cast_nullable_to_non_nullable
          : basePrice as num?,
      primaryImage: primaryImage == const $CopyWithPlaceholder()
          ? _value.primaryImage
          // ignore: cast_nullable_to_non_nullable
          : primaryImage as MediaResponse?,
    );
  }
}

extension $VariantLookupItemCopyWith on VariantLookupItem {
  /// Returns a callable class that can be used as follows: `instanceOfVariantLookupItem.copyWith(...)` or like so:`instanceOfVariantLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VariantLookupItemCWProxy get copyWith =>
      _$VariantLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariantLookupItem _$VariantLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('VariantLookupItem', json, ($checkedConvert) {
      final val = VariantLookupItem(
        id: $checkedConvert('id', (v) => v as String?),
        barcode: $checkedConvert('barcode', (v) => v as String?),
        sku: $checkedConvert('sku', (v) => v as String?),
        displayName: $checkedConvert('displayName', (v) => v as String?),
        volumeMl: $checkedConvert('volumeMl', (v) => (v as num?)?.toInt()),
        concentrationName: $checkedConvert(
          'concentrationName',
          (v) => v as String?,
        ),
        basePrice: $checkedConvert('basePrice', (v) => v as num?),
        primaryImage: $checkedConvert(
          'primaryImage',
          (v) => v == null
              ? null
              : MediaResponse.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$VariantLookupItemToJson(VariantLookupItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'barcode': ?instance.barcode,
      'sku': ?instance.sku,
      'displayName': ?instance.displayName,
      'volumeMl': ?instance.volumeMl,
      'concentrationName': ?instance.concentrationName,
      'basePrice': ?instance.basePrice,
      'primaryImage': ?instance.primaryImage?.toJson(),
    };
