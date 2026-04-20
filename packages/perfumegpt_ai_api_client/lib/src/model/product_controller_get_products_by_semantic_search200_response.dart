//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/product_controller_get_products_by_semantic_search200_response_all_of_payload.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_controller_get_products_by_semantic_search200_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductControllerGetProductsBySemanticSearch200Response {
  /// Returns a new [ProductControllerGetProductsBySemanticSearch200Response] instance.
  ProductControllerGetProductsBySemanticSearch200Response({
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
  final ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload?
  payload;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductControllerGetProductsBySemanticSearch200Response &&
          other.success == success &&
          other.error == error &&
          other.payload == payload;

  @override
  int get hashCode =>
      success.hashCode +
      (error == null ? 0 : error.hashCode) +
      payload.hashCode;

  factory ProductControllerGetProductsBySemanticSearch200Response.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductControllerGetProductsBySemanticSearch200ResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductControllerGetProductsBySemanticSearch200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
