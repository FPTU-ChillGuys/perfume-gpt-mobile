//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recipient_information.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RecipientInformation {
  /// Returns a new [RecipientInformation] instance.
  RecipientInformation({

     this.fullName,

     this.phone,

     this.districtId,

     this.districtName,

     this.wardCode,

     this.wardName,

     this.provinceId,

     this.provinceName,

     this.fullAddress,
  });

  @JsonKey(
    
    name: r'fullName',
    required: false,
    includeIfNull: false,
  )


  final String? fullName;



  @JsonKey(
    
    name: r'phone',
    required: false,
    includeIfNull: false,
  )


  final String? phone;



  @JsonKey(
    
    name: r'districtId',
    required: false,
    includeIfNull: false,
  )


  final int? districtId;



  @JsonKey(
    
    name: r'districtName',
    required: false,
    includeIfNull: false,
  )


  final String? districtName;



  @JsonKey(
    
    name: r'wardCode',
    required: false,
    includeIfNull: false,
  )


  final String? wardCode;



  @JsonKey(
    
    name: r'wardName',
    required: false,
    includeIfNull: false,
  )


  final String? wardName;



  @JsonKey(
    
    name: r'provinceId',
    required: false,
    includeIfNull: false,
  )


  final int? provinceId;



  @JsonKey(
    
    name: r'provinceName',
    required: false,
    includeIfNull: false,
  )


  final String? provinceName;



  @JsonKey(
    
    name: r'fullAddress',
    required: false,
    includeIfNull: false,
  )


  final String? fullAddress;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RecipientInformation &&
      other.fullName == fullName &&
      other.phone == phone &&
      other.districtId == districtId &&
      other.districtName == districtName &&
      other.wardCode == wardCode &&
      other.wardName == wardName &&
      other.provinceId == provinceId &&
      other.provinceName == provinceName &&
      other.fullAddress == fullAddress;

    @override
    int get hashCode =>
        fullName.hashCode +
        phone.hashCode +
        districtId.hashCode +
        districtName.hashCode +
        wardCode.hashCode +
        wardName.hashCode +
        provinceId.hashCode +
        provinceName.hashCode +
        fullAddress.hashCode;

  factory RecipientInformation.fromJson(Map<String, dynamic> json) => _$RecipientInformationFromJson(json);

  Map<String, dynamic> toJson() => _$RecipientInformationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

