//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/discount_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'applicable_voucher_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApplicableVoucherResponse {
  /// Returns a new [ApplicableVoucherResponse] instance.
  ApplicableVoucherResponse({

     this.voucherId,

    required  this.code,

     this.discountValue,

     this.discountType,

     this.isApplicable,

     this.ineligibleReason,
  });

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
    required: false,
    includeIfNull: false,
  )


  final DiscountType? discountType;



  @JsonKey(
    
    name: r'isApplicable',
    required: false,
    includeIfNull: false,
  )


  final bool? isApplicable;



  @JsonKey(
    
    name: r'ineligibleReason',
    required: false,
    includeIfNull: false,
  )


  final String? ineligibleReason;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ApplicableVoucherResponse &&
      other.voucherId == voucherId &&
      other.code == code &&
      other.discountValue == discountValue &&
      other.discountType == discountType &&
      other.isApplicable == isApplicable &&
      other.ineligibleReason == ineligibleReason;

    @override
    int get hashCode =>
        voucherId.hashCode +
        code.hashCode +
        discountValue.hashCode +
        discountType.hashCode +
        isApplicable.hashCode +
        (ineligibleReason == null ? 0 : ineligibleReason.hashCode);

  factory ApplicableVoucherResponse.fromJson(Map<String, dynamic> json) => _$ApplicableVoucherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApplicableVoucherResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

