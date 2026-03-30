//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/variant_status.dart';
import 'package:perfumegpt_api_client/src/model/variant_type.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_response.dart';
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

     this.id,

     this.barcode,

     this.sku,

     this.volumeMl,

     this.concentrationId,

     this.concentrationName,

     this.type,

     this.basePrice,

     this.retailPrice,

     this.status,

     this.stockQuantity,

     this.sillage,

     this.longevity,

     this.productId,

     this.productName,

     this.media,

     this.campaignName,

     this.voucherCode,

     this.discountedPrice,

     this.attributes,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'barcode',
    required: false,
    includeIfNull: false,
  )


  final String? barcode;



  @JsonKey(
    
    name: r'sku',
    required: false,
    includeIfNull: false,
  )


  final String? sku;



  @JsonKey(
    
    name: r'volumeMl',
    required: false,
    includeIfNull: false,
  )


  final int? volumeMl;



  @JsonKey(
    
    name: r'concentrationId',
    required: false,
    includeIfNull: false,
  )


  final int? concentrationId;



  @JsonKey(
    
    name: r'concentrationName',
    required: false,
    includeIfNull: false,
  )


  final String? concentrationName;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final VariantType? type;



  @JsonKey(
    
    name: r'basePrice',
    required: false,
    includeIfNull: false,
  )


  final num? basePrice;



  @JsonKey(
    
    name: r'retailPrice',
    required: false,
    includeIfNull: false,
  )


  final num? retailPrice;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final VariantStatus? status;



  @JsonKey(
    
    name: r'stockQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? stockQuantity;



  @JsonKey(
    
    name: r'sillage',
    required: false,
    includeIfNull: false,
  )


  final int? sillage;



  @JsonKey(
    
    name: r'longevity',
    required: false,
    includeIfNull: false,
  )


  final int? longevity;



  @JsonKey(
    
    name: r'productId',
    required: false,
    includeIfNull: false,
  )


  final String? productId;



  @JsonKey(
    
    name: r'productName',
    required: false,
    includeIfNull: false,
  )


  final String? productName;



  @JsonKey(
    
    name: r'media',
    required: false,
    includeIfNull: false,
  )


  final List<MediaResponse>? media;



  @JsonKey(
    
    name: r'campaignName',
    required: false,
    includeIfNull: false,
  )


  final String? campaignName;



  @JsonKey(
    
    name: r'voucherCode',
    required: false,
    includeIfNull: false,
  )


  final String? voucherCode;



  @JsonKey(
    
    name: r'discountedPrice',
    required: false,
    includeIfNull: false,
  )


  final num? discountedPrice;



  @JsonKey(
    
    name: r'attributes',
    required: false,
    includeIfNull: false,
  )


  final List<ProductAttributeResponse>? attributes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductVariantResponse &&
      other.id == id &&
      other.barcode == barcode &&
      other.sku == sku &&
      other.volumeMl == volumeMl &&
      other.concentrationId == concentrationId &&
      other.concentrationName == concentrationName &&
      other.type == type &&
      other.basePrice == basePrice &&
      other.retailPrice == retailPrice &&
      other.status == status &&
      other.stockQuantity == stockQuantity &&
      other.sillage == sillage &&
      other.longevity == longevity &&
      other.productId == productId &&
      other.productName == productName &&
      other.media == media &&
      other.campaignName == campaignName &&
      other.voucherCode == voucherCode &&
      other.discountedPrice == discountedPrice &&
      other.attributes == attributes;

    @override
    int get hashCode =>
        id.hashCode +
        barcode.hashCode +
        sku.hashCode +
        volumeMl.hashCode +
        concentrationId.hashCode +
        concentrationName.hashCode +
        type.hashCode +
        basePrice.hashCode +
        (retailPrice == null ? 0 : retailPrice.hashCode) +
        status.hashCode +
        stockQuantity.hashCode +
        sillage.hashCode +
        longevity.hashCode +
        productId.hashCode +
        productName.hashCode +
        media.hashCode +
        (campaignName == null ? 0 : campaignName.hashCode) +
        (voucherCode == null ? 0 : voucherCode.hashCode) +
        (discountedPrice == null ? 0 : discountedPrice.hashCode) +
        (attributes == null ? 0 : attributes.hashCode);

  factory ProductVariantResponse.fromJson(Map<String, dynamic> json) => _$ProductVariantResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductVariantResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

