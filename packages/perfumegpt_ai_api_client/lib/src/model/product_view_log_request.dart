//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_view_log_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductViewLogRequest {
  /// Returns a new [ProductViewLogRequest] instance.
  ProductViewLogRequest({

     this.userId,

    required  this.productId,

     this.variantId,
  });

      /// UUID của user cần gắn log (optional, dùng khi request không có Bearer token)
  @JsonKey(
    
    name: r'userId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



      /// UUID của sản phẩm
  @JsonKey(
    
    name: r'productId',
    required: true,
    includeIfNull: false,
  )


  final String productId;



      /// UUID của variant (nếu người dùng click vào một variant cụ thể)
  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductViewLogRequest &&
      other.userId == userId &&
      other.productId == productId &&
      other.variantId == variantId;

    @override
    int get hashCode =>
        (userId == null ? 0 : userId.hashCode) +
        productId.hashCode +
        (variantId == null ? 0 : variantId.hashCode);

  factory ProductViewLogRequest.fromJson(Map<String, dynamic> json) => _$ProductViewLogRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProductViewLogRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

