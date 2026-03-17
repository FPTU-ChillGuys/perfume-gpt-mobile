//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'calculate_fee_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CalculateFeeRequest {
  /// Returns a new [CalculateFeeRequest] instance.
  CalculateFeeRequest({
    this.toDistrictId,

    this.toWardCode,

    this.length,

    this.width,

    this.height,

    this.weight,
  });

  @JsonKey(name: r'toDistrictId', required: false, includeIfNull: false)
  final int? toDistrictId;

  @JsonKey(name: r'toWardCode', required: false, includeIfNull: false)
  final String? toWardCode;

  @JsonKey(name: r'length', required: false, includeIfNull: false)
  final int? length;

  @JsonKey(name: r'width', required: false, includeIfNull: false)
  final int? width;

  @JsonKey(name: r'height', required: false, includeIfNull: false)
  final int? height;

  @JsonKey(name: r'weight', required: false, includeIfNull: false)
  final int? weight;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CalculateFeeRequest &&
          other.toDistrictId == toDistrictId &&
          other.toWardCode == toWardCode &&
          other.length == length &&
          other.width == width &&
          other.height == height &&
          other.weight == weight;

  @override
  int get hashCode =>
      toDistrictId.hashCode +
      toWardCode.hashCode +
      length.hashCode +
      width.hashCode +
      height.hashCode +
      weight.hashCode;

  factory CalculateFeeRequest.fromJson(Map<String, dynamic> json) =>
      _$CalculateFeeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CalculateFeeRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
