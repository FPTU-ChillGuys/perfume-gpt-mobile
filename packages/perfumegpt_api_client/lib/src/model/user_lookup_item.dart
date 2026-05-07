//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_lookup_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserLookupItem {
  /// Returns a new [UserLookupItem] instance.
  UserLookupItem({this.id, required this.fullName, required this.email});

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'fullName', required: true, includeIfNull: false)
  final String fullName;

  @JsonKey(name: r'email', required: true, includeIfNull: false)
  final String email;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserLookupItem &&
          other.id == id &&
          other.fullName == fullName &&
          other.email == email;

  @override
  int get hashCode => id.hashCode + fullName.hashCode + email.hashCode;

  factory UserLookupItem.fromJson(Map<String, dynamic> json) =>
      _$UserLookupItemFromJson(json);

  Map<String, dynamic> toJson() => _$UserLookupItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
