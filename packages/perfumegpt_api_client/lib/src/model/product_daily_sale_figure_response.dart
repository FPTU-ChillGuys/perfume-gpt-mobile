//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/variant_daily_sale_figure.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_daily_sale_figure_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductDailySaleFigureResponse {
  /// Returns a new [ProductDailySaleFigureResponse] instance.
  ProductDailySaleFigureResponse({

     this.productId,

     this.productName,

     this.dailySaleFigures,
  });

  @JsonKey(
    
    name: r'productId',
    required: false,
    includeIfNull: false,
  )


  final String? productId;



  @JsonKey(
    
    name: r'productName',
    required: false,
    includeIfNull: false,
  )


  final String? productName;



  @JsonKey(
    
    name: r'dailySaleFigures',
    required: false,
    includeIfNull: false,
  )


  final List<VariantDailySaleFigure>? dailySaleFigures;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductDailySaleFigureResponse &&
      other.productId == productId &&
      other.productName == productName &&
      other.dailySaleFigures == dailySaleFigures;

    @override
    int get hashCode =>
        productId.hashCode +
        productName.hashCode +
        dailySaleFigures.hashCode;

  factory ProductDailySaleFigureResponse.fromJson(Map<String, dynamic> json) => _$ProductDailySaleFigureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDailySaleFigureResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

