//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/create_import_detail_request.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_import_ticket_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateImportTicketRequest {
  /// Returns a new [CreateImportTicketRequest] instance.
  CreateImportTicketRequest({

     this.supplierId,

     this.expectedArrivalDate,

     this.importDetails,
  });

  @JsonKey(
    
    name: r'supplierId',
    required: false,
    includeIfNull: false,
  )


  final int? supplierId;



  @JsonKey(
    
    name: r'expectedArrivalDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? expectedArrivalDate;



  @JsonKey(
    
    name: r'importDetails',
    required: false,
    includeIfNull: false,
  )


  final List<CreateImportDetailRequest>? importDetails;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateImportTicketRequest &&
      other.supplierId == supplierId &&
      other.expectedArrivalDate == expectedArrivalDate &&
      other.importDetails == importDetails;

    @override
    int get hashCode =>
        supplierId.hashCode +
        expectedArrivalDate.hashCode +
        importDetails.hashCode;

  factory CreateImportTicketRequest.fromJson(Map<String, dynamic> json) => _$CreateImportTicketRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateImportTicketRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

