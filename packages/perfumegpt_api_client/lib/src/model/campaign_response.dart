//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/campaign_status.dart';
import 'package:perfumegpt_api_client/src/model/campaign_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'campaign_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CampaignResponse {
  /// Returns a new [CampaignResponse] instance.
  CampaignResponse({

     this.id,

     this.name,

     this.description,

     this.startDate,

     this.endDate,

     this.type,

     this.status,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



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
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final CampaignStatus? status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CampaignResponse &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.type == type &&
      other.status == status;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        (description == null ? 0 : description.hashCode) +
        startDate.hashCode +
        endDate.hashCode +
        type.hashCode +
        status.hashCode;

  factory CampaignResponse.fromJson(Map<String, dynamic> json) => _$CampaignResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

