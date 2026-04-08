//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_lookup_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductLookupItem {
  /// Returns a new [ProductLookupItem] instance.
  ProductLookupItem({

     this.id,

    required  this.name,

    required  this.brandName,

     this.primaryImageUrl,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'brandName',
    required: true,
    includeIfNull: false,
  )


  final String brandName;



  @JsonKey(
    
    name: r'primaryImageUrl',
    required: false,
    includeIfNull: false,
  )


  final String? primaryImageUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductLookupItem &&
      other.id == id &&
      other.name == name &&
      other.brandName == brandName &&
      other.primaryImageUrl == primaryImageUrl;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        brandName.hashCode +
        (primaryImageUrl == null ? 0 : primaryImageUrl.hashCode);

  factory ProductLookupItem.fromJson(Map<String, dynamic> json) => _$ProductLookupItemFromJson(json);

  Map<String, dynamic> toJson() => _$ProductLookupItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

