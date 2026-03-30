//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'redeem_voucher_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RedeemVoucherRequest {
  /// Returns a new [RedeemVoucherRequest] instance.
  RedeemVoucherRequest({

     this.voucherId,

     this.receiverEmailOrPhone,
  });

  @JsonKey(
    
    name: r'voucherId',
    required: false,
    includeIfNull: false,
  )


  final String? voucherId;



  @JsonKey(
    
    name: r'receiverEmailOrPhone',
    required: false,
    includeIfNull: false,
  )


  final String? receiverEmailOrPhone;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RedeemVoucherRequest &&
      other.voucherId == voucherId &&
      other.receiverEmailOrPhone == receiverEmailOrPhone;

    @override
    int get hashCode =>
        voucherId.hashCode +
        (receiverEmailOrPhone == null ? 0 : receiverEmailOrPhone.hashCode);

  factory RedeemVoucherRequest.fromJson(Map<String, dynamic> json) => _$RedeemVoucherRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RedeemVoucherRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

