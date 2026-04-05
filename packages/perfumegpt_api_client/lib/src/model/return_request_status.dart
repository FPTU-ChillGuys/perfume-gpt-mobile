//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'return_request_status.g.dart';

class ReturnRequestStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Pending')
  static const ReturnRequestStatus pending = _$pending;
  @BuiltValueEnumConst(wireName: r'ApprovedForReturn')
  static const ReturnRequestStatus approvedForReturn = _$approvedForReturn;
  @BuiltValueEnumConst(wireName: r'Inspecting')
  static const ReturnRequestStatus inspecting = _$inspecting;
  @BuiltValueEnumConst(wireName: r'ReadyForRefund')
  static const ReturnRequestStatus readyForRefund = _$readyForRefund;
  @BuiltValueEnumConst(wireName: r'Completed')
  static const ReturnRequestStatus completed = _$completed;
  @BuiltValueEnumConst(wireName: r'Rejected')
  static const ReturnRequestStatus rejected = _$rejected;

  static Serializer<ReturnRequestStatus> get serializer => _$returnRequestStatusSerializer;

  const ReturnRequestStatus._(String name): super(name);

  static BuiltSet<ReturnRequestStatus> get values => _$values;
  static ReturnRequestStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ReturnRequestStatusMixin = Object with _$ReturnRequestStatusMixin;

