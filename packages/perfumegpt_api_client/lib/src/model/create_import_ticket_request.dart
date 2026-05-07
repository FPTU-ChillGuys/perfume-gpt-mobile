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
    required this.importDetails,

    this.supplierId,

    required this.expectedArrivalDate,
  });

  @JsonKey(name: r'importDetails', required: true, includeIfNull: false)
  final List<CreateImportDetailRequest> importDetails;

  // minimum: 0
  @JsonKey(name: r'supplierId', required: false, includeIfNull: false)
  final int? supplierId;

  @JsonKey(name: r'expectedArrivalDate', required: true, includeIfNull: false)
  final DateTime expectedArrivalDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateImportTicketRequest &&
          other.importDetails == importDetails &&
          other.supplierId == supplierId &&
          other.expectedArrivalDate == expectedArrivalDate;

  @override
  int get hashCode =>
      importDetails.hashCode +
      supplierId.hashCode +
      expectedArrivalDate.hashCode;

  factory CreateImportTicketRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateImportTicketRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateImportTicketRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
