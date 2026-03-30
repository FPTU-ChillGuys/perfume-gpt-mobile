//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'swap_damaged_stock_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SwapDamagedStockResponse {
  /// Returns a new [SwapDamagedStockResponse] instance.
  SwapDamagedStockResponse({

     this.newReservationId,

     this.newBatchId,

     this.newBatchCode,

     this.newLocation,

     this.reservedQuantity,

     this.expiryDate,

     this.message,
  });

  @JsonKey(
    
    name: r'newReservationId',
    required: false,
    includeIfNull: false,
  )


  final String? newReservationId;



  @JsonKey(
    
    name: r'newBatchId',
    required: false,
    includeIfNull: false,
  )


  final String? newBatchId;



  @JsonKey(
    
    name: r'newBatchCode',
    required: false,
    includeIfNull: false,
  )


  final String? newBatchCode;



  @JsonKey(
    
    name: r'newLocation',
    required: false,
    includeIfNull: false,
  )


  final String? newLocation;



  @JsonKey(
    
    name: r'reservedQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? reservedQuantity;



  @JsonKey(
    
    name: r'expiryDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? expiryDate;



  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
  )


  final String? message;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SwapDamagedStockResponse &&
      other.newReservationId == newReservationId &&
      other.newBatchId == newBatchId &&
      other.newBatchCode == newBatchCode &&
      other.newLocation == newLocation &&
      other.reservedQuantity == reservedQuantity &&
      other.expiryDate == expiryDate &&
      other.message == message;

    @override
    int get hashCode =>
        newReservationId.hashCode +
        newBatchId.hashCode +
        newBatchCode.hashCode +
        (newLocation == null ? 0 : newLocation.hashCode) +
        reservedQuantity.hashCode +
        expiryDate.hashCode +
        message.hashCode;

  factory SwapDamagedStockResponse.fromJson(Map<String, dynamic> json) => _$SwapDamagedStockResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SwapDamagedStockResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

