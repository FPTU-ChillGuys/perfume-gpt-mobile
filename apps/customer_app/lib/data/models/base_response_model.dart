import 'package:json_annotation/json_annotation.dart';

part 'base_response_model.g.dart';

enum ResponseErrorTypeModel {
  @JsonValue(0)
  none,

  @JsonValue(1)
  badRequest,

  @JsonValue(2)
  unauthorized,

  @JsonValue(3)
  forbidden,

  @JsonValue(4)
  notFound,

  @JsonValue(5)
  conflict,

  @JsonValue(6)
  internalError,
}

@JsonSerializable(genericArgumentFactories: true)
class BaseResponseModel<T> {
  final bool success;
  final String message;
  final List<String>? errors;
  @JsonKey(unknownEnumValue: ResponseErrorTypeModel.internalError)
  final ResponseErrorTypeModel? errorType;
  final T? payload;

  const BaseResponseModel({
    required this.success,
    required this.message,
    this.errors,
    this.errorType,
    this.payload,
  });

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseModelFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$BaseResponseModelToJson(this, toJsonT);
}
