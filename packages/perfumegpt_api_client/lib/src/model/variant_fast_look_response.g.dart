// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_fast_look_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantFastLookResponseCWProxy {
  VariantFastLookResponse id(String? id);

  VariantFastLookResponse barcode(String barcode);

  VariantFastLookResponse sku(String sku);

  VariantFastLookResponse displayName(String displayName);

  VariantFastLookResponse volumeMl(int? volumeMl);

  VariantFastLookResponse price(num? price);

  VariantFastLookResponse retailPrice(num? retailPrice);

  VariantFastLookResponse stockQuantity(int? stockQuantity);

  VariantFastLookResponse media(MediaResponse? media);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantFastLookResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantFastLookResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantFastLookResponse call({
    String? id,
    String barcode,
    String sku,
    String displayName,
    int? volumeMl,
    num? price,
    num? retailPrice,
    int? stockQuantity,
    MediaResponse? media,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVariantFastLookResponse.copyWith(...)` or call `instanceOfVariantFastLookResponse.copyWith.fieldName(value)` for a single field.
class _$VariantFastLookResponseCWProxyImpl
    implements _$VariantFastLookResponseCWProxy {
  const _$VariantFastLookResponseCWProxyImpl(this._value);

  final VariantFastLookResponse _value;

  @override
  VariantFastLookResponse id(String? id) => call(id: id);

  @override
  VariantFastLookResponse barcode(String barcode) => call(barcode: barcode);

  @override
  VariantFastLookResponse sku(String sku) => call(sku: sku);

  @override
  VariantFastLookResponse displayName(String displayName) =>
      call(displayName: displayName);

  @override
  VariantFastLookResponse volumeMl(int? volumeMl) => call(volumeMl: volumeMl);

  @override
  VariantFastLookResponse price(num? price) => call(price: price);

  @override
  VariantFastLookResponse retailPrice(num? retailPrice) =>
      call(retailPrice: retailPrice);

  @override
  VariantFastLookResponse stockQuantity(int? stockQuantity) =>
      call(stockQuantity: stockQuantity);

  @override
  VariantFastLookResponse media(MediaResponse? media) => call(media: media);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantFastLookResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantFastLookResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantFastLookResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? barcode = const $CopyWithPlaceholder(),
    Object? sku = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? retailPrice = const $CopyWithPlaceholder(),
    Object? stockQuantity = const $CopyWithPlaceholder(),
    Object? media = const $CopyWithPlaceholder(),
  }) {
    return VariantFastLookResponse(
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
      price: price == const $CopyWithPlaceholder()
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as num?,
      retailPrice: retailPrice == const $CopyWithPlaceholder()
          ? _value.retailPrice
          // ignore: cast_nullable_to_non_nullable
          : retailPrice as num?,
      stockQuantity: stockQuantity == const $CopyWithPlaceholder()
          ? _value.stockQuantity
          // ignore: cast_nullable_to_non_nullable
          : stockQuantity as int?,
      media: media == const $CopyWithPlaceholder()
          ? _value.media
          // ignore: cast_nullable_to_non_nullable
          : media as MediaResponse?,
    );
  }
}

extension $VariantFastLookResponseCopyWith on VariantFastLookResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVariantFastLookResponse.copyWith(...)` or `instanceOfVariantFastLookResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VariantFastLookResponseCWProxy get copyWith =>
      _$VariantFastLookResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariantFastLookResponse _$VariantFastLookResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VariantFastLookResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['barcode', 'sku', 'displayName']);
  final val = VariantFastLookResponse(
    id: $checkedConvert('id', (v) => v as String?),
    barcode: $checkedConvert('barcode', (v) => v as String),
    sku: $checkedConvert('sku', (v) => v as String),
    displayName: $checkedConvert('displayName', (v) => v as String),
    volumeMl: $checkedConvert('volumeMl', (v) => (v as num?)?.toInt()),
    price: $checkedConvert('price', (v) => v as num?),
    retailPrice: $checkedConvert('retailPrice', (v) => v as num?),
    stockQuantity: $checkedConvert(
      'stockQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    media: $checkedConvert(
      'media',
      (v) =>
          v == null ? null : MediaResponse.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$VariantFastLookResponseToJson(
  VariantFastLookResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'barcode': instance.barcode,
  'sku': instance.sku,
  'displayName': instance.displayName,
  'volumeMl': ?instance.volumeMl,
  'price': ?instance.price,
  'retailPrice': ?instance.retailPrice,
  'stockQuantity': ?instance.stockQuantity,
  'media': ?instance.media?.toJson(),
};
