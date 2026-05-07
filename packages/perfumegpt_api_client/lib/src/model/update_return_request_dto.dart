//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_return_request_dto.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateReturnRequestDto {
  /// Returns a new [UpdateReturnRequestDto] instance.
  UpdateReturnRequestDto({
    this.customerNote,

    this.refundBankName,

    this.refundAccountNumber,

    this.refundAccountName,

    this.temporaryMediaIds,

    this.removeMediaIds,
  });

  @JsonKey(name: r'customerNote', required: false, includeIfNull: false)
  final String? customerNote;

  @JsonKey(name: r'refundBankName', required: false, includeIfNull: false)
  final String? refundBankName;

  @JsonKey(name: r'refundAccountNumber', required: false, includeIfNull: false)
  final String? refundAccountNumber;

  @JsonKey(name: r'refundAccountName', required: false, includeIfNull: false)
  final String? refundAccountName;

  @JsonKey(name: r'temporaryMediaIds', required: false, includeIfNull: false)
  final List<String>? temporaryMediaIds;

  @JsonKey(name: r'removeMediaIds', required: false, includeIfNull: false)
  final List<String>? removeMediaIds;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateReturnRequestDto &&
          other.customerNote == customerNote &&
          other.refundBankName == refundBankName &&
          other.refundAccountNumber == refundAccountNumber &&
          other.refundAccountName == refundAccountName &&
          other.temporaryMediaIds == temporaryMediaIds &&
          other.removeMediaIds == removeMediaIds;

  @override
  int get hashCode =>
      (customerNote == null ? 0 : customerNote.hashCode) +
      (refundBankName == null ? 0 : refundBankName.hashCode) +
      (refundAccountNumber == null ? 0 : refundAccountNumber.hashCode) +
      (refundAccountName == null ? 0 : refundAccountName.hashCode) +
      (temporaryMediaIds == null ? 0 : temporaryMediaIds.hashCode) +
      (removeMediaIds == null ? 0 : removeMediaIds.hashCode);

  factory UpdateReturnRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateReturnRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateReturnRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
