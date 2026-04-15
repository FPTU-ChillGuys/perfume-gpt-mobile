//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/product_with_variants_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_controller_get_product_with_variants200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductControllerGetProductWithVariants200Response {
  /// Returns a new [ProductControllerGetProductWithVariants200Response] instance.
  ProductControllerGetProductWithVariants200Response({

    required  this.success,

     this.error,

     this.payload,

     this.data,
  });

      /// Kết quả xử lý
  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false,
  )


  final bool success;



      /// Thông báo lỗi
  @JsonKey(
    
    name: r'error',
    required: false,
    includeIfNull: false,
  )


  final Object? error;



      /// Dữ liệu trả về
  @JsonKey(
    
    name: r'payload',
    required: false,
    includeIfNull: false,
  )


  final Object? payload;



  @JsonKey(
    
    name: r'data',
    required: false,
    includeIfNull: false,
  )


  final ProductWithVariantsResponse? data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductControllerGetProductWithVariants200Response &&
      other.success == success &&
      other.error == error &&
      other.payload == payload &&
      other.data == data;

    @override
    int get hashCode =>
        success.hashCode +
        (error == null ? 0 : error.hashCode) +
        payload.hashCode +
        data.hashCode;

  factory ProductControllerGetProductWithVariants200Response.fromJson(Map<String, dynamic> json) => _$ProductControllerGetProductWithVariants200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductControllerGetProductWithVariants200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

