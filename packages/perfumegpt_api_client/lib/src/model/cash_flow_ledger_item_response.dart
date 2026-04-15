//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/cash_flow_category.dart';
import 'package:perfumegpt_api_client/src/model/cash_flow_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cash_flow_ledger_item_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CashFlowLedgerItemResponse {
  /// Returns a new [CashFlowLedgerItemResponse] instance.
  CashFlowLedgerItemResponse({

     this.id,

     this.transactionDate,

     this.amount,

     this.flowType,

     this.category,

     this.referenceId,

     this.referenceCode,

     this.description,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'transactionDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? transactionDate;



  @JsonKey(
    
    name: r'amount',
    required: false,
    includeIfNull: false,
  )


  final num? amount;



  @JsonKey(
    
    name: r'flowType',
    required: false,
    includeIfNull: false,
  )


  final CashFlowType? flowType;



  @JsonKey(
    
    name: r'category',
    required: false,
    includeIfNull: false,
  )


  final CashFlowCategory? category;



  @JsonKey(
    
    name: r'referenceId',
    required: false,
    includeIfNull: false,
  )


  final String? referenceId;



  @JsonKey(
    
    name: r'referenceCode',
    required: false,
    includeIfNull: false,
  )


  final String? referenceCode;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CashFlowLedgerItemResponse &&
      other.id == id &&
      other.transactionDate == transactionDate &&
      other.amount == amount &&
      other.flowType == flowType &&
      other.category == category &&
      other.referenceId == referenceId &&
      other.referenceCode == referenceCode &&
      other.description == description;

    @override
    int get hashCode =>
        id.hashCode +
        transactionDate.hashCode +
        amount.hashCode +
        flowType.hashCode +
        category.hashCode +
        referenceId.hashCode +
        (referenceCode == null ? 0 : referenceCode.hashCode) +
        (description == null ? 0 : description.hashCode);

  factory CashFlowLedgerItemResponse.fromJson(Map<String, dynamic> json) => _$CashFlowLedgerItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CashFlowLedgerItemResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

