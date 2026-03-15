//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/transaction_status.dart';
import 'package:perfumegpt_api_client/src/model/payment_method.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_info_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaymentInfoResponse {
  /// Returns a new [PaymentInfoResponse] instance.
  PaymentInfoResponse({

     this.id,

     this.status,

     this.paymentMethod,

     this.failureReason,

     this.totalAmount,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final TransactionStatus? status;



  @JsonKey(
    
    name: r'paymentMethod',
    required: false,
    includeIfNull: false,
  )


  final PaymentMethod? paymentMethod;



  @JsonKey(
    
    name: r'failureReason',
    required: false,
    includeIfNull: false,
  )


  final String? failureReason;



  @JsonKey(
    
    name: r'totalAmount',
    required: false,
    includeIfNull: false,
  )


  final num? totalAmount;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PaymentInfoResponse &&
      other.id == id &&
      other.status == status &&
      other.paymentMethod == paymentMethod &&
      other.failureReason == failureReason &&
      other.totalAmount == totalAmount;

    @override
    int get hashCode =>
        id.hashCode +
        status.hashCode +
        paymentMethod.hashCode +
        (failureReason == null ? 0 : failureReason.hashCode) +
        totalAmount.hashCode;

  factory PaymentInfoResponse.fromJson(Map<String, dynamic> json) => _$PaymentInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentInfoResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

