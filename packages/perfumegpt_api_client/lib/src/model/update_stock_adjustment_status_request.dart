//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/stock_adjustment_status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_stock_adjustment_status_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateStockAdjustmentStatusRequest {
  /// Returns a new [UpdateStockAdjustmentStatusRequest] instance.
  UpdateStockAdjustmentStatusRequest({this.status, this.note});

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final StockAdjustmentStatus? status;

  @JsonKey(name: r'note', required: false, includeIfNull: false)
  final String? note;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateStockAdjustmentStatusRequest &&
          other.status == status &&
          other.note == note;

  @override
  int get hashCode => status.hashCode + (note == null ? 0 : note.hashCode);

  factory UpdateStockAdjustmentStatusRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$UpdateStockAdjustmentStatusRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$UpdateStockAdjustmentStatusRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
