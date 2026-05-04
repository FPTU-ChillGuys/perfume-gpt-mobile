//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'batch_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BatchResponse {
  /// Returns a new [BatchResponse] instance.
  BatchResponse({

     this.id,

    required  this.batchCode,

     this.manufactureDate,

     this.expiryDate,

     this.importQuantity,

     this.remainingQuantity,

     this.availableQuantity,

     this.createdAt,
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
    
    name: r'manufactureDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? manufactureDate;



  @JsonKey(
    
    name: r'expiryDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? expiryDate;



  @JsonKey(
    
    name: r'importQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? importQuantity;



  @JsonKey(
    
    name: r'remainingQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? remainingQuantity;



  @JsonKey(
    
    name: r'availableQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? availableQuantity;



  @JsonKey(
    
    name: r'createdAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BatchResponse &&
      other.id == id &&
      other.batchCode == batchCode &&
      other.manufactureDate == manufactureDate &&
      other.expiryDate == expiryDate &&
      other.importQuantity == importQuantity &&
      other.remainingQuantity == remainingQuantity &&
      other.availableQuantity == availableQuantity &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        id.hashCode +
        batchCode.hashCode +
        manufactureDate.hashCode +
        expiryDate.hashCode +
        importQuantity.hashCode +
        remainingQuantity.hashCode +
        availableQuantity.hashCode +
        createdAt.hashCode;

  factory BatchResponse.fromJson(Map<String, dynamic> json) => _$BatchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BatchResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

