//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/stock_adjustment_status.dart';
import 'package:perfumegpt_api_client/src/model/stock_adjustment_reason.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stock_adjustment_list_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StockAdjustmentListItem {
  /// Returns a new [StockAdjustmentListItem] instance.
  StockAdjustmentListItem({

     this.id,

    required  this.createdByName,

     this.adjustmentDate,

     this.reason,

     this.status,

     this.totalItems,

     this.createdAt,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'createdByName',
    required: true,
    includeIfNull: false,
  )


  final String createdByName;



  @JsonKey(
    
    name: r'adjustmentDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? adjustmentDate;



  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false,
  )


  final StockAdjustmentReason? reason;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final StockAdjustmentStatus? status;



  @JsonKey(
    
    name: r'totalItems',
    required: false,
    includeIfNull: false,
  )


  final int? totalItems;



  @JsonKey(
    
    name: r'createdAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StockAdjustmentListItem &&
      other.id == id &&
      other.createdByName == createdByName &&
      other.adjustmentDate == adjustmentDate &&
      other.reason == reason &&
      other.status == status &&
      other.totalItems == totalItems &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        id.hashCode +
        createdByName.hashCode +
        adjustmentDate.hashCode +
        reason.hashCode +
        status.hashCode +
        totalItems.hashCode +
        createdAt.hashCode;

  factory StockAdjustmentListItem.fromJson(Map<String, dynamic> json) => _$StockAdjustmentListItemFromJson(json);

  Map<String, dynamic> toJson() => _$StockAdjustmentListItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

