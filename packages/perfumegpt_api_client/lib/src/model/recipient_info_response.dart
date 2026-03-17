//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'recipient_info_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RecipientInfoResponse {
  /// Returns a new [RecipientInfoResponse] instance.
  RecipientInfoResponse({
    this.id,

    this.fullName,

    this.phone,

    this.districtName,

    this.wardName,

    this.provinceName,

    this.fullAddress,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'fullName', required: false, includeIfNull: false)
  final String? fullName;

  @JsonKey(name: r'phone', required: false, includeIfNull: false)
  final String? phone;

  @JsonKey(name: r'districtName', required: false, includeIfNull: false)
  final String? districtName;

  @JsonKey(name: r'wardName', required: false, includeIfNull: false)
  final String? wardName;

  @JsonKey(name: r'provinceName', required: false, includeIfNull: false)
  final String? provinceName;

  @JsonKey(name: r'fullAddress', required: false, includeIfNull: false)
  final String? fullAddress;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecipientInfoResponse &&
          other.id == id &&
          other.fullName == fullName &&
          other.phone == phone &&
          other.districtName == districtName &&
          other.wardName == wardName &&
          other.provinceName == provinceName &&
          other.fullAddress == fullAddress;

  @override
  int get hashCode =>
      id.hashCode +
      (fullName == null ? 0 : fullName.hashCode) +
      (phone == null ? 0 : phone.hashCode) +
      districtName.hashCode +
      wardName.hashCode +
      provinceName.hashCode +
      fullAddress.hashCode;

  factory RecipientInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$RecipientInfoResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RecipientInfoResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
