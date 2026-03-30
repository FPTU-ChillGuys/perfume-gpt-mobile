//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_import_detail_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateImportDetailRequest {
  /// Returns a new [UpdateImportDetailRequest] instance.
  UpdateImportDetailRequest({

     this.id,

    required  this.variantId,

     this.expectedQuantity,

     this.unitPrice,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'variantId',
    required: true,
    includeIfNull: false,
  )


  final String variantId;



          // minimum: 0
  @JsonKey(
    
    name: r'expectedQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? expectedQuantity;



          // minimum: 0
  @JsonKey(
    
    name: r'unitPrice',
    required: false,
    includeIfNull: false,
  )


  final num? unitPrice;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateImportDetailRequest &&
      other.id == id &&
      other.variantId == variantId &&
      other.expectedQuantity == expectedQuantity &&
      other.unitPrice == unitPrice;

    @override
    int get hashCode =>
        (id == null ? 0 : id.hashCode) +
        variantId.hashCode +
        expectedQuantity.hashCode +
        unitPrice.hashCode;

  factory UpdateImportDetailRequest.fromJson(Map<String, dynamic> json) => _$UpdateImportDetailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateImportDetailRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

