//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/variant_type.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'public_product_variant_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PublicProductVariantResponse {
  /// Returns a new [PublicProductVariantResponse] instance.
  PublicProductVariantResponse({

     this.id,

    required  this.sku,

     this.volumeMl,

    required  this.concentrationName,

     this.type,

     this.basePrice,

     this.retailPrice,

     this.stockQuantity,

    required  this.productName,

    required  this.media,

     this.campaignName,

     this.voucherCode,

     this.discountedPrice,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'sku',
    required: true,
    includeIfNull: false,
  )


  final String sku;



  @JsonKey(
    
    name: r'volumeMl',
    required: false,
    includeIfNull: false,
  )


  final int? volumeMl;



  @JsonKey(
    
    name: r'concentrationName',
    required: true,
    includeIfNull: false,
  )


  final String concentrationName;



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
    
    name: r'stockQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? stockQuantity;



  @JsonKey(
    
    name: r'productName',
    required: true,
    includeIfNull: false,
  )


  final String productName;



  @JsonKey(
    
    name: r'media',
    required: true,
    includeIfNull: false,
  )


  final List<MediaResponse> media;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is PublicProductVariantResponse &&
      other.id == id &&
      other.sku == sku &&
      other.volumeMl == volumeMl &&
      other.concentrationName == concentrationName &&
      other.type == type &&
      other.basePrice == basePrice &&
      other.retailPrice == retailPrice &&
      other.stockQuantity == stockQuantity &&
      other.productName == productName &&
      other.media == media &&
      other.campaignName == campaignName &&
      other.voucherCode == voucherCode &&
      other.discountedPrice == discountedPrice;

    @override
    int get hashCode =>
        id.hashCode +
        sku.hashCode +
        volumeMl.hashCode +
        concentrationName.hashCode +
        type.hashCode +
        basePrice.hashCode +
        (retailPrice == null ? 0 : retailPrice.hashCode) +
        stockQuantity.hashCode +
        productName.hashCode +
        media.hashCode +
        (campaignName == null ? 0 : campaignName.hashCode) +
        (voucherCode == null ? 0 : voucherCode.hashCode) +
        (discountedPrice == null ? 0 : discountedPrice.hashCode);

  factory PublicProductVariantResponse.fromJson(Map<String, dynamic> json) => _$PublicProductVariantResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PublicProductVariantResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

