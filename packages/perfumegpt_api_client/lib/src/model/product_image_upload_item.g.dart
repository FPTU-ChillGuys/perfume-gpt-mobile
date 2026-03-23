// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_upload_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductImageUploadItemCWProxy {
  ProductImageUploadItem imageFile(MultipartFile? imageFile);

  ProductImageUploadItem altText(String? altText);

  ProductImageUploadItem displayOrder(int? displayOrder);

  ProductImageUploadItem isPrimary(bool? isPrimary);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductImageUploadItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductImageUploadItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductImageUploadItem call({
    MultipartFile? imageFile,
    String? altText,
    int? displayOrder,
    bool? isPrimary,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductImageUploadItem.copyWith(...)` or call `instanceOfProductImageUploadItem.copyWith.fieldName(value)` for a single field.
class _$ProductImageUploadItemCWProxyImpl
    implements _$ProductImageUploadItemCWProxy {
  const _$ProductImageUploadItemCWProxyImpl(this._value);

  final ProductImageUploadItem _value;

  @override
  ProductImageUploadItem imageFile(MultipartFile? imageFile) =>
      call(imageFile: imageFile);

  @override
  ProductImageUploadItem altText(String? altText) => call(altText: altText);

  @override
  ProductImageUploadItem displayOrder(int? displayOrder) =>
      call(displayOrder: displayOrder);

  @override
  ProductImageUploadItem isPrimary(bool? isPrimary) =>
      call(isPrimary: isPrimary);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductImageUploadItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductImageUploadItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductImageUploadItem call({
    Object? imageFile = const $CopyWithPlaceholder(),
    Object? altText = const $CopyWithPlaceholder(),
    Object? displayOrder = const $CopyWithPlaceholder(),
    Object? isPrimary = const $CopyWithPlaceholder(),
  }) {
    return ProductImageUploadItem(
      imageFile: imageFile == const $CopyWithPlaceholder()
          ? _value.imageFile
          // ignore: cast_nullable_to_non_nullable
          : imageFile as MultipartFile?,
      altText: altText == const $CopyWithPlaceholder()
          ? _value.altText
          // ignore: cast_nullable_to_non_nullable
          : altText as String?,
      displayOrder: displayOrder == const $CopyWithPlaceholder()
          ? _value.displayOrder
          // ignore: cast_nullable_to_non_nullable
          : displayOrder as int?,
      isPrimary: isPrimary == const $CopyWithPlaceholder()
          ? _value.isPrimary
          // ignore: cast_nullable_to_non_nullable
          : isPrimary as bool?,
    );
  }
}

extension $ProductImageUploadItemCopyWith on ProductImageUploadItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductImageUploadItem.copyWith(...)` or `instanceOfProductImageUploadItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductImageUploadItemCWProxy get copyWith =>
      _$ProductImageUploadItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductImageUploadItem _$ProductImageUploadItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductImageUploadItem', json, ($checkedConvert) {
  final val = ProductImageUploadItem(
    altText: $checkedConvert('altText', (v) => v as String?),
    displayOrder: $checkedConvert('displayOrder', (v) => (v as num?)?.toInt()),
    isPrimary: $checkedConvert('isPrimary', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$ProductImageUploadItemToJson(
  ProductImageUploadItem instance,
) => <String, dynamic>{
  'altText': ?instance.altText,
  'displayOrder': ?instance.displayOrder,
  'isPrimary': ?instance.isPrimary,
};
