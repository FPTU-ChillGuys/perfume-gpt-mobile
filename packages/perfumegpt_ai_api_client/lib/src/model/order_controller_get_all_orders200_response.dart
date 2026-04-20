//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/order_controller_get_all_orders200_response_all_of_payload.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_controller_get_all_orders200_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderControllerGetAllOrders200Response {
  /// Returns a new [OrderControllerGetAllOrders200Response] instance.
  OrderControllerGetAllOrders200Response({
    required this.success,

    this.error,

    this.payload,
  });

  /// Kết quả xử lý
  @JsonKey(name: r'success', required: true, includeIfNull: false)
  final bool success;

  /// Thông báo lỗi
  @JsonKey(name: r'error', required: false, includeIfNull: false)
  final Object? error;

  @JsonKey(name: r'payload', required: false, includeIfNull: false)
  final OrderControllerGetAllOrders200ResponseAllOfPayload? payload;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderControllerGetAllOrders200Response &&
          other.success == success &&
          other.error == error &&
          other.payload == payload;

  @override
  int get hashCode =>
      success.hashCode +
      (error == null ? 0 : error.hashCode) +
      payload.hashCode;

  factory OrderControllerGetAllOrders200Response.fromJson(
    Map<String, dynamic> json,
  ) => _$OrderControllerGetAllOrders200ResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$OrderControllerGetAllOrders200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
