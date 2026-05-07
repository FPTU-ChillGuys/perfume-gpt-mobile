//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mobile_survey_product.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MobileSurveyProduct {
  /// Returns a new [MobileSurveyProduct] instance.
  MobileSurveyProduct({
    required this.id,

    required this.name,

    required this.brandName,

    required this.primaryImage,

    required this.reasoning,

    required this.minPrice,

    required this.maxPrice,
  });

  /// ID sản phẩm
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Tên sản phẩm
  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  /// Tên thương hiệu
  @JsonKey(name: r'brandName', required: true, includeIfNull: false)
  final String brandName;

  /// URL ảnh chính
  @JsonKey(name: r'primaryImage', required: true, includeIfNull: false)
  final String primaryImage;

  /// Lý do AI gợi ý
  @JsonKey(name: r'reasoning', required: true, includeIfNull: false)
  final String reasoning;

  /// Giá thấp nhất
  @JsonKey(name: r'minPrice', required: true, includeIfNull: false)
  final num minPrice;

  /// Giá cao nhất
  @JsonKey(name: r'maxPrice', required: true, includeIfNull: false)
  final num maxPrice;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MobileSurveyProduct &&
          other.id == id &&
          other.name == name &&
          other.brandName == brandName &&
          other.primaryImage == primaryImage &&
          other.reasoning == reasoning &&
          other.minPrice == minPrice &&
          other.maxPrice == maxPrice;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      brandName.hashCode +
      primaryImage.hashCode +
      reasoning.hashCode +
      minPrice.hashCode +
      maxPrice.hashCode;

  factory MobileSurveyProduct.fromJson(Map<String, dynamic> json) =>
      _$MobileSurveyProductFromJson(json);

  Map<String, dynamic> toJson() => _$MobileSurveyProductToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
