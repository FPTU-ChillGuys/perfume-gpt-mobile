//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'district_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DistrictResponse {
  /// Returns a new [DistrictResponse] instance.
  DistrictResponse({
    this.districtID,

    this.provinceID,

    required this.districtName,

    this.code,

    this.type,

    this.supportType,

    required this.nameExtension,

    this.isEnable,

    this.canUpdateCOD,

    this.status,

    this.createdDate,

    required this.updatedDate,
  });

  @JsonKey(name: r'DistrictID', required: false, includeIfNull: false)
  final int? districtID;

  @JsonKey(name: r'ProvinceID', required: false, includeIfNull: false)
  final int? provinceID;

  @JsonKey(name: r'DistrictName', required: true, includeIfNull: false)
  final String districtName;

  @JsonKey(name: r'Code', required: false, includeIfNull: false)
  final int? code;

  @JsonKey(name: r'Type', required: false, includeIfNull: false)
  final int? type;

  @JsonKey(name: r'SupportType', required: false, includeIfNull: false)
  final int? supportType;

  @JsonKey(name: r'NameExtension', required: true, includeIfNull: false)
  final List<String> nameExtension;

  @JsonKey(name: r'IsEnable', required: false, includeIfNull: false)
  final int? isEnable;

  @JsonKey(name: r'CanUpdateCOD', required: false, includeIfNull: false)
  final bool? canUpdateCOD;

  @JsonKey(name: r'Status', required: false, includeIfNull: false)
  final int? status;

  @JsonKey(name: r'CreatedDate', required: false, includeIfNull: false)
  final String? createdDate;

  @JsonKey(name: r'UpdatedDate', required: true, includeIfNull: false)
  final String updatedDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DistrictResponse &&
          other.districtID == districtID &&
          other.provinceID == provinceID &&
          other.districtName == districtName &&
          other.code == code &&
          other.type == type &&
          other.supportType == supportType &&
          other.nameExtension == nameExtension &&
          other.isEnable == isEnable &&
          other.canUpdateCOD == canUpdateCOD &&
          other.status == status &&
          other.createdDate == createdDate &&
          other.updatedDate == updatedDate;

  @override
  int get hashCode =>
      districtID.hashCode +
      provinceID.hashCode +
      districtName.hashCode +
      code.hashCode +
      type.hashCode +
      supportType.hashCode +
      nameExtension.hashCode +
      isEnable.hashCode +
      canUpdateCOD.hashCode +
      status.hashCode +
      (createdDate == null ? 0 : createdDate.hashCode) +
      updatedDate.hashCode;

  factory DistrictResponse.fromJson(Map<String, dynamic> json) =>
      _$DistrictResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
