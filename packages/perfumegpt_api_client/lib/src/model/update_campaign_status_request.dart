//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/campaign_status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_campaign_status_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateCampaignStatusRequest {
  /// Returns a new [UpdateCampaignStatusRequest] instance.
  UpdateCampaignStatusRequest({

     this.status,
  });

  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final CampaignStatus? status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateCampaignStatusRequest &&
      other.status == status;

    @override
    int get hashCode =>
        status.hashCode;

  factory UpdateCampaignStatusRequest.fromJson(Map<String, dynamic> json) => _$UpdateCampaignStatusRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCampaignStatusRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

