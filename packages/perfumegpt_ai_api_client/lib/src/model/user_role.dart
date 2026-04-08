//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum UserRole {
      @JsonValue(r'admin')
      admin(r'admin'),
      @JsonValue(r'user')
      user(r'user'),
      @JsonValue(r'staff')
      staff(r'staff');

  const UserRole(this.value);

  final String value;

  @override
  String toString() => value;
}
