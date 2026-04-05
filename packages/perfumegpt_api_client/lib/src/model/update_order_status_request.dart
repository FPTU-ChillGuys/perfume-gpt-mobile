//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/order_status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_order_status_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateOrderStatusRequest {
  /// Returns a new [UpdateOrderStatusRequest] instance.
  UpdateOrderStatusRequest({this.status, this.note});

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final OrderStatus? status;

  @JsonKey(name: r'note', required: false, includeIfNull: false)
  final String? note;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateOrderStatusRequest &&
          other.status == status &&
          other.note == note;

  @override
  int get hashCode => status.hashCode + (note == null ? 0 : note.hashCode);

  factory UpdateOrderStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateOrderStatusRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateOrderStatusRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
