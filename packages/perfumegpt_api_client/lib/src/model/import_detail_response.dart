//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/batch_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'import_detail_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ImportDetailResponse {
  /// Returns a new [ImportDetailResponse] instance.
  ImportDetailResponse({

     this.id,

     this.variantId,

     this.variantName,

     this.variantSku,

     this.quantity,

     this.unitPrice,

     this.totalPrice,

     this.rejectQuantity,

     this.note,

     this.batches,
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
    
    name: r'variantName',
    required: false,
    includeIfNull: false,
  )


  final String? variantName;



  @JsonKey(
    
    name: r'variantSku',
    required: false,
    includeIfNull: false,
  )


  final String? variantSku;



  @JsonKey(
    
    name: r'quantity',
    required: false,
    includeIfNull: false,
  )


  final int? quantity;



  @JsonKey(
    
    name: r'unitPrice',
    required: false,
    includeIfNull: false,
  )


  final num? unitPrice;



  @JsonKey(
    
    name: r'totalPrice',
    required: false,
    includeIfNull: false,
  )


  final num? totalPrice;



  @JsonKey(
    
    name: r'rejectQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? rejectQuantity;



  @JsonKey(
    
    name: r'note',
    required: false,
    includeIfNull: false,
  )


  final String? note;



  @JsonKey(
    
    name: r'batches',
    required: false,
    includeIfNull: false,
  )


  final List<BatchResponse>? batches;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ImportDetailResponse &&
      other.id == id &&
      other.variantId == variantId &&
      other.variantName == variantName &&
      other.variantSku == variantSku &&
      other.quantity == quantity &&
      other.unitPrice == unitPrice &&
      other.totalPrice == totalPrice &&
      other.rejectQuantity == rejectQuantity &&
      other.note == note &&
      other.batches == batches;

    @override
    int get hashCode =>
        id.hashCode +
        variantId.hashCode +
        variantName.hashCode +
        variantSku.hashCode +
        quantity.hashCode +
        unitPrice.hashCode +
        totalPrice.hashCode +
        rejectQuantity.hashCode +
        (note == null ? 0 : note.hashCode) +
        batches.hashCode;

  factory ImportDetailResponse.fromJson(Map<String, dynamic> json) => _$ImportDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ImportDetailResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

