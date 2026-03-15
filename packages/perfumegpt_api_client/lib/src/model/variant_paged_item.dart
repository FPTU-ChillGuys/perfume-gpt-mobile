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

part 'variant_paged_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VariantPagedItem {
  /// Returns a new [VariantPagedItem] instance.
  VariantPagedItem({

     this.id,

     this.productId,

     this.primaryImage,

     this.barcode,

     this.sku,

     this.volumeMl,

     this.concentrationId,

     this.concentrationName,

     this.type,

     this.basePrice,

     this.status,

     this.stockQuantity,

     this.attributes,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'productId',
    required: false,
    includeIfNull: false,
  )


  final String? productId;



  @JsonKey(
    
    name: r'primaryImage',
    required: false,
    includeIfNull: false,
  )


  final MediaResponse? primaryImage;



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
    
    name: r'attributes',
    required: false,
    includeIfNull: false,
  )


  final List<ProductAttributeResponse>? attributes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VariantPagedItem &&
      other.id == id &&
      other.productId == productId &&
      other.primaryImage == primaryImage &&
      other.barcode == barcode &&
      other.sku == sku &&
      other.volumeMl == volumeMl &&
      other.concentrationId == concentrationId &&
      other.concentrationName == concentrationName &&
      other.type == type &&
      other.basePrice == basePrice &&
      other.status == status &&
      other.stockQuantity == stockQuantity &&
      other.attributes == attributes;

    @override
    int get hashCode =>
        id.hashCode +
        productId.hashCode +
        (primaryImage == null ? 0 : primaryImage.hashCode) +
        barcode.hashCode +
        sku.hashCode +
        volumeMl.hashCode +
        concentrationId.hashCode +
        concentrationName.hashCode +
        type.hashCode +
        basePrice.hashCode +
        status.hashCode +
        stockQuantity.hashCode +
        (attributes == null ? 0 : attributes.hashCode);

  factory VariantPagedItem.fromJson(Map<String, dynamic> json) => _$VariantPagedItemFromJson(json);

  Map<String, dynamic> toJson() => _$VariantPagedItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

