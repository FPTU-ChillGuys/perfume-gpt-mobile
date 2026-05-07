//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'media_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MediaResponse {
  /// Returns a new [MediaResponse] instance.
  MediaResponse({
    this.id,

    required this.url,

    this.altText,

    this.displayOrder,

    this.isPrimary,

    this.fileSize,

    this.mimeType,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'url', required: true, includeIfNull: false)
  final String url;

  @JsonKey(name: r'altText', required: false, includeIfNull: false)
  final String? altText;

  @JsonKey(name: r'displayOrder', required: false, includeIfNull: false)
  final int? displayOrder;

  @JsonKey(name: r'isPrimary', required: false, includeIfNull: false)
  final bool? isPrimary;

  @JsonKey(name: r'fileSize', required: false, includeIfNull: false)
  final int? fileSize;

  @JsonKey(name: r'mimeType', required: false, includeIfNull: false)
  final String? mimeType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MediaResponse &&
          other.id == id &&
          other.url == url &&
          other.altText == altText &&
          other.displayOrder == displayOrder &&
          other.isPrimary == isPrimary &&
          other.fileSize == fileSize &&
          other.mimeType == mimeType;

  @override
  int get hashCode =>
      id.hashCode +
      url.hashCode +
      (altText == null ? 0 : altText.hashCode) +
      displayOrder.hashCode +
      isPrimary.hashCode +
      (fileSize == null ? 0 : fileSize.hashCode) +
      (mimeType == null ? 0 : mimeType.hashCode);

  factory MediaResponse.fromJson(Map<String, dynamic> json) =>
      _$MediaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MediaResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
