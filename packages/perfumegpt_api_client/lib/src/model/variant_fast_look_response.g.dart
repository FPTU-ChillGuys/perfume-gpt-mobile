// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_fast_look_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantFastLookResponseCWProxy {
  VariantFastLookResponse id(String? id);

  VariantFastLookResponse sku(String? sku);

  VariantFastLookResponse displayName(String? displayName);

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
    String? sku,
    String? displayName,
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
  VariantFastLookResponse sku(String? sku) => call(sku: sku);

  @override
  VariantFastLookResponse displayName(String? displayName) =>
      call(displayName: displayName);

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
    Object? sku = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
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
      sku: sku == const $CopyWithPlaceholder()
          ? _value.sku
          // ignore: cast_nullable_to_non_nullable
          : sku as String?,
      displayName: displayName == const $CopyWithPlaceholder()
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as String?,
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
  final val = VariantFastLookResponse(
    id: $checkedConvert('id', (v) => v as String?),
    sku: $checkedConvert('sku', (v) => v as String?),
    displayName: $checkedConvert('displayName', (v) => v as String?),
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
  'sku': ?instance.sku,
  'displayName': ?instance.displayName,
  'price': ?instance.price,
  'retailPrice': ?instance.retailPrice,
  'stockQuantity': ?instance.stockQuantity,
  'media': ?instance.media?.toJson(),
};
