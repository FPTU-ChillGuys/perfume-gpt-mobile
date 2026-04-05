// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NoteType _$top = const NoteType._('top');
const NoteType _$heart = const NoteType._('heart');
const NoteType _$base_ = const NoteType._('base_');

NoteType _$valueOf(String name) {
  switch (name) {
    case 'top':
      return _$top;
    case 'heart':
      return _$heart;
    case 'base_':
      return _$base_;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NoteType> _$values = BuiltSet<NoteType>(const <NoteType>[
  _$top,
  _$heart,
  _$base_,
]);

class _$NoteTypeMeta {
  const _$NoteTypeMeta();
  NoteType get top => _$top;
  NoteType get heart => _$heart;
  NoteType get base_ => _$base_;
  NoteType valueOf(String name) => _$valueOf(name);
  BuiltSet<NoteType> get values => _$values;
}

mixin _$NoteTypeMixin {
  // ignore: non_constant_identifier_names
  _$NoteTypeMeta get NoteType => const _$NoteTypeMeta();
}

Serializer<NoteType> _$noteTypeSerializer = _$NoteTypeSerializer();

class _$NoteTypeSerializer implements PrimitiveSerializer<NoteType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'top': 'Top',
    'heart': 'Heart',
    'base_': 'Base',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Top': 'top',
    'Heart': 'heart',
    'Base': 'base_',
  };

  @override
  final Iterable<Type> types = const <Type>[NoteType];
  @override
  final String wireName = 'NoteType';

  @override
  Object serialize(
    Serializers serializers,
    NoteType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  NoteType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => NoteType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
