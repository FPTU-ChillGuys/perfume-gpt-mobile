//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_status.g.dart';

class ImportStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Pending')
  static const ImportStatus pending = _$pending;
  @BuiltValueEnumConst(wireName: r'InProgress')
  static const ImportStatus inProgress = _$inProgress;
  @BuiltValueEnumConst(wireName: r'Completed')
  static const ImportStatus completed = _$completed;
  @BuiltValueEnumConst(wireName: r'Cancelled')
  static const ImportStatus cancelled = _$cancelled;

  static Serializer<ImportStatus> get serializer => _$importStatusSerializer;

  const ImportStatus._(String name): super(name);

  static BuiltSet<ImportStatus> get values => _$values;
  static ImportStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ImportStatusMixin = Object with _$ImportStatusMixin;

