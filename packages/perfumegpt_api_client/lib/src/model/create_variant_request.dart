//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/variant_status.dart';
import 'package:perfumegpt_api_client/src/model/variant_type.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_variant_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateVariantRequest {
  /// Returns a new [CreateVariantRequest] instance.
  CreateVariantRequest({

     this.productId,

     this.barcode,

     this.sku,

     this.volumeMl,

     this.concentrationId,

     this.type,

     this.basePrice,

     this.status,

     this.lowStockThreshold,

     this.attributes,

     this.temporaryMediaIds,
  });

  @JsonKey(
    
    name: r'productId',
    required: false,
    includeIfNull: false,
  )


  final String? productId;



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
    
    name: r'lowStockThreshold',
    required: false,
    includeIfNull: false,
  )


  final int? lowStockThreshold;



  @JsonKey(
    
    name: r'attributes',
    required: false,
    includeIfNull: false,
  )


  final List<ProductAttributeDto>? attributes;



  @JsonKey(
    
    name: r'temporaryMediaIds',
    required: false,
    includeIfNull: false,
  )


  final List<String>? temporaryMediaIds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateVariantRequest &&
      other.productId == productId &&
      other.barcode == barcode &&
      other.sku == sku &&
      other.volumeMl == volumeMl &&
      other.concentrationId == concentrationId &&
      other.type == type &&
      other.basePrice == basePrice &&
      other.status == status &&
      other.lowStockThreshold == lowStockThreshold &&
      other.attributes == attributes &&
      other.temporaryMediaIds == temporaryMediaIds;

    @override
    int get hashCode =>
        productId.hashCode +
        barcode.hashCode +
        sku.hashCode +
        volumeMl.hashCode +
        concentrationId.hashCode +
        type.hashCode +
        basePrice.hashCode +
        status.hashCode +
        lowStockThreshold.hashCode +
        (attributes == null ? 0 : attributes.hashCode) +
        (temporaryMediaIds == null ? 0 : temporaryMediaIds.hashCode);

  factory CreateVariantRequest.fromJson(Map<String, dynamic> json) => _$CreateVariantRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateVariantRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

