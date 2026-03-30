//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pick_list_batch_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PickListBatchInfo {
  /// Returns a new [PickListBatchInfo] instance.
  PickListBatchInfo({

     this.reservationId,

     this.batchId,

     this.batchCode,

     this.note,

     this.reservedQuantity,

     this.expiryDate,
  });

  @JsonKey(
    
    name: r'reservationId',
    required: false,
    includeIfNull: false,
  )


  final String? reservationId;



  @JsonKey(
    
    name: r'batchId',
    required: false,
    includeIfNull: false,
  )


  final String? batchId;



  @JsonKey(
    
    name: r'batchCode',
    required: false,
    includeIfNull: false,
  )


  final String? batchCode;



  @JsonKey(
    
    name: r'note',
    required: false,
    includeIfNull: false,
  )


  final String? note;



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





    @override
    bool operator ==(Object other) => identical(this, other) || other is PickListBatchInfo &&
      other.reservationId == reservationId &&
      other.batchId == batchId &&
      other.batchCode == batchCode &&
      other.note == note &&
      other.reservedQuantity == reservedQuantity &&
      other.expiryDate == expiryDate;

    @override
    int get hashCode =>
        reservationId.hashCode +
        batchId.hashCode +
        batchCode.hashCode +
        (note == null ? 0 : note.hashCode) +
        reservedQuantity.hashCode +
        expiryDate.hashCode;

  factory PickListBatchInfo.fromJson(Map<String, dynamic> json) => _$PickListBatchInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PickListBatchInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

