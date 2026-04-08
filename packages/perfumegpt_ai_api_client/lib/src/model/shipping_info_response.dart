//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/shipping_status.dart';
import 'package:perfumegpt_ai_api_client/src/model/carrier_name.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shipping_info_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ShippingInfoResponse {
  /// Returns a new [ShippingInfoResponse] instance.
  ShippingInfoResponse({

     this.id,

     this.carrierName,

     this.trackingNumber,

     this.shippingFee,

     this.status,

     this.estimatedDeliveryDate,

     this.shippedDate,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'carrierName',
    required: false,
    includeIfNull: false,
  )


  final CarrierName? carrierName;



  @JsonKey(
    
    name: r'trackingNumber',
    required: false,
    includeIfNull: false,
  )


  final String? trackingNumber;



  @JsonKey(
    
    name: r'shippingFee',
    required: false,
    includeIfNull: false,
  )


  final num? shippingFee;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final ShippingStatus? status;



  @JsonKey(
    
    name: r'estimatedDeliveryDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? estimatedDeliveryDate;



  @JsonKey(
    
    name: r'shippedDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? shippedDate;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ShippingInfoResponse &&
      other.id == id &&
      other.carrierName == carrierName &&
      other.trackingNumber == trackingNumber &&
      other.shippingFee == shippingFee &&
      other.status == status &&
      other.estimatedDeliveryDate == estimatedDeliveryDate &&
      other.shippedDate == shippedDate;

    @override
    int get hashCode =>
        id.hashCode +
        carrierName.hashCode +
        (trackingNumber == null ? 0 : trackingNumber.hashCode) +
        shippingFee.hashCode +
        status.hashCode +
        (estimatedDeliveryDate == null ? 0 : estimatedDeliveryDate.hashCode) +
        (shippedDate == null ? 0 : shippedDate.hashCode);

  factory ShippingInfoResponse.fromJson(Map<String, dynamic> json) => _$ShippingInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingInfoResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

