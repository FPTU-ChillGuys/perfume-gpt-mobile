//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/recipient_information.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_order_address_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateOrderAddressRequest {
  /// Returns a new [UpdateOrderAddressRequest] instance.
  UpdateOrderAddressRequest({

     this.savedAddressId,

     this.recipientInformation,
  });

  @JsonKey(
    
    name: r'savedAddressId',
    required: false,
    includeIfNull: false,
  )


  final String? savedAddressId;



  @JsonKey(
    
    name: r'recipientInformation',
    required: false,
    includeIfNull: false,
  )


  final RecipientInformation? recipientInformation;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateOrderAddressRequest &&
      other.savedAddressId == savedAddressId &&
      other.recipientInformation == recipientInformation;

    @override
    int get hashCode =>
        (savedAddressId == null ? 0 : savedAddressId.hashCode) +
        (recipientInformation == null ? 0 : recipientInformation.hashCode);

  factory UpdateOrderAddressRequest.fromJson(Map<String, dynamic> json) => _$UpdateOrderAddressRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOrderAddressRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

