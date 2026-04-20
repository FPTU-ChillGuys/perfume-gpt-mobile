//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/applicable_voucher_cart_item_request.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_applicable_vouchers_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetApplicableVouchersRequest {
  /// Returns a new [GetApplicableVouchersRequest] instance.
  GetApplicableVouchersRequest({

     this.customerId,

    required  this.cartItems,
  });

  @JsonKey(
    
    name: r'customerId',
    required: false,
    includeIfNull: false,
  )


  final String? customerId;



  @JsonKey(
    
    name: r'cartItems',
    required: true,
    includeIfNull: false,
  )


  final List<ApplicableVoucherCartItemRequest> cartItems;





    @override
    bool operator ==(Object other) => identical(this, other) || other is GetApplicableVouchersRequest &&
      other.customerId == customerId &&
      other.cartItems == cartItems;

    @override
    int get hashCode =>
        (customerId == null ? 0 : customerId.hashCode) +
        cartItems.hashCode;

  factory GetApplicableVouchersRequest.fromJson(Map<String, dynamic> json) => _$GetApplicableVouchersRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetApplicableVouchersRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

