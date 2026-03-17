//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_address_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateAddressRequest {
  /// Returns a new [CreateAddressRequest] instance.
  CreateAddressRequest({
    this.receiverName,

    this.phone,

    this.street,

    this.ward,

    this.district,

    this.city,

    this.wardCode,

    this.districtId,

    this.provinceId,
  });

  @JsonKey(name: r'receiverName', required: false, includeIfNull: false)
  final String? receiverName;

  @JsonKey(name: r'phone', required: false, includeIfNull: false)
  final String? phone;

  @JsonKey(name: r'street', required: false, includeIfNull: false)
  final String? street;

  @JsonKey(name: r'ward', required: false, includeIfNull: false)
  final String? ward;

  @JsonKey(name: r'district', required: false, includeIfNull: false)
  final String? district;

  @JsonKey(name: r'city', required: false, includeIfNull: false)
  final String? city;

  @JsonKey(name: r'wardCode', required: false, includeIfNull: false)
  final String? wardCode;

  @JsonKey(name: r'districtId', required: false, includeIfNull: false)
  final int? districtId;

  @JsonKey(name: r'provinceId', required: false, includeIfNull: false)
  final int? provinceId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateAddressRequest &&
          other.receiverName == receiverName &&
          other.phone == phone &&
          other.street == street &&
          other.ward == ward &&
          other.district == district &&
          other.city == city &&
          other.wardCode == wardCode &&
          other.districtId == districtId &&
          other.provinceId == provinceId;

  @override
  int get hashCode =>
      receiverName.hashCode +
      phone.hashCode +
      street.hashCode +
      ward.hashCode +
      district.hashCode +
      city.hashCode +
      wardCode.hashCode +
      districtId.hashCode +
      provinceId.hashCode;

  factory CreateAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAddressRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAddressRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
