//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'top_product_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TopProductResponse {
  /// Returns a new [TopProductResponse] instance.
  TopProductResponse({
    this.productId,

    required this.productName,

    this.imageUrl,

    this.totalUnitsSold,

    this.revenue,
  });

  @JsonKey(name: r'productId', required: false, includeIfNull: false)
  final String? productId;

  @JsonKey(name: r'productName', required: true, includeIfNull: false)
  final String productName;

  @JsonKey(name: r'imageUrl', required: false, includeIfNull: false)
  final String? imageUrl;

  @JsonKey(name: r'totalUnitsSold', required: false, includeIfNull: false)
  final int? totalUnitsSold;

  @JsonKey(name: r'revenue', required: false, includeIfNull: false)
  final num? revenue;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TopProductResponse &&
          other.productId == productId &&
          other.productName == productName &&
          other.imageUrl == imageUrl &&
          other.totalUnitsSold == totalUnitsSold &&
          other.revenue == revenue;

  @override
  int get hashCode =>
      productId.hashCode +
      productName.hashCode +
      (imageUrl == null ? 0 : imageUrl.hashCode) +
      totalUnitsSold.hashCode +
      revenue.hashCode;

  factory TopProductResponse.fromJson(Map<String, dynamic> json) =>
      _$TopProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TopProductResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
