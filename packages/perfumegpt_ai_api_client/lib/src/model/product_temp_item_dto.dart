//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/product_temp_item_dto_variants_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_temp_item_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductTempItemDto {
  /// Returns a new [ProductTempItemDto] instance.
  ProductTempItemDto({

    required  this.id,

     this.name,

     this.variants,

    required  this.reasoning,

    required  this.source_,
  });

  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final Object? name;



  @JsonKey(
    
    name: r'variants',
    required: false,
    includeIfNull: false,
  )


  final List<ProductTempItemDtoVariantsInner>? variants;



  @JsonKey(
    
    name: r'reasoning',
    required: true,
    includeIfNull: false,
  )


  final String reasoning;



  @JsonKey(
    
    name: r'source',
    required: true,
    includeIfNull: false,
  )


  final String source_;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductTempItemDto &&
      other.id == id &&
      other.name == name &&
      other.variants == variants &&
      other.reasoning == reasoning &&
      other.source_ == source_;

    @override
    int get hashCode =>
        id.hashCode +
        (name == null ? 0 : name.hashCode) +
        (variants == null ? 0 : variants.hashCode) +
        reasoning.hashCode +
        source_.hashCode;

  factory ProductTempItemDto.fromJson(Map<String, dynamic> json) => _$ProductTempItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductTempItemDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

