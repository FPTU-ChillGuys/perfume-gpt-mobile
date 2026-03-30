//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_olfactory_family_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductOlfactoryFamilyResponse {
  /// Returns a new [ProductOlfactoryFamilyResponse] instance.
  ProductOlfactoryFamilyResponse({

     this.olfactoryFamilyId,

     this.name,
  });

  @JsonKey(
    
    name: r'olfactoryFamilyId',
    required: false,
    includeIfNull: false,
  )


  final int? olfactoryFamilyId;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductOlfactoryFamilyResponse &&
      other.olfactoryFamilyId == olfactoryFamilyId &&
      other.name == name;

    @override
    int get hashCode =>
        olfactoryFamilyId.hashCode +
        name.hashCode;

  factory ProductOlfactoryFamilyResponse.fromJson(Map<String, dynamic> json) => _$ProductOlfactoryFamilyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductOlfactoryFamilyResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

