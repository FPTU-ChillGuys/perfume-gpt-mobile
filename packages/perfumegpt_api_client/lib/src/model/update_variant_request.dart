//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/variant_status.dart';
import 'package:perfumegpt_api_client/src/model/variant_type.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_variant_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateVariantRequest {
  /// Returns a new [UpdateVariantRequest] instance.
  UpdateVariantRequest({

     this.sku,

     this.barcode,

     this.volumeMl,

     this.concentrationId,

     this.type,

     this.basePrice,

     this.status,

     this.mediaIdsToDelete,

     this.temporaryMediaIdsToAdd,

     this.attributes,
  });

  @JsonKey(
    
    name: r'sku',
    required: false,
    includeIfNull: false,
  )


  final String? sku;



  @JsonKey(
    
    name: r'barcode',
    required: false,
    includeIfNull: false,
  )


  final String? barcode;



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
    
    name: r'mediaIdsToDelete',
    required: false,
    includeIfNull: false,
  )


  final List<String>? mediaIdsToDelete;



  @JsonKey(
    
    name: r'temporaryMediaIdsToAdd',
    required: false,
    includeIfNull: false,
  )


  final List<String>? temporaryMediaIdsToAdd;



  @JsonKey(
    
    name: r'attributes',
    required: false,
    includeIfNull: false,
  )


  final List<ProductAttributeDto>? attributes;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateVariantRequest &&
      other.sku == sku &&
      other.barcode == barcode &&
      other.volumeMl == volumeMl &&
      other.concentrationId == concentrationId &&
      other.type == type &&
      other.basePrice == basePrice &&
      other.status == status &&
      other.mediaIdsToDelete == mediaIdsToDelete &&
      other.temporaryMediaIdsToAdd == temporaryMediaIdsToAdd &&
      other.attributes == attributes;

    @override
    int get hashCode =>
        sku.hashCode +
        barcode.hashCode +
        volumeMl.hashCode +
        concentrationId.hashCode +
        type.hashCode +
        basePrice.hashCode +
        status.hashCode +
        (mediaIdsToDelete == null ? 0 : mediaIdsToDelete.hashCode) +
        (temporaryMediaIdsToAdd == null ? 0 : temporaryMediaIdsToAdd.hashCode) +
        (attributes == null ? 0 : attributes.hashCode);

  factory UpdateVariantRequest.fromJson(Map<String, dynamic> json) => _$UpdateVariantRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateVariantRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

