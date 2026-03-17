//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'staff_lookup_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StaffLookupItem {
  /// Returns a new [StaffLookupItem] instance.
  StaffLookupItem({this.id, this.userName, this.fullName, this.email});

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'userName', required: false, includeIfNull: false)
  final String? userName;

  @JsonKey(name: r'fullName', required: false, includeIfNull: false)
  final String? fullName;

  @JsonKey(name: r'email', required: false, includeIfNull: false)
  final String? email;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StaffLookupItem &&
          other.id == id &&
          other.userName == userName &&
          other.fullName == fullName &&
          other.email == email;

  @override
  int get hashCode =>
      id.hashCode + userName.hashCode + fullName.hashCode + email.hashCode;

  factory StaffLookupItem.fromJson(Map<String, dynamic> json) =>
      _$StaffLookupItemFromJson(json);

  Map<String, dynamic> toJson() => _$StaffLookupItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
