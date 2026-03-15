//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attribute_lookup_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AttributeLookupItem {
  /// Returns a new [AttributeLookupItem] instance.
  AttributeLookupItem({

     this.id,

     this.name,

     this.description,

     this.isVariantLevel,
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



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;



  @JsonKey(
    
    name: r'isVariantLevel',
    required: false,
    includeIfNull: false,
  )


  final bool? isVariantLevel;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AttributeLookupItem &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.isVariantLevel == isVariantLevel;

    @override
    int get hashCode =>
        id.hashCode +
        name.hashCode +
        description.hashCode +
        isVariantLevel.hashCode;

  factory AttributeLookupItem.fromJson(Map<String, dynamic> json) => _$AttributeLookupItemFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeLookupItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

