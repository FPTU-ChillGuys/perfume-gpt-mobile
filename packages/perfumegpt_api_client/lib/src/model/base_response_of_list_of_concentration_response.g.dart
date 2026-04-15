// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_concentration_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfConcentrationResponseCWProxy {
  BaseResponseOfListOfConcentrationResponse payload(
    List<ConcentrationResponse>? payload,
  );

  BaseResponseOfListOfConcentrationResponse success(bool? success);

  BaseResponseOfListOfConcentrationResponse message(String? message);

  BaseResponseOfListOfConcentrationResponse errors(List<String>? errors);

  BaseResponseOfListOfConcentrationResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfConcentrationResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfConcentrationResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfConcentrationResponse call({
    List<ConcentrationResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfConcentrationResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfConcentrationResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfConcentrationResponseCWProxyImpl
    implements _$BaseResponseOfListOfConcentrationResponseCWProxy {
  const _$BaseResponseOfListOfConcentrationResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfConcentrationResponse _value;

  @override
  BaseResponseOfListOfConcentrationResponse payload(
    List<ConcentrationResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfConcentrationResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfConcentrationResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfConcentrationResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfConcentrationResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfConcentrationResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfConcentrationResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfConcentrationResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfConcentrationResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<ConcentrationResponse>?,
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      errors: errors == const $CopyWithPlaceholder()
          ? _value.errors
          // ignore: cast_nullable_to_non_nullable
          : errors as List<String>?,
      errorType: errorType == const $CopyWithPlaceholder()
          ? _value.errorType
          // ignore: cast_nullable_to_non_nullable
          : errorType as ResponseErrorType?,
    );
  }
}

extension $BaseResponseOfListOfConcentrationResponseCopyWith
    on BaseResponseOfListOfConcentrationResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfConcentrationResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfConcentrationResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfConcentrationResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfConcentrationResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfConcentrationResponse
_$BaseResponseOfListOfConcentrationResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfConcentrationResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfConcentrationResponse(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ConcentrationResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    success: $checkedConvert('success', (v) => v as bool?),
    message: $checkedConvert('message', (v) => v as String?),
    errors: $checkedConvert(
      'errors',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    errorType: $checkedConvert(
      'errorType',
      (v) => $enumDecodeNullable(_$ResponseErrorTypeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$BaseResponseOfListOfConcentrationResponseToJson(
  BaseResponseOfListOfConcentrationResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?_$ResponseErrorTypeEnumMap[instance.errorType],
};

const _$ResponseErrorTypeEnumMap = {
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
