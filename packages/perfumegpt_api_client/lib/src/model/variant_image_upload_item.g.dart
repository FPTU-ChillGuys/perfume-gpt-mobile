// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_image_upload_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantImageUploadItemCWProxy {
  VariantImageUploadItem imageFile(MultipartFile? imageFile);

  VariantImageUploadItem altText(String? altText);

  VariantImageUploadItem displayOrder(int? displayOrder);

  VariantImageUploadItem isPrimary(bool? isPrimary);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VariantImageUploadItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VariantImageUploadItem(...).copyWith(id: 12, name: "My name")
  /// ````
  VariantImageUploadItem call({
    MultipartFile? imageFile,
    String? altText,
    int? displayOrder,
    bool? isPrimary,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVariantImageUploadItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVariantImageUploadItem.copyWith.fieldName(...)`
class _$VariantImageUploadItemCWProxyImpl
    implements _$VariantImageUploadItemCWProxy {
  const _$VariantImageUploadItemCWProxyImpl(this._value);

  final VariantImageUploadItem _value;

  @override
  VariantImageUploadItem imageFile(MultipartFile? imageFile) =>
      this(imageFile: imageFile);

  @override
  VariantImageUploadItem altText(String? altText) => this(altText: altText);

  @override
  VariantImageUploadItem displayOrder(int? displayOrder) =>
      this(displayOrder: displayOrder);

  @override
  VariantImageUploadItem isPrimary(bool? isPrimary) =>
      this(isPrimary: isPrimary);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VariantImageUploadItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VariantImageUploadItem(...).copyWith(id: 12, name: "My name")
  /// ````
  VariantImageUploadItem call({
    Object? imageFile = const $CopyWithPlaceholder(),
    Object? altText = const $CopyWithPlaceholder(),
    Object? displayOrder = const $CopyWithPlaceholder(),
    Object? isPrimary = const $CopyWithPlaceholder(),
  }) {
    return VariantImageUploadItem(
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

extension $VariantImageUploadItemCopyWith on VariantImageUploadItem {
  /// Returns a callable class that can be used as follows: `instanceOfVariantImageUploadItem.copyWith(...)` or like so:`instanceOfVariantImageUploadItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VariantImageUploadItemCWProxy get copyWith =>
      _$VariantImageUploadItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariantImageUploadItem _$VariantImageUploadItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VariantImageUploadItem', json, ($checkedConvert) {
  final val = VariantImageUploadItem(
    altText: $checkedConvert('altText', (v) => v as String?),
    displayOrder: $checkedConvert('displayOrder', (v) => (v as num?)?.toInt()),
    isPrimary: $checkedConvert('isPrimary', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$VariantImageUploadItemToJson(
  VariantImageUploadItem instance,
) => <String, dynamic>{
  'altText': ?instance.altText,
  'displayOrder': ?instance.displayOrder,
  'isPrimary': ?instance.isPrimary,
};
