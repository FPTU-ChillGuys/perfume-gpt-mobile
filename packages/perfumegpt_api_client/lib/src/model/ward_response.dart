//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ward_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WardResponse {
  /// Returns a new [WardResponse] instance.
  WardResponse({
    required this.wardCode,

    this.districtID,

    required this.wardName,

    required this.nameExtension,

    this.canUpdateCOD,

    this.supportType,

    this.status,

    this.createdDate,

    required this.updatedDate,
  });

  @JsonKey(name: r'WardCode', required: true, includeIfNull: false)
  final String wardCode;

  @JsonKey(name: r'DistrictID', required: false, includeIfNull: false)
  final int? districtID;

  @JsonKey(name: r'WardName', required: true, includeIfNull: false)
  final String wardName;

  @JsonKey(name: r'NameExtension', required: true, includeIfNull: false)
  final List<String> nameExtension;

  @JsonKey(name: r'CanUpdateCOD', required: false, includeIfNull: false)
  final bool? canUpdateCOD;

  @JsonKey(name: r'SupportType', required: false, includeIfNull: false)
  final int? supportType;

  @JsonKey(name: r'Status', required: false, includeIfNull: false)
  final int? status;

  @JsonKey(name: r'CreatedDate', required: false, includeIfNull: false)
  final String? createdDate;

  @JsonKey(name: r'UpdatedDate', required: true, includeIfNull: false)
  final String updatedDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WardResponse &&
          other.wardCode == wardCode &&
          other.districtID == districtID &&
          other.wardName == wardName &&
          other.nameExtension == nameExtension &&
          other.canUpdateCOD == canUpdateCOD &&
          other.supportType == supportType &&
          other.status == status &&
          other.createdDate == createdDate &&
          other.updatedDate == updatedDate;

  @override
  int get hashCode =>
      wardCode.hashCode +
      districtID.hashCode +
      wardName.hashCode +
      nameExtension.hashCode +
      canUpdateCOD.hashCode +
      supportType.hashCode +
      status.hashCode +
      (createdDate == null ? 0 : createdDate.hashCode) +
      updatedDate.hashCode;

  factory WardResponse.fromJson(Map<String, dynamic> json) =>
      _$WardResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WardResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
