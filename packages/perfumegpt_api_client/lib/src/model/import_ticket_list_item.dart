//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/import_status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'import_ticket_list_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ImportTicketListItem {
  /// Returns a new [ImportTicketListItem] instance.
  ImportTicketListItem({

     this.id,

    required  this.createdByName,

     this.verifiedByName,

    required  this.supplierName,

     this.expectedArrivalDate,

     this.actualImportDate,

     this.totalCost,

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
    
    name: r'verifiedByName',
    required: false,
    includeIfNull: false,
  )


  final String? verifiedByName;



  @JsonKey(
    
    name: r'supplierName',
    required: true,
    includeIfNull: false,
  )


  final String supplierName;



  @JsonKey(
    
    name: r'expectedArrivalDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? expectedArrivalDate;



  @JsonKey(
    
    name: r'actualImportDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? actualImportDate;



  @JsonKey(
    
    name: r'totalCost',
    required: false,
    includeIfNull: false,
  )


  final num? totalCost;



  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final ImportStatus? status;



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
    bool operator ==(Object other) => identical(this, other) || other is ImportTicketListItem &&
      other.id == id &&
      other.createdByName == createdByName &&
      other.verifiedByName == verifiedByName &&
      other.supplierName == supplierName &&
      other.expectedArrivalDate == expectedArrivalDate &&
      other.actualImportDate == actualImportDate &&
      other.totalCost == totalCost &&
      other.status == status &&
      other.totalItems == totalItems &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        id.hashCode +
        createdByName.hashCode +
        (verifiedByName == null ? 0 : verifiedByName.hashCode) +
        supplierName.hashCode +
        expectedArrivalDate.hashCode +
        actualImportDate.hashCode +
        totalCost.hashCode +
        status.hashCode +
        totalItems.hashCode +
        createdAt.hashCode;

  factory ImportTicketListItem.fromJson(Map<String, dynamic> json) => _$ImportTicketListItemFromJson(json);

  Map<String, dynamic> toJson() => _$ImportTicketListItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

