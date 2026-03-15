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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductImageUploadItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductImageUploadItem(...).copyWith(id: 12, name: "My name")
  /// ````
  ProductImageUploadItem call({
    MultipartFile? imageFile,
    String? altText,
    int? displayOrder,
    bool? isPrimary,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProductImageUploadItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProductImageUploadItem.copyWith.fieldName(...)`
class _$ProductImageUploadItemCWProxyImpl
    implements _$ProductImageUploadItemCWProxy {
  const _$ProductImageUploadItemCWProxyImpl(this._value);

  final ProductImageUploadItem _value;

  @override
  ProductImageUploadItem imageFile(MultipartFile? imageFile) =>
      this(imageFile: imageFile);

  @override
  ProductImageUploadItem altText(String? altText) => this(altText: altText);

  @override
  ProductImageUploadItem displayOrder(int? displayOrder) =>
      this(displayOrder: displayOrder);

  @override
  ProductImageUploadItem isPrimary(bool? isPrimary) =>
      this(isPrimary: isPrimary);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ProductImageUploadItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ProductImageUploadItem(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfProductImageUploadItem.copyWith(...)` or like so:`instanceOfProductImageUploadItem.copyWith.fieldName(...)`.
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
