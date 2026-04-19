//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/variant_media_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/variant_stock_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/concentration_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_attribute_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_variant_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductVariantResponse {
  /// Returns a new [ProductVariantResponse] instance.
  ProductVariantResponse({
    required this.id,

    required this.productId,

    required this.sku,

    required this.barcode,

    required this.volumeMl,

    required this.type,

    required this.basePrice,

    required this.status,

    required this.concentrationId,

    this.concentration,

    this.stock,

    required this.media,

    required this.attributes,

    this.longevity,

    this.sillage,

    required this.createdAt,

    this.updatedAt,
  });

  /// ID variant
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// ID sản phẩm
  @JsonKey(name: r'productId', required: true, includeIfNull: false)
  final String productId;

  /// SKU
  @JsonKey(name: r'sku', required: true, includeIfNull: false)
  final String sku;

  /// Barcode
  @JsonKey(name: r'barcode', required: true, includeIfNull: false)
  final String barcode;

  /// Dung tích (ml)
  @JsonKey(name: r'volumeMl', required: true, includeIfNull: false)
  final num volumeMl;

  /// Loại sản phẩm
  @JsonKey(name: r'type', required: true, includeIfNull: false)
  final String type;

  /// Giá gốc
  @JsonKey(name: r'basePrice', required: true, includeIfNull: false)
  final num basePrice;

  /// Trạng thái variant
  @JsonKey(name: r'status', required: true, includeIfNull: false)
  final String status;

  /// ID nồng độ
  @JsonKey(name: r'concentrationId', required: true, includeIfNull: false)
  final num concentrationId;

  /// Thông tin nồng độ
  @JsonKey(name: r'concentration', required: false, includeIfNull: false)
  final ConcentrationResponse? concentration;

  /// Thông tin tồn kho
  @JsonKey(name: r'stock', required: false, includeIfNull: false)
  final VariantStockResponse? stock;

  /// Danh sách hình ảnh
  @JsonKey(name: r'media', required: true, includeIfNull: false)
  final List<VariantMediaResponse> media;

  /// Danh sách thuộc tính variant
  @JsonKey(name: r'attributes', required: true, includeIfNull: false)
  final List<ProductAttributeResponse> attributes;

  /// Độ lưu hương (Longevity)
  @JsonKey(name: r'longevity', required: false, includeIfNull: false)
  final num? longevity;

  /// Độ tỏa hương (Sillage)
  @JsonKey(name: r'sillage', required: false, includeIfNull: false)
  final num? sillage;

  /// Ngày tạo
  @JsonKey(name: r'createdAt', required: true, includeIfNull: false)
  final String createdAt;

  /// Ngày cập nhật
  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final Object? updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductVariantResponse &&
          other.id == id &&
          other.productId == productId &&
          other.sku == sku &&
          other.barcode == barcode &&
          other.volumeMl == volumeMl &&
          other.type == type &&
          other.basePrice == basePrice &&
          other.status == status &&
          other.concentrationId == concentrationId &&
          other.concentration == concentration &&
          other.stock == stock &&
          other.media == media &&
          other.attributes == attributes &&
          other.longevity == longevity &&
          other.sillage == sillage &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      id.hashCode +
      productId.hashCode +
      sku.hashCode +
      barcode.hashCode +
      volumeMl.hashCode +
      type.hashCode +
      basePrice.hashCode +
      status.hashCode +
      concentrationId.hashCode +
      (concentration == null ? 0 : concentration.hashCode) +
      (stock == null ? 0 : stock.hashCode) +
      media.hashCode +
      attributes.hashCode +
      longevity.hashCode +
      sillage.hashCode +
      createdAt.hashCode +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  factory ProductVariantResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductVariantResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
