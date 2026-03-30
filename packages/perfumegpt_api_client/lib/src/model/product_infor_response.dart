//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/gender.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_infor_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductInforResponse {
  /// Returns a new [ProductInforResponse] instance.
  ProductInforResponse({

     this.productCode,

     this.brandName,

     this.origin,

     this.releaseYear,

     this.gender,

     this.scentGroup,

     this.style,

     this.topNotes,

     this.heartNotes,

     this.baseNotes,

     this.description,
  });

  @JsonKey(
    
    name: r'productCode',
    required: false,
    includeIfNull: false,
  )


  final String? productCode;



  @JsonKey(
    
    name: r'brandName',
    required: false,
    includeIfNull: false,
  )


  final String? brandName;



  @JsonKey(
    
    name: r'origin',
    required: false,
    includeIfNull: false,
  )


  final String? origin;



  @JsonKey(
    
    name: r'releaseYear',
    required: false,
    includeIfNull: false,
  )


  final int? releaseYear;



  @JsonKey(
    
    name: r'gender',
    required: false,
    includeIfNull: false,
  )


  final Gender? gender;



  @JsonKey(
    
    name: r'scentGroup',
    required: false,
    includeIfNull: false,
  )


  final String? scentGroup;



  @JsonKey(
    
    name: r'style',
    required: false,
    includeIfNull: false,
  )


  final String? style;



  @JsonKey(
    
    name: r'topNotes',
    required: false,
    includeIfNull: false,
  )


  final String? topNotes;



  @JsonKey(
    
    name: r'heartNotes',
    required: false,
    includeIfNull: false,
  )


  final String? heartNotes;



  @JsonKey(
    
    name: r'baseNotes',
    required: false,
    includeIfNull: false,
  )


  final String? baseNotes;



  @JsonKey(
    
    name: r'description',
    required: false,
    includeIfNull: false,
  )


  final String? description;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductInforResponse &&
      other.productCode == productCode &&
      other.brandName == brandName &&
      other.origin == origin &&
      other.releaseYear == releaseYear &&
      other.gender == gender &&
      other.scentGroup == scentGroup &&
      other.style == style &&
      other.topNotes == topNotes &&
      other.heartNotes == heartNotes &&
      other.baseNotes == baseNotes &&
      other.description == description;

    @override
    int get hashCode =>
        productCode.hashCode +
        brandName.hashCode +
        origin.hashCode +
        releaseYear.hashCode +
        gender.hashCode +
        scentGroup.hashCode +
        style.hashCode +
        topNotes.hashCode +
        heartNotes.hashCode +
        baseNotes.hashCode +
        description.hashCode;

  factory ProductInforResponse.fromJson(Map<String, dynamic> json) => _$ProductInforResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductInforResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

