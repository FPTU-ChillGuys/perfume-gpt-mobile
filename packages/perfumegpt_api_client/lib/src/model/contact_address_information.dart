//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'contact_address_information.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ContactAddressInformation {
  /// Returns a new [ContactAddressInformation] instance.
  ContactAddressInformation({
    required this.contactName,

    required this.contactPhoneNumber,

    this.districtId,

    required this.districtName,

    required this.wardCode,

    required this.wardName,

    this.provinceId,

    required this.provinceName,

    required this.fullAddress,
  });

  @JsonKey(name: r'contactName', required: true, includeIfNull: false)
  final String contactName;

  @JsonKey(name: r'contactPhoneNumber', required: true, includeIfNull: false)
  final String contactPhoneNumber;

  @JsonKey(name: r'districtId', required: false, includeIfNull: false)
  final int? districtId;

  @JsonKey(name: r'districtName', required: true, includeIfNull: false)
  final String districtName;

  @JsonKey(name: r'wardCode', required: true, includeIfNull: false)
  final String wardCode;

  @JsonKey(name: r'wardName', required: true, includeIfNull: false)
  final String wardName;

  @JsonKey(name: r'provinceId', required: false, includeIfNull: false)
  final int? provinceId;

  @JsonKey(name: r'provinceName', required: true, includeIfNull: false)
  final String provinceName;

  @JsonKey(name: r'fullAddress', required: true, includeIfNull: false)
  final String fullAddress;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContactAddressInformation &&
          other.contactName == contactName &&
          other.contactPhoneNumber == contactPhoneNumber &&
          other.districtId == districtId &&
          other.districtName == districtName &&
          other.wardCode == wardCode &&
          other.wardName == wardName &&
          other.provinceId == provinceId &&
          other.provinceName == provinceName &&
          other.fullAddress == fullAddress;

  @override
  int get hashCode =>
      contactName.hashCode +
      contactPhoneNumber.hashCode +
      districtId.hashCode +
      districtName.hashCode +
      wardCode.hashCode +
      wardName.hashCode +
      provinceId.hashCode +
      provinceName.hashCode +
      fullAddress.hashCode;

  factory ContactAddressInformation.fromJson(Map<String, dynamic> json) =>
      _$ContactAddressInformationFromJson(json);

  Map<String, dynamic> toJson() => _$ContactAddressInformationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
