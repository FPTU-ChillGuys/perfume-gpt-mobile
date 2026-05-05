//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/payment_method.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_method_distribution_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaymentMethodDistributionResponse {
  /// Returns a new [PaymentMethodDistributionResponse] instance.
  PaymentMethodDistributionResponse({

     this.paymentMethod,

     this.transactionsCount,

     this.amount,
  });

  @JsonKey(
    
    name: r'paymentMethod',
    required: false,
    includeIfNull: false,
  )


  final PaymentMethod? paymentMethod;



  @JsonKey(
    
    name: r'transactionsCount',
    required: false,
    includeIfNull: false,
  )


  final int? transactionsCount;



  @JsonKey(
    
    name: r'amount',
    required: false,
    includeIfNull: false,
  )


  final num? amount;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PaymentMethodDistributionResponse &&
      other.paymentMethod == paymentMethod &&
      other.transactionsCount == transactionsCount &&
      other.amount == amount;

    @override
    int get hashCode =>
        paymentMethod.hashCode +
        transactionsCount.hashCode +
        amount.hashCode;

  factory PaymentMethodDistributionResponse.fromJson(Map<String, dynamic> json) => _$PaymentMethodDistributionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodDistributionResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

