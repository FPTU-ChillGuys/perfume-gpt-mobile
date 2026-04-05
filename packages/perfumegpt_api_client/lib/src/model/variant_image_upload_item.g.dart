// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_image_upload_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantImageUploadItemCWProxy {
  VariantImageUploadItem imageFile(MultipartFile imageFile);

  VariantImageUploadItem altText(String? altText);

  VariantImageUploadItem displayOrder(int? displayOrder);

  VariantImageUploadItem isPrimary(bool? isPrimary);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantImageUploadItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantImageUploadItem(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantImageUploadItem call({
    MultipartFile imageFile,
    String? altText,
    int? displayOrder,
    bool? isPrimary,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVariantImageUploadItem.copyWith(...)` or call `instanceOfVariantImageUploadItem.copyWith.fieldName(value)` for a single field.
class _$VariantImageUploadItemCWProxyImpl
    implements _$VariantImageUploadItemCWProxy {
  const _$VariantImageUploadItemCWProxyImpl(this._value);

  final VariantImageUploadItem _value;

  @override
  VariantImageUploadItem imageFile(MultipartFile imageFile) =>
      call(imageFile: imageFile);

  @override
  VariantImageUploadItem altText(String? altText) => call(altText: altText);

  @override
  VariantImageUploadItem displayOrder(int? displayOrder) =>
      call(displayOrder: displayOrder);

  @override
  VariantImageUploadItem isPrimary(bool? isPrimary) =>
      call(isPrimary: isPrimary);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantImageUploadItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantImageUploadItem(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantImageUploadItem call({
    Object? imageFile = const $CopyWithPlaceholder(),
    Object? altText = const $CopyWithPlaceholder(),
    Object? displayOrder = const $CopyWithPlaceholder(),
    Object? isPrimary = const $CopyWithPlaceholder(),
  }) {
    return VariantImageUploadItem(
      imageFile: imageFile == const $CopyWithPlaceholder() || imageFile == null
          ? _value.imageFile
          // ignore: cast_nullable_to_non_nullable
          : imageFile as MultipartFile,
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVariantImageUploadItem.copyWith(...)` or `instanceOfVariantImageUploadItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VariantImageUploadItemCWProxy get copyWith =>
      _$VariantImageUploadItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$VariantImageUploadItemToJson(
  VariantImageUploadItem instance,
) => <String, dynamic>{
  'altText': ?instance.altText,
  'displayOrder': ?instance.displayOrder,
  'isPrimary': ?instance.isPrimary,
  'hashCode': instance.hashCode,
};
