// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_media_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantMediaResponseCWProxy {
  VariantMediaResponse id(String id);

  VariantMediaResponse url(String url);

  VariantMediaResponse altText(Object? altText);

  VariantMediaResponse isPrimary(bool isPrimary);

  VariantMediaResponse displayOrder(num displayOrder);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantMediaResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantMediaResponse call({
    String id,
    String url,
    Object? altText,
    bool isPrimary,
    num displayOrder,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVariantMediaResponse.copyWith(...)` or call `instanceOfVariantMediaResponse.copyWith.fieldName(value)` for a single field.
class _$VariantMediaResponseCWProxyImpl
    implements _$VariantMediaResponseCWProxy {
  const _$VariantMediaResponseCWProxyImpl(this._value);

  final VariantMediaResponse _value;

  @override
  VariantMediaResponse id(String id) => call(id: id);

  @override
  VariantMediaResponse url(String url) => call(url: url);

  @override
  VariantMediaResponse altText(Object? altText) => call(altText: altText);

  @override
  VariantMediaResponse isPrimary(bool isPrimary) => call(isPrimary: isPrimary);

  @override
  VariantMediaResponse displayOrder(num displayOrder) =>
      call(displayOrder: displayOrder);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantMediaResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantMediaResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
    Object? altText = const $CopyWithPlaceholder(),
    Object? isPrimary = const $CopyWithPlaceholder(),
    Object? displayOrder = const $CopyWithPlaceholder(),
  }) {
    return VariantMediaResponse(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      url: url == const $CopyWithPlaceholder() || url == null
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String,
      altText: altText == const $CopyWithPlaceholder()
          ? _value.altText
          // ignore: cast_nullable_to_non_nullable
          : altText as Object?,
      isPrimary: isPrimary == const $CopyWithPlaceholder() || isPrimary == null
          ? _value.isPrimary
          // ignore: cast_nullable_to_non_nullable
          : isPrimary as bool,
      displayOrder:
          displayOrder == const $CopyWithPlaceholder() || displayOrder == null
          ? _value.displayOrder
          // ignore: cast_nullable_to_non_nullable
          : displayOrder as num,
    );
  }
}

extension $VariantMediaResponseCopyWith on VariantMediaResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVariantMediaResponse.copyWith(...)` or `instanceOfVariantMediaResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VariantMediaResponseCWProxy get copyWith =>
      _$VariantMediaResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariantMediaResponse _$VariantMediaResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VariantMediaResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'url', 'isPrimary', 'displayOrder'],
  );
  final val = VariantMediaResponse(
    id: $checkedConvert('id', (v) => v as String),
    url: $checkedConvert('url', (v) => v as String),
    altText: $checkedConvert('altText', (v) => v),
    isPrimary: $checkedConvert('isPrimary', (v) => v as bool),
    displayOrder: $checkedConvert('displayOrder', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$VariantMediaResponseToJson(
  VariantMediaResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'altText': ?instance.altText,
  'isPrimary': instance.isPrimary,
  'displayOrder': instance.displayOrder,
};
