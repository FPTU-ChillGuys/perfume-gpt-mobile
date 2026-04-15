//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog_item_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CatalogItemResponse {
  /// Returns a new [CatalogItemResponse] instance.
  CatalogItemResponse({

     this.id,

     this.productVariantId,

     this.supplierId,

    required  this.supplierName,

    required  this.variantSku,

    required  this.variantName,

     this.primaryImageUrl,

     this.negotiatedPrice,

     this.estimatedLeadTimeDays,

     this.isPrimary,

     this.createdAt,

     this.updatedAt,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'productVariantId',
    required: false,
    includeIfNull: false,
  )


  final String? productVariantId;



  @JsonKey(
    
    name: r'supplierId',
    required: false,
    includeIfNull: false,
  )


  final int? supplierId;



  @JsonKey(
    
    name: r'supplierName',
    required: true,
    includeIfNull: false,
  )


  final String supplierName;



  @JsonKey(
    
    name: r'variantSku',
    required: true,
    includeIfNull: false,
  )


  final String variantSku;



  @JsonKey(
    
    name: r'variantName',
    required: true,
    includeIfNull: false,
  )


  final String variantName;



  @JsonKey(
    
    name: r'primaryImageUrl',
    required: false,
    includeIfNull: false,
  )


  final String? primaryImageUrl;



  @JsonKey(
    
    name: r'negotiatedPrice',
    required: false,
    includeIfNull: false,
  )


  final num? negotiatedPrice;



  @JsonKey(
    
    name: r'estimatedLeadTimeDays',
    required: false,
    includeIfNull: false,
  )


  final int? estimatedLeadTimeDays;



  @JsonKey(
    
    name: r'isPrimary',
    required: false,
    includeIfNull: false,
  )


  final bool? isPrimary;



  @JsonKey(
    
    name: r'createdAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;



  @JsonKey(
    
    name: r'updatedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CatalogItemResponse &&
      other.id == id &&
      other.productVariantId == productVariantId &&
      other.supplierId == supplierId &&
      other.supplierName == supplierName &&
      other.variantSku == variantSku &&
      other.variantName == variantName &&
      other.primaryImageUrl == primaryImageUrl &&
      other.negotiatedPrice == negotiatedPrice &&
      other.estimatedLeadTimeDays == estimatedLeadTimeDays &&
      other.isPrimary == isPrimary &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        id.hashCode +
        productVariantId.hashCode +
        supplierId.hashCode +
        supplierName.hashCode +
        variantSku.hashCode +
        variantName.hashCode +
        (primaryImageUrl == null ? 0 : primaryImageUrl.hashCode) +
        negotiatedPrice.hashCode +
        estimatedLeadTimeDays.hashCode +
        isPrimary.hashCode +
        createdAt.hashCode +
        (updatedAt == null ? 0 : updatedAt.hashCode);

  factory CatalogItemResponse.fromJson(Map<String, dynamic> json) => _$CatalogItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogItemResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

