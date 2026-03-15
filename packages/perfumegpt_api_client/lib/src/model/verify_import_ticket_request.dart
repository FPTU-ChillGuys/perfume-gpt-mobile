//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/verify_import_detail_request.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verify_import_ticket_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VerifyImportTicketRequest {
  /// Returns a new [VerifyImportTicketRequest] instance.
  VerifyImportTicketRequest({

     this.importDetails,
  });

  @JsonKey(
    
    name: r'importDetails',
    required: false,
    includeIfNull: false,
  )


  final List<VerifyImportDetailRequest>? importDetails;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VerifyImportTicketRequest &&
      other.importDetails == importDetails;

    @override
    int get hashCode =>
        importDetails.hashCode;

  factory VerifyImportTicketRequest.fromJson(Map<String, dynamic> json) => _$VerifyImportTicketRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyImportTicketRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

