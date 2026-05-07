//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_stock_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateStockRequest {
  /// Returns a new [UpdateStockRequest] instance.
  UpdateStockRequest({this.lowStockThreshold});

  @JsonKey(name: r'lowStockThreshold', required: false, includeIfNull: false)
  final int? lowStockThreshold;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateStockRequest &&
          other.lowStockThreshold == lowStockThreshold;

  @override
  int get hashCode => lowStockThreshold.hashCode;

  factory UpdateStockRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateStockRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateStockRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
