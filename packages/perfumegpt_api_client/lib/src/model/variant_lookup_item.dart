//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variant_lookup_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VariantLookupItem {
  /// Returns a new [VariantLookupItem] instance.
  VariantLookupItem({

     this.id,

     this.barcode,

     this.sku,

     this.displayName,

     this.volumeMl,

     this.concentrationName,

     this.basePrice,

     this.primaryImage,
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
    
    name: r'displayName',
    required: false,
    includeIfNull: false,
  )


  final String? displayName;



  @JsonKey(
    
    name: r'volumeMl',
    required: false,
    includeIfNull: false,
  )


  final int? volumeMl;



  @JsonKey(
    
    name: r'concentrationName',
    required: false,
    includeIfNull: false,
  )


  final String? concentrationName;



  @JsonKey(
    
    name: r'basePrice',
    required: false,
    includeIfNull: false,
  )


  final num? basePrice;



  @JsonKey(
    
    name: r'primaryImage',
    required: false,
    includeIfNull: false,
  )


  final MediaResponse? primaryImage;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VariantLookupItem &&
      other.id == id &&
      other.barcode == barcode &&
      other.sku == sku &&
      other.displayName == displayName &&
      other.volumeMl == volumeMl &&
      other.concentrationName == concentrationName &&
      other.basePrice == basePrice &&
      other.primaryImage == primaryImage;

    @override
    int get hashCode =>
        id.hashCode +
        barcode.hashCode +
        sku.hashCode +
        displayName.hashCode +
        volumeMl.hashCode +
        concentrationName.hashCode +
        basePrice.hashCode +
        (primaryImage == null ? 0 : primaryImage.hashCode);

  factory VariantLookupItem.fromJson(Map<String, dynamic> json) => _$VariantLookupItemFromJson(json);

  Map<String, dynamic> toJson() => _$VariantLookupItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

