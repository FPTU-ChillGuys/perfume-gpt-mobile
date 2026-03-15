//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'calculate_fee_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CalculateFeeData {
  /// Returns a new [CalculateFeeData] instance.
  CalculateFeeData({

     this.total,

     this.serviceFee,

     this.insuranceFee,

     this.pickStationFee,

     this.couponValue,

     this.r2sFee,

     this.documentReturn,

     this.doubleCheck,

     this.codFee,

     this.pickRemoteAreasFee,

     this.deliverRemoteAreasFee,

     this.codFailedFee,
  });

  @JsonKey(
    
    name: r'total',
    required: false,
    includeIfNull: false,
  )


  final int? total;



  @JsonKey(
    
    name: r'service_fee',
    required: false,
    includeIfNull: false,
  )


  final int? serviceFee;



  @JsonKey(
    
    name: r'insurance_fee',
    required: false,
    includeIfNull: false,
  )


  final int? insuranceFee;



  @JsonKey(
    
    name: r'pick_station_fee',
    required: false,
    includeIfNull: false,
  )


  final int? pickStationFee;



  @JsonKey(
    
    name: r'coupon_value',
    required: false,
    includeIfNull: false,
  )


  final int? couponValue;



  @JsonKey(
    
    name: r'r2s_fee',
    required: false,
    includeIfNull: false,
  )


  final int? r2sFee;



  @JsonKey(
    
    name: r'document_return',
    required: false,
    includeIfNull: false,
  )


  final int? documentReturn;



  @JsonKey(
    
    name: r'double_check',
    required: false,
    includeIfNull: false,
  )


  final int? doubleCheck;



  @JsonKey(
    
    name: r'cod_fee',
    required: false,
    includeIfNull: false,
  )


  final int? codFee;



  @JsonKey(
    
    name: r'pick_remote_areas_fee',
    required: false,
    includeIfNull: false,
  )


  final int? pickRemoteAreasFee;



  @JsonKey(
    
    name: r'deliver_remote_areas_fee',
    required: false,
    includeIfNull: false,
  )


  final int? deliverRemoteAreasFee;



  @JsonKey(
    
    name: r'cod_failed_fee',
    required: false,
    includeIfNull: false,
  )


  final int? codFailedFee;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CalculateFeeData &&
      other.total == total &&
      other.serviceFee == serviceFee &&
      other.insuranceFee == insuranceFee &&
      other.pickStationFee == pickStationFee &&
      other.couponValue == couponValue &&
      other.r2sFee == r2sFee &&
      other.documentReturn == documentReturn &&
      other.doubleCheck == doubleCheck &&
      other.codFee == codFee &&
      other.pickRemoteAreasFee == pickRemoteAreasFee &&
      other.deliverRemoteAreasFee == deliverRemoteAreasFee &&
      other.codFailedFee == codFailedFee;

    @override
    int get hashCode =>
        total.hashCode +
        serviceFee.hashCode +
        insuranceFee.hashCode +
        pickStationFee.hashCode +
        couponValue.hashCode +
        r2sFee.hashCode +
        documentReturn.hashCode +
        doubleCheck.hashCode +
        codFee.hashCode +
        pickRemoteAreasFee.hashCode +
        deliverRemoteAreasFee.hashCode +
        codFailedFee.hashCode;

  factory CalculateFeeData.fromJson(Map<String, dynamic> json) => _$CalculateFeeDataFromJson(json);

  Map<String, dynamic> toJson() => _$CalculateFeeDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

