//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_payment_response_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreatePaymentResponseDto {
  /// Returns a new [CreatePaymentResponseDto] instance.
  CreatePaymentResponseDto({

     this.paymentId,

     this.paymentUrl,

     this.orderId,
  });

  @JsonKey(
    
    name: r'paymentId',
    required: false,
    includeIfNull: false,
  )


  final String? paymentId;



  @JsonKey(
    
    name: r'paymentUrl',
    required: false,
    includeIfNull: false,
  )


  final String? paymentUrl;



  @JsonKey(
    
    name: r'orderId',
    required: false,
    includeIfNull: false,
  )


  final String? orderId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreatePaymentResponseDto &&
      other.paymentId == paymentId &&
      other.paymentUrl == paymentUrl &&
      other.orderId == orderId;

    @override
    int get hashCode =>
        (paymentId == null ? 0 : paymentId.hashCode) +
        (paymentUrl == null ? 0 : paymentUrl.hashCode) +
        (orderId == null ? 0 : orderId.hashCode);

  factory CreatePaymentResponseDto.fromJson(Map<String, dynamic> json) => _$CreatePaymentResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreatePaymentResponseDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

