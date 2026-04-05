//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:dio/dio.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_image_upload_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  createFactory: false,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductImageUploadItem {
  /// Returns a new [ProductImageUploadItem] instance.
  ProductImageUploadItem({

    required  this.imageFile,

     this.altText,

     this.displayOrder,

     this.isPrimary,
  });

  factory ProductImageUploadItem.fromJson(Map<String, dynamic> json) => throw UnsupportedError('ProductImageUploadItem is for upload only and cannot be deserialized.');

  @JsonKey(ignore: true)
  final MultipartFile imageFile;

  @JsonKey(name: r'altText', required: false, includeIfNull: false)
  final String? altText;

  @JsonKey(name: r'displayOrder', required: false, includeIfNull: false)
  final int? displayOrder;

  @JsonKey(name: r'isPrimary', required: false, includeIfNull: false)
  final bool? isPrimary;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductImageUploadItem &&
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

  Map<String, dynamic> toJson() => _$ProductImageUploadItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
