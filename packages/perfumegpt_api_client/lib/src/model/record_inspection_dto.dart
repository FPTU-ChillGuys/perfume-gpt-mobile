//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_inspection_dto.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RecordInspectionDto {
  /// Returns a new [RecordInspectionDto] instance.
  RecordInspectionDto({
    this.approvedRefundAmount,

    this.isRestocked,

    this.inspectionNote,
  });

  // minimum: 0
  @JsonKey(name: r'approvedRefundAmount', required: false, includeIfNull: false)
  final num? approvedRefundAmount;

  @JsonKey(name: r'isRestocked', required: false, includeIfNull: false)
  final bool? isRestocked;

  @JsonKey(name: r'inspectionNote', required: false, includeIfNull: false)
  final String? inspectionNote;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecordInspectionDto &&
          other.approvedRefundAmount == approvedRefundAmount &&
          other.isRestocked == isRestocked &&
          other.inspectionNote == inspectionNote;

  @override
  int get hashCode =>
      approvedRefundAmount.hashCode +
      isRestocked.hashCode +
      (inspectionNote == null ? 0 : inspectionNote.hashCode);

  factory RecordInspectionDto.fromJson(Map<String, dynamic> json) =>
      _$RecordInspectionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RecordInspectionDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
