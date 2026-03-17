//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'verify_stock_adjustment_detail_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VerifyStockAdjustmentDetailRequest {
  /// Returns a new [VerifyStockAdjustmentDetailRequest] instance.
  VerifyStockAdjustmentDetailRequest({
    this.detailId,

    this.approvedQuantity,

    this.note,
  });

  @JsonKey(name: r'detailId', required: false, includeIfNull: false)
  final String? detailId;

  @JsonKey(name: r'approvedQuantity', required: false, includeIfNull: false)
  final int? approvedQuantity;

  @JsonKey(name: r'note', required: false, includeIfNull: false)
  final String? note;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VerifyStockAdjustmentDetailRequest &&
          other.detailId == detailId &&
          other.approvedQuantity == approvedQuantity &&
          other.note == note;

  @override
  int get hashCode =>
      detailId.hashCode +
      approvedQuantity.hashCode +
      (note == null ? 0 : note.hashCode);

  factory VerifyStockAdjustmentDetailRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$VerifyStockAdjustmentDetailRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$VerifyStockAdjustmentDetailRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
