//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AddressResponse {
  /// Returns a new [AddressResponse] instance.
  AddressResponse({

     this.id,

    required  this.recipientName,

    required  this.recipientPhoneNumber,

    required  this.street,

    required  this.ward,

    required  this.district,

    required  this.city,

    required  this.wardCode,

     this.districtId,

     this.provinceId,

     this.isDefault,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'recipientName',
    required: true,
    includeIfNull: false,
  )


  final String recipientName;



  @JsonKey(
    
    name: r'recipientPhoneNumber',
    required: true,
    includeIfNull: false,
  )


  final String recipientPhoneNumber;



  @JsonKey(
    
    name: r'street',
    required: true,
    includeIfNull: false,
  )


  final String street;



  @JsonKey(
    
    name: r'ward',
    required: true,
    includeIfNull: false,
  )


  final String ward;



  @JsonKey(
    
    name: r'district',
    required: true,
    includeIfNull: false,
  )


  final String district;



  @JsonKey(
    
    name: r'city',
    required: true,
    includeIfNull: false,
  )


  final String city;



  @JsonKey(
    
    name: r'wardCode',
    required: true,
    includeIfNull: false,
  )


  final String wardCode;



  @JsonKey(
    
    name: r'districtId',
    required: false,
    includeIfNull: false,
  )


  final int? districtId;



  @JsonKey(
    
    name: r'provinceId',
    required: false,
    includeIfNull: false,
  )


  final int? provinceId;



  @JsonKey(
    
    name: r'isDefault',
    required: false,
    includeIfNull: false,
  )


  final bool? isDefault;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AddressResponse &&
      other.id == id &&
      other.recipientName == recipientName &&
      other.recipientPhoneNumber == recipientPhoneNumber &&
      other.street == street &&
      other.ward == ward &&
      other.district == district &&
      other.city == city &&
      other.wardCode == wardCode &&
      other.districtId == districtId &&
      other.provinceId == provinceId &&
      other.isDefault == isDefault;

    @override
    int get hashCode =>
        id.hashCode +
        recipientName.hashCode +
        recipientPhoneNumber.hashCode +
        street.hashCode +
        ward.hashCode +
        district.hashCode +
        city.hashCode +
        wardCode.hashCode +
        districtId.hashCode +
        provinceId.hashCode +
        isDefault.hashCode;

  factory AddressResponse.fromJson(Map<String, dynamic> json) => _$AddressResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddressResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

