//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'supplier_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SupplierResponse {
  /// Returns a new [SupplierResponse] instance.
  SupplierResponse({
    this.id,

    required this.name,

    required this.contactEmail,

    required this.phone,

    required this.address,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  @JsonKey(name: r'contactEmail', required: true, includeIfNull: false)
  final String contactEmail;

  @JsonKey(name: r'phone', required: true, includeIfNull: false)
  final String phone;

  @JsonKey(name: r'address', required: true, includeIfNull: false)
  final String address;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SupplierResponse &&
          other.id == id &&
          other.name == name &&
          other.contactEmail == contactEmail &&
          other.phone == phone &&
          other.address == address;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      contactEmail.hashCode +
      phone.hashCode +
      address.hashCode;

  factory SupplierResponse.fromJson(Map<String, dynamic> json) =>
      _$SupplierResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SupplierResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
