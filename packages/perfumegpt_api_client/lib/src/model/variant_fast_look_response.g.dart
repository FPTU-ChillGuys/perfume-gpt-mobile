// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_fast_look_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantFastLookResponseCWProxy {
  VariantFastLookResponse id(String? id);

  VariantFastLookResponse displayName(String? displayName);

  VariantFastLookResponse price(num? price);

  VariantFastLookResponse stockQuantity(int? stockQuantity);

  VariantFastLookResponse media(MediaResponse? media);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VariantFastLookResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VariantFastLookResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  VariantFastLookResponse call({
    String? id,
    String? displayName,
    num? price,
    int? stockQuantity,
    MediaResponse? media,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVariantFastLookResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVariantFastLookResponse.copyWith.fieldName(...)`
class _$VariantFastLookResponseCWProxyImpl
    implements _$VariantFastLookResponseCWProxy {
  const _$VariantFastLookResponseCWProxyImpl(this._value);

  final VariantFastLookResponse _value;

  @override
  VariantFastLookResponse id(String? id) => this(id: id);

  @override
  VariantFastLookResponse displayName(String? displayName) =>
      this(displayName: displayName);

  @override
  VariantFastLookResponse price(num? price) => this(price: price);

  @override
  VariantFastLookResponse stockQuantity(int? stockQuantity) =>
      this(stockQuantity: stockQuantity);

  @override
  VariantFastLookResponse media(MediaResponse? media) => this(media: media);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VariantFastLookResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VariantFastLookResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  VariantFastLookResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? price = const $CopyWithPlaceholder(),
    Object? stockQuantity = const $CopyWithPlaceholder(),
    Object? media = const $CopyWithPlaceholder(),
  }) {
    return VariantFastLookResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      displayName: displayName == const $CopyWithPlaceholder()
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as String?,
      price: price == const $CopyWithPlaceholder()
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as num?,
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
  /// Returns a callable class that can be used as follows: `instanceOfVariantFastLookResponse.copyWith(...)` or like so:`instanceOfVariantFastLookResponse.copyWith.fieldName(...)`.
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
    displayName: $checkedConvert('displayName', (v) => v as String?),
    price: $checkedConvert('price', (v) => v as num?),
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
  'displayName': ?instance.displayName,
  'price': ?instance.price,
  'stockQuantity': ?instance.stockQuantity,
  'media': ?instance.media?.toJson(),
};
