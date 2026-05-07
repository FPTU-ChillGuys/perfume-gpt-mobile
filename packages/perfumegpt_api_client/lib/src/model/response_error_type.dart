//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

enum ResponseErrorType {
  @JsonValue(r'BadRequest')
  badRequest(r'BadRequest'),
  @JsonValue(r'Unauthorized')
  unauthorized(r'Unauthorized'),
  @JsonValue(r'Forbidden')
  forbidden(r'Forbidden'),
  @JsonValue(r'NotFound')
  notFound(r'NotFound'),
  @JsonValue(r'Conflict')
  conflict(r'Conflict'),
  @JsonValue(r'InternalError')
  internalError(r'InternalError');

  const ResponseErrorType(this.value);

  final String value;

  @override
  String toString() => value;
}
