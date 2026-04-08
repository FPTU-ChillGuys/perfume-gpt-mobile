//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_attribute_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductAttributeDto {
  /// Returns a new [ProductAttributeDto] instance.
  ProductAttributeDto({

     this.attributeId,

     this.valueId,
  });

  @JsonKey(
    
    name: r'attributeId',
    required: false,
    includeIfNull: false,
  )


  final int? attributeId;



  @JsonKey(
    
    name: r'valueId',
    required: false,
    includeIfNull: false,
  )


  final int? valueId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductAttributeDto &&
      other.attributeId == attributeId &&
      other.valueId == valueId;

    @override
    int get hashCode =>
        attributeId.hashCode +
        valueId.hashCode;

  factory ProductAttributeDto.fromJson(Map<String, dynamic> json) => _$ProductAttributeDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAttributeDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

