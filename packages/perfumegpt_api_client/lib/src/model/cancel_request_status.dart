//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel_request_status.g.dart';

class CancelRequestStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Pending')
  static const CancelRequestStatus pending = _$pending;
  @BuiltValueEnumConst(wireName: r'Approved')
  static const CancelRequestStatus approved = _$approved;
  @BuiltValueEnumConst(wireName: r'Rejected')
  static const CancelRequestStatus rejected = _$rejected;

  static Serializer<CancelRequestStatus> get serializer => _$cancelRequestStatusSerializer;

  const CancelRequestStatus._(String name): super(name);

  static BuiltSet<CancelRequestStatus> get values => _$values;
  static CancelRequestStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class CancelRequestStatusMixin = Object with _$CancelRequestStatusMixin;

