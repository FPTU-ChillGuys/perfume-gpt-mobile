//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_supplier_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateSupplierRequest {
  /// Returns a new [CreateSupplierRequest] instance.
  CreateSupplierRequest({
    required this.name,

    required this.contactEmail,

    required this.phone,

    required this.address,
  });

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
      other is CreateSupplierRequest &&
          other.name == name &&
          other.contactEmail == contactEmail &&
          other.phone == phone &&
          other.address == address;

  @override
  int get hashCode =>
      name.hashCode + contactEmail.hashCode + phone.hashCode + address.hashCode;

  factory CreateSupplierRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSupplierRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateSupplierRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
