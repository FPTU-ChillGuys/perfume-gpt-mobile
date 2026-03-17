//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/update_import_detail_request.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_import_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateImportRequest {
  /// Returns a new [UpdateImportRequest] instance.
  UpdateImportRequest({
    this.supplierId,

    this.expectedArrivalDate,

    this.importDetails,
  });

  @JsonKey(name: r'supplierId', required: false, includeIfNull: false)
  final int? supplierId;

  @JsonKey(name: r'expectedArrivalDate', required: false, includeIfNull: false)
  final DateTime? expectedArrivalDate;

  @JsonKey(name: r'importDetails', required: false, includeIfNull: false)
  final List<UpdateImportDetailRequest>? importDetails;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateImportRequest &&
          other.supplierId == supplierId &&
          other.expectedArrivalDate == expectedArrivalDate &&
          other.importDetails == importDetails;

  @override
  int get hashCode =>
      supplierId.hashCode +
      expectedArrivalDate.hashCode +
      importDetails.hashCode;

  factory UpdateImportRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateImportRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateImportRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
