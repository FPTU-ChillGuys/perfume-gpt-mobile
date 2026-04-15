//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/reserved_batch_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_detail_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderDetailResponse {
  /// Returns a new [OrderDetailResponse] instance.
  OrderDetailResponse({

     this.id,

     this.variantId,

    required  this.variantName,

     this.imageUrl,

     this.quantity,

     this.unitPrice,

     this.campaignDiscount,

     this.campaignPrice,

     this.voucherDiscount,

     this.itemTotal,

     this.refunablePrice,

     this.total,

    required  this.reservedBatches,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;



  @JsonKey(
    
    name: r'variantName',
    required: true,
    includeIfNull: false,
  )


  final String variantName;



  @JsonKey(
    
    name: r'imageUrl',
    required: false,
    includeIfNull: false,
  )


  final String? imageUrl;



  @JsonKey(
    
    name: r'quantity',
    required: false,
    includeIfNull: false,
  )


  final int? quantity;



  @JsonKey(
    
    name: r'unitPrice',
    required: false,
    includeIfNull: false,
  )


  final num? unitPrice;



  @JsonKey(
    
    name: r'campaignDiscount',
    required: false,
    includeIfNull: false,
  )


  final num? campaignDiscount;



  @JsonKey(
    
    name: r'campaignPrice',
    required: false,
    includeIfNull: false,
  )


  final num? campaignPrice;



  @JsonKey(
    
    name: r'voucherDiscount',
    required: false,
    includeIfNull: false,
  )


  final num? voucherDiscount;



  @JsonKey(
    
    name: r'itemTotal',
    required: false,
    includeIfNull: false,
  )


  final num? itemTotal;



  @JsonKey(
    
    name: r'refunablePrice',
    required: false,
    includeIfNull: false,
  )


  final num? refunablePrice;



  @JsonKey(
    
    name: r'total',
    required: false,
    includeIfNull: false,
  )


  final num? total;



  @JsonKey(
    
    name: r'reservedBatches',
    required: true,
    includeIfNull: false,
  )


  final List<ReservedBatchResponse> reservedBatches;





    @override
    bool operator ==(Object other) => identical(this, other) || other is OrderDetailResponse &&
      other.id == id &&
      other.variantId == variantId &&
      other.variantName == variantName &&
      other.imageUrl == imageUrl &&
      other.quantity == quantity &&
      other.unitPrice == unitPrice &&
      other.campaignDiscount == campaignDiscount &&
      other.campaignPrice == campaignPrice &&
      other.voucherDiscount == voucherDiscount &&
      other.itemTotal == itemTotal &&
      other.refunablePrice == refunablePrice &&
      other.total == total &&
      other.reservedBatches == reservedBatches;

    @override
    int get hashCode =>
        id.hashCode +
        variantId.hashCode +
        variantName.hashCode +
        (imageUrl == null ? 0 : imageUrl.hashCode) +
        quantity.hashCode +
        unitPrice.hashCode +
        campaignDiscount.hashCode +
        campaignPrice.hashCode +
        voucherDiscount.hashCode +
        itemTotal.hashCode +
        refunablePrice.hashCode +
        total.hashCode +
        reservedBatches.hashCode;

  factory OrderDetailResponse.fromJson(Map<String, dynamic> json) => _$OrderDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

