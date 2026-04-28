//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/product_controller_get_all_products200_response_payload.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_controller_get_all_products200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductControllerGetAllProducts200Response {
  /// Returns a new [ProductControllerGetAllProducts200Response] instance.
  ProductControllerGetAllProducts200Response({

     this.success,

     this.error,

     this.payload,
  });

      /// Kết quả xử lý
  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
  )


  final bool? success;



      /// Thông báo lỗi
  @JsonKey(
    
    name: r'error',
    required: false,
    includeIfNull: false,
  )


  final String? error;



  @JsonKey(
    
    name: r'payload',
    required: false,
    includeIfNull: false,
  )


  final ProductControllerGetAllProducts200ResponsePayload? payload;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductControllerGetAllProducts200Response &&
      other.success == success &&
      other.error == error &&
      other.payload == payload;

    @override
    int get hashCode =>
        success.hashCode +
        (error == null ? 0 : error.hashCode) +
        payload.hashCode;

  factory ProductControllerGetAllProducts200Response.fromJson(Map<String, dynamic> json) => _$ProductControllerGetAllProducts200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductControllerGetAllProducts200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

