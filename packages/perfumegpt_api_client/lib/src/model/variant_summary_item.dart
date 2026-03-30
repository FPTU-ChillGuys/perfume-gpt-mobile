//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variant_summary_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VariantSummaryItem {
  /// Returns a new [VariantSummaryItem] instance.
  VariantSummaryItem({

     this.id,

     this.displayName,

     this.concentrationName,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'displayName',
    required: false,
    includeIfNull: false,
  )


  final String? displayName;



  @JsonKey(
    
    name: r'concentrationName',
    required: false,
    includeIfNull: false,
  )


  final String? concentrationName;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VariantSummaryItem &&
      other.id == id &&
      other.displayName == displayName &&
      other.concentrationName == concentrationName;

    @override
    int get hashCode =>
        id.hashCode +
        displayName.hashCode +
        concentrationName.hashCode;

  factory VariantSummaryItem.fromJson(Map<String, dynamic> json) => _$VariantSummaryItemFromJson(json);

  Map<String, dynamic> toJson() => _$VariantSummaryItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

