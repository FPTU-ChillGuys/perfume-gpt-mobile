//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_order_detail_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateOrderDetailRequest {
  /// Returns a new [CreateOrderDetailRequest] instance.
  CreateOrderDetailRequest({required this.variantId, this.quantity});

  @JsonKey(name: r'variantId', required: true, includeIfNull: false)
  final String variantId;

  // minimum: 0
  @JsonKey(name: r'quantity', required: false, includeIfNull: false)
  final int? quantity;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateOrderDetailRequest &&
          other.variantId == variantId &&
          other.quantity == quantity;

  @override
  int get hashCode => variantId.hashCode + quantity.hashCode;

  factory CreateOrderDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderDetailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateOrderDetailRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
