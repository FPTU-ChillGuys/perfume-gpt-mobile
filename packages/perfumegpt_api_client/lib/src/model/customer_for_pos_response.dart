//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_for_pos_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomerForPosResponse {
  /// Returns a new [CustomerForPosResponse] instance.
  CustomerForPosResponse({
    this.id,

    required this.fullName,

    required this.phoneNumber,

    required this.email,

    this.loyaltyPoint,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'fullName', required: true, includeIfNull: false)
  final String fullName;

  @JsonKey(name: r'phoneNumber', required: true, includeIfNull: false)
  final String phoneNumber;

  @JsonKey(name: r'email', required: true, includeIfNull: false)
  final String email;

  @JsonKey(name: r'loyaltyPoint', required: false, includeIfNull: false)
  final int? loyaltyPoint;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerForPosResponse &&
          other.id == id &&
          other.fullName == fullName &&
          other.phoneNumber == phoneNumber &&
          other.email == email &&
          other.loyaltyPoint == loyaltyPoint;

  @override
  int get hashCode =>
      id.hashCode +
      fullName.hashCode +
      phoneNumber.hashCode +
      email.hashCode +
      loyaltyPoint.hashCode;

  factory CustomerForPosResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerForPosResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerForPosResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
