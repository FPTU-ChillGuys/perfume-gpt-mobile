//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dio/dio.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variant_image_upload_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VariantImageUploadItem {
  /// Returns a new [VariantImageUploadItem] instance.
  VariantImageUploadItem({
    this.imageFile,

    this.altText,

    this.displayOrder,

    this.isPrimary,
  });

  @JsonKey(ignore: true)
  final MultipartFile? imageFile;

  @JsonKey(name: r'altText', required: false, includeIfNull: false)
  final String? altText;

  @JsonKey(name: r'displayOrder', required: false, includeIfNull: false)
  final int? displayOrder;

  @JsonKey(name: r'isPrimary', required: false, includeIfNull: false)
  final bool? isPrimary;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VariantImageUploadItem &&
          other.imageFile == imageFile &&
          other.altText == altText &&
          other.displayOrder == displayOrder &&
          other.isPrimary == isPrimary;

  @override
  int get hashCode =>
      imageFile.hashCode +
      (altText == null ? 0 : altText.hashCode) +
      displayOrder.hashCode +
      isPrimary.hashCode;

  factory VariantImageUploadItem.fromJson(Map<String, dynamic> json) =>
      _$VariantImageUploadItemFromJson(json);

  Map<String, dynamic> toJson() => _$VariantImageUploadItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
