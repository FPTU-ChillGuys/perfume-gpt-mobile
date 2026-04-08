//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum Gender {
      @JsonValue(r'Male')
      male(r'Male'),
      @JsonValue(r'Female')
      female(r'Female'),
      @JsonValue(r'Unisex')
      unisex(r'Unisex');

  const Gender(this.value);

  final String value;

  @override
  String toString() => value;
}
