//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'note_type.g.dart';

class NoteType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Top')
  static const NoteType top = _$top;
  @BuiltValueEnumConst(wireName: r'Heart')
  static const NoteType heart = _$heart;
  @BuiltValueEnumConst(wireName: r'Base')
  static const NoteType base_ = _$base_;

  static Serializer<NoteType> get serializer => _$noteTypeSerializer;

  const NoteType._(String name): super(name);

  static BuiltSet<NoteType> get values => _$values;
  static NoteType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NoteTypeMixin = Object with _$NoteTypeMixin;

