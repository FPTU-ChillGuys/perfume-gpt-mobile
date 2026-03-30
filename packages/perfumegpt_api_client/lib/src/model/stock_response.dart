//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/stock_status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stock_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StockResponse {
  /// Returns a new [StockResponse] instance.
  StockResponse({

     this.id,

     this.variantId,

     this.variantSku,

     this.productName,

     this.variantImageUrl,

     this.volumeMl,

     this.concentrationName,

     this.totalQuantity,

     this.availableQuantity,

     this.lowStockThreshold,

     this.status,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;



  @JsonKey(
    
    name: r'variantSku',
    required: false,
    includeIfNull: false,
  )


  final String? variantSku;



  @JsonKey(
    
    name: r'productName',
    required: false,
    includeIfNull: false,
  )


  final String? productName;



  @JsonKey(
    
    name: r'variantImageUrl',
    required: false,
    includeIfNull: false,
  )


  final String? variantImageUrl;



  @JsonKey(
    
    name: r'volumeMl',
    required: false,
    includeIfNull: false,
  )


  final int? volumeMl;



  @JsonKey(
    
    name: r'concentrationName',
    required: false,
    includeIfNull: false,
  )


  final String? concentrationName;



  @JsonKey(
    
    name: r'totalQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? totalQuantity;



  @JsonKey(
    
    name: r'availableQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? availableQuantity;



  @JsonKey(
    
    name: r'lowStockThreshold',
    required: false,
    includeIfNull: false,
  )


  final int? lowStockThreshold;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final StockStatus? status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StockResponse &&
      other.id == id &&
      other.variantId == variantId &&
      other.variantSku == variantSku &&
      other.productName == productName &&
      other.variantImageUrl == variantImageUrl &&
      other.volumeMl == volumeMl &&
      other.concentrationName == concentrationName &&
      other.totalQuantity == totalQuantity &&
      other.availableQuantity == availableQuantity &&
      other.lowStockThreshold == lowStockThreshold &&
      other.status == status;

    @override
    int get hashCode =>
        id.hashCode +
        variantId.hashCode +
        variantSku.hashCode +
        productName.hashCode +
        variantImageUrl.hashCode +
        volumeMl.hashCode +
        concentrationName.hashCode +
        totalQuantity.hashCode +
        availableQuantity.hashCode +
        lowStockThreshold.hashCode +
        status.hashCode;

  factory StockResponse.fromJson(Map<String, dynamic> json) => _$StockResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StockResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

