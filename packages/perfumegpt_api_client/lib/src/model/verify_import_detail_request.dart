//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/create_batch_request.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verify_import_detail_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VerifyImportDetailRequest {
  /// Returns a new [VerifyImportDetailRequest] instance.
  VerifyImportDetailRequest({
    this.importDetailId,

    this.rejectQuantity,

    this.note,

    this.batches,
  });

  @JsonKey(name: r'importDetailId', required: false, includeIfNull: false)
  final String? importDetailId;

  @JsonKey(name: r'rejectQuantity', required: false, includeIfNull: false)
  final int? rejectQuantity;

  @JsonKey(name: r'note', required: false, includeIfNull: false)
  final String? note;

  @JsonKey(name: r'batches', required: false, includeIfNull: false)
  final List<CreateBatchRequest>? batches;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VerifyImportDetailRequest &&
          other.importDetailId == importDetailId &&
          other.rejectQuantity == rejectQuantity &&
          other.note == note &&
          other.batches == batches;

  @override
  int get hashCode =>
      importDetailId.hashCode +
      rejectQuantity.hashCode +
      (note == null ? 0 : note.hashCode) +
      batches.hashCode;

  factory VerifyImportDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyImportDetailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyImportDetailRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
