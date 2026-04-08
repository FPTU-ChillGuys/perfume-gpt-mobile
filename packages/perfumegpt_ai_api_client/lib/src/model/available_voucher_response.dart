//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/discount_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'available_voucher_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AvailableVoucherResponse {
  /// Returns a new [AvailableVoucherResponse] instance.
  AvailableVoucherResponse({

     this.id,

    required  this.code,

     this.discountValue,

     this.discountType,

     this.minOrderValue,

     this.expiryDate,

     this.remainingQuantity,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false,
  )


  final String code;



  @JsonKey(
    
    name: r'discountValue',
    required: false,
    includeIfNull: false,
  )


  final num? discountValue;



  @JsonKey(
    
    name: r'discountType',
    required: false,
    includeIfNull: false,
  )


  final DiscountType? discountType;



  @JsonKey(
    
    name: r'minOrderValue',
    required: false,
    includeIfNull: false,
  )


  final num? minOrderValue;



  @JsonKey(
    
    name: r'expiryDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? expiryDate;



  @JsonKey(
    
    name: r'remainingQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? remainingQuantity;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AvailableVoucherResponse &&
      other.id == id &&
      other.code == code &&
      other.discountValue == discountValue &&
      other.discountType == discountType &&
      other.minOrderValue == minOrderValue &&
      other.expiryDate == expiryDate &&
      other.remainingQuantity == remainingQuantity;

    @override
    int get hashCode =>
        id.hashCode +
        code.hashCode +
        discountValue.hashCode +
        discountType.hashCode +
        (minOrderValue == null ? 0 : minOrderValue.hashCode) +
        expiryDate.hashCode +
        (remainingQuantity == null ? 0 : remainingQuantity.hashCode);

  factory AvailableVoucherResponse.fromJson(Map<String, dynamic> json) => _$AvailableVoucherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AvailableVoucherResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

