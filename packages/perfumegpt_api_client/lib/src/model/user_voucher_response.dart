//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_voucher_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserVoucherResponse {
  /// Returns a new [UserVoucherResponse] instance.
  UserVoucherResponse({

     this.id,

     this.voucherId,

    required  this.code,

     this.discountValue,

    required  this.discountType,

     this.minOrderValue,

     this.expiryDate,

     this.isUsed,

    required  this.status,

     this.isExpired,

     this.redeemedAt,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'voucherId',
    required: false,
    includeIfNull: false,
  )


  final String? voucherId;



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
    required: true,
    includeIfNull: false,
  )


  final String discountType;



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
    
    name: r'isUsed',
    required: false,
    includeIfNull: false,
  )


  final bool? isUsed;



  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final String status;



  @JsonKey(
    
    name: r'isExpired',
    required: false,
    includeIfNull: false,
  )


  final bool? isExpired;



  @JsonKey(
    
    name: r'redeemedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? redeemedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserVoucherResponse &&
      other.id == id &&
      other.voucherId == voucherId &&
      other.code == code &&
      other.discountValue == discountValue &&
      other.discountType == discountType &&
      other.minOrderValue == minOrderValue &&
      other.expiryDate == expiryDate &&
      other.isUsed == isUsed &&
      other.status == status &&
      other.isExpired == isExpired &&
      other.redeemedAt == redeemedAt;

    @override
    int get hashCode =>
        id.hashCode +
        voucherId.hashCode +
        code.hashCode +
        discountValue.hashCode +
        discountType.hashCode +
        (minOrderValue == null ? 0 : minOrderValue.hashCode) +
        expiryDate.hashCode +
        isUsed.hashCode +
        status.hashCode +
        isExpired.hashCode +
        redeemedAt.hashCode;

  factory UserVoucherResponse.fromJson(Map<String, dynamic> json) => _$UserVoucherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserVoucherResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

