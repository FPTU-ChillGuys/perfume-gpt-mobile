//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variant_media_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VariantMediaResponse {
  /// Returns a new [VariantMediaResponse] instance.
  VariantMediaResponse({
    required this.id,

    required this.url,

    this.altText,

    required this.isPrimary,

    required this.displayOrder,
  });

  /// ID media
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// URL hình ảnh
  @JsonKey(name: r'url', required: true, includeIfNull: false)
  final String url;

  /// Alt text
  @JsonKey(name: r'altText', required: false, includeIfNull: false)
  final Object? altText;

  /// Có phải hình ảnh chính không
  @JsonKey(name: r'isPrimary', required: true, includeIfNull: false)
  final bool isPrimary;

  /// Thứ tự hiển thị
  @JsonKey(name: r'displayOrder', required: true, includeIfNull: false)
  final num displayOrder;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VariantMediaResponse &&
          other.id == id &&
          other.url == url &&
          other.altText == altText &&
          other.isPrimary == isPrimary &&
          other.displayOrder == displayOrder;

  @override
  int get hashCode =>
      id.hashCode +
      url.hashCode +
      (altText == null ? 0 : altText.hashCode) +
      isPrimary.hashCode +
      displayOrder.hashCode;

  factory VariantMediaResponse.fromJson(Map<String, dynamic> json) =>
      _$VariantMediaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VariantMediaResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
