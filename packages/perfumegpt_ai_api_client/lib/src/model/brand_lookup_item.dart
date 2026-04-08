//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'brand_lookup_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BrandLookupItem {
  /// Returns a new [BrandLookupItem] instance.
  BrandLookupItem({

     this.id,

    required  this.name,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BrandLookupItem &&
      other.id == id &&
      other.name == name;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode;

  factory BrandLookupItem.fromJson(Map<String, dynamic> json) => _$BrandLookupItemFromJson(json);

  Map<String, dynamic> toJson() => _$BrandLookupItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

