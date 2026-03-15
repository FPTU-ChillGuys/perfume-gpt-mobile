//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'categories_lookup_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CategoriesLookupItem {
  /// Returns a new [CategoriesLookupItem] instance.
  CategoriesLookupItem({

     this.id,

     this.name,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CategoriesLookupItem &&
      other.id == id &&
      other.name == name;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode;

  factory CategoriesLookupItem.fromJson(Map<String, dynamic> json) => _$CategoriesLookupItemFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesLookupItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

