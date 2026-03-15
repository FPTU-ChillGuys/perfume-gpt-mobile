//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_import_detail_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateImportDetailRequest {
  /// Returns a new [CreateImportDetailRequest] instance.
  CreateImportDetailRequest({

     this.variantId,

     this.quantity,

     this.unitPrice,
  });

  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateImportDetailRequest &&
      other.variantId == variantId &&
      other.quantity == quantity &&
      other.unitPrice == unitPrice;

    @override
    int get hashCode =>
        variantId.hashCode +
        quantity.hashCode +
        unitPrice.hashCode;

  factory CreateImportDetailRequest.fromJson(Map<String, dynamic> json) => _$CreateImportDetailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateImportDetailRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

