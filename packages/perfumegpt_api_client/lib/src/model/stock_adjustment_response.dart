//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/stock_adjustment_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/stock_adjustment_status.dart';
import 'package:perfumegpt_api_client/src/model/stock_adjustment_reason.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stock_adjustment_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StockAdjustmentResponse {
  /// Returns a new [StockAdjustmentResponse] instance.
  StockAdjustmentResponse({
    this.id,

    this.createdById,

    required this.createdByName,

    this.verifiedById,

    this.verifiedByName,

    this.adjustmentDate,

    this.reason,

    this.note,

    this.status,

    required this.adjustmentDetails,

    this.createdAt,

    this.updatedAt,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'createdById', required: false, includeIfNull: false)
  final String? createdById;

  @JsonKey(name: r'createdByName', required: true, includeIfNull: false)
  final String createdByName;

  @JsonKey(name: r'verifiedById', required: false, includeIfNull: false)
  final String? verifiedById;

  @JsonKey(name: r'verifiedByName', required: false, includeIfNull: false)
  final String? verifiedByName;

  @JsonKey(name: r'adjustmentDate', required: false, includeIfNull: false)
  final DateTime? adjustmentDate;

  @JsonKey(name: r'reason', required: false, includeIfNull: false)
  final StockAdjustmentReason? reason;

  @JsonKey(name: r'note', required: false, includeIfNull: false)
  final String? note;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final StockAdjustmentStatus? status;

  @JsonKey(name: r'adjustmentDetails', required: true, includeIfNull: false)
  final List<StockAdjustmentDetailResponse> adjustmentDetails;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StockAdjustmentResponse &&
          other.id == id &&
          other.createdById == createdById &&
          other.createdByName == createdByName &&
          other.verifiedById == verifiedById &&
          other.verifiedByName == verifiedByName &&
          other.adjustmentDate == adjustmentDate &&
          other.reason == reason &&
          other.note == note &&
          other.status == status &&
          other.adjustmentDetails == adjustmentDetails &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      id.hashCode +
      createdById.hashCode +
      createdByName.hashCode +
      (verifiedById == null ? 0 : verifiedById.hashCode) +
      (verifiedByName == null ? 0 : verifiedByName.hashCode) +
      adjustmentDate.hashCode +
      reason.hashCode +
      (note == null ? 0 : note.hashCode) +
      status.hashCode +
      adjustmentDetails.hashCode +
      createdAt.hashCode +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  factory StockAdjustmentResponse.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StockAdjustmentResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
