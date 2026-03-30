//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/create_campaign_voucher_request.dart';
import 'package:perfumegpt_api_client/src/model/create_campaign_promotion_item_request.dart';
import 'package:perfumegpt_api_client/src/model/campaign_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_campaign_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateCampaignRequest {
  /// Returns a new [CreateCampaignRequest] instance.
  CreateCampaignRequest({

    required  this.name,

     this.description,

     this.startDate,

     this.endDate,

     this.type,

    required  this.items,

     this.vouchers,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



  @JsonKey(
    
    name: r'startDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? startDate;



  @JsonKey(
    
    name: r'endDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? endDate;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final CampaignType? type;



  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false,
  )


  final List<CreateCampaignPromotionItemRequest> items;



  @JsonKey(
    
    name: r'vouchers',
    required: false,
    includeIfNull: false,
  )


  final List<CreateCampaignVoucherRequest>? vouchers;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateCampaignRequest &&
      other.name == name &&
      other.description == description &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.type == type &&
      other.items == items &&
      other.vouchers == vouchers;

    @override
    int get hashCode =>
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        startDate.hashCode +
        endDate.hashCode +
        type.hashCode +
        items.hashCode +
        vouchers.hashCode;

  factory CreateCampaignRequest.fromJson(Map<String, dynamic> json) => _$CreateCampaignRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCampaignRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

