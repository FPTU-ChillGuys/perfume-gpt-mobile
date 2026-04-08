//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'batch_lookup_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BatchLookupResponse {
  /// Returns a new [BatchLookupResponse] instance.
  BatchLookupResponse({

     this.id,

    required  this.batchCode,

     this.variantId,

    required  this.sku,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'batchCode',
    required: true,
    includeIfNull: false,
  )


  final String batchCode;



  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;



  @JsonKey(
    
    name: r'sku',
    required: true,
    includeIfNull: false,
  )


  final String sku;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BatchLookupResponse &&
      other.id == id &&
      other.batchCode == batchCode &&
      other.variantId == variantId &&
      other.sku == sku;

    @override
    int get hashCode =>
        id.hashCode +
        batchCode.hashCode +
        variantId.hashCode +
        sku.hashCode;

  factory BatchLookupResponse.fromJson(Map<String, dynamic> json) => _$BatchLookupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BatchLookupResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

