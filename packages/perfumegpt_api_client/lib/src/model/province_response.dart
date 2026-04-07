//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'province_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProvinceResponse {
  /// Returns a new [ProvinceResponse] instance.
  ProvinceResponse({

     this.provinceID,

    required  this.provinceName,

     this.countryID,

     this.code,

     this.nameExtension,

     this.isEnable,

     this.regionID,

     this.updatedBy,

     this.createdAt,

     this.updatedAt,

     this.canUpdateCOD,

     this.status,
  });

  @JsonKey(
    
    name: r'ProvinceID',
    required: false,
    includeIfNull: false,
  )


  final int? provinceID;



  @JsonKey(
    
    name: r'ProvinceName',
    required: true,
    includeIfNull: false,
  )


  final String provinceName;



  @JsonKey(
    
    name: r'CountryID',
    required: false,
    includeIfNull: false,
  )


  final int? countryID;



  @JsonKey(
    
    name: r'Code',
    required: false,
    includeIfNull: false,
  )


  final int? code;



  @JsonKey(
    
    name: r'NameExtension',
    required: false,
    includeIfNull: false,
  )


  final List<String>? nameExtension;



  @JsonKey(
    
    name: r'IsEnable',
    required: false,
    includeIfNull: false,
  )


  final int? isEnable;



  @JsonKey(
    
    name: r'RegionID',
    required: false,
    includeIfNull: false,
  )


  final int? regionID;



  @JsonKey(
    
    name: r'UpdatedBy',
    required: false,
    includeIfNull: false,
  )


  final int? updatedBy;



  @JsonKey(
    
    name: r'CreatedAt',
    required: false,
    includeIfNull: false,
  )


  final String? createdAt;



  @JsonKey(
    
    name: r'UpdatedAt',
    required: false,
    includeIfNull: false,
  )


  final String? updatedAt;



  @JsonKey(
    
    name: r'CanUpdateCOD',
    required: false,
    includeIfNull: false,
  )


  final bool? canUpdateCOD;



  @JsonKey(
    
    name: r'Status',
    required: false,
    includeIfNull: false,
  )


  final int? status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProvinceResponse &&
      other.provinceID == provinceID &&
      other.provinceName == provinceName &&
      other.countryID == countryID &&
      other.code == code &&
      other.nameExtension == nameExtension &&
      other.isEnable == isEnable &&
      other.regionID == regionID &&
      other.updatedBy == updatedBy &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.canUpdateCOD == canUpdateCOD &&
      other.status == status;

    @override
    int get hashCode =>
        provinceID.hashCode +
        provinceName.hashCode +
        countryID.hashCode +
        code.hashCode +
        (nameExtension == null ? 0 : nameExtension.hashCode) +
        isEnable.hashCode +
        regionID.hashCode +
        updatedBy.hashCode +
        (createdAt == null ? 0 : createdAt.hashCode) +
        (updatedAt == null ? 0 : updatedAt.hashCode) +
        canUpdateCOD.hashCode +
        status.hashCode;

  factory ProvinceResponse.fromJson(Map<String, dynamic> json) => _$ProvinceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProvinceResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

