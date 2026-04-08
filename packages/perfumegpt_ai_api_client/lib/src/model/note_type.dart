//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum NoteType {
      @JsonValue(r'Top')
      top(r'Top'),
      @JsonValue(r'Heart')
      heart(r'Heart'),
      @JsonValue(r'Base')
      base_(r'Base');

  const NoteType(this.value);

  final String value;

  @override
  String toString() => value;
}
