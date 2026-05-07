//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_order_info_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetOrderInfoRequest {
  /// Returns a new [GetOrderInfoRequest] instance.
  GetOrderInfoRequest({required this.trackingNumbers});

  @JsonKey(name: r'trackingNumbers', required: true, includeIfNull: false)
  final List<String> trackingNumbers;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GetOrderInfoRequest && other.trackingNumbers == trackingNumbers;

  @override
  int get hashCode => trackingNumbers.hashCode;

  factory GetOrderInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$GetOrderInfoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetOrderInfoRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
