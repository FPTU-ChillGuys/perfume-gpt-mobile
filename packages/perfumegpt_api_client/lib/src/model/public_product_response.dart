//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/gender.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:perfumegpt_api_client/src/model/public_product_variant_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'public_product_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PublicProductResponse {
  /// Returns a new [PublicProductResponse] instance.
  PublicProductResponse({
    this.id,

    this.name,

    this.gender,

    required this.origin,

    this.releaseYear,

    required this.brandName,

    required this.categoryName,

    this.description,

    required this.media,

    required this.variants,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'gender', required: false, includeIfNull: false)
  final Gender? gender;

  @JsonKey(name: r'origin', required: true, includeIfNull: false)
  final String origin;

  @JsonKey(name: r'releaseYear', required: false, includeIfNull: false)
  final int? releaseYear;

  @JsonKey(name: r'brandName', required: true, includeIfNull: false)
  final String brandName;

  @JsonKey(name: r'categoryName', required: true, includeIfNull: false)
  final String categoryName;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  @JsonKey(name: r'media', required: true, includeIfNull: false)
  final List<MediaResponse> media;

  @JsonKey(name: r'variants', required: true, includeIfNull: false)
  final List<PublicProductVariantResponse> variants;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PublicProductResponse &&
          other.id == id &&
          other.name == name &&
          other.gender == gender &&
          other.origin == origin &&
          other.releaseYear == releaseYear &&
          other.brandName == brandName &&
          other.categoryName == categoryName &&
          other.description == description &&
          other.media == media &&
          other.variants == variants;

  @override
  int get hashCode =>
      id.hashCode +
      (name == null ? 0 : name.hashCode) +
      gender.hashCode +
      origin.hashCode +
      releaseYear.hashCode +
      brandName.hashCode +
      categoryName.hashCode +
      (description == null ? 0 : description.hashCode) +
      media.hashCode +
      variants.hashCode;

  factory PublicProductResponse.fromJson(Map<String, dynamic> json) =>
      _$PublicProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PublicProductResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
