// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_concentration_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfConcentrationResponseCWProxy {
  BaseResponseOfConcentrationResponse payload(ConcentrationResponse? payload);

  BaseResponseOfConcentrationResponse success(bool? success);

  BaseResponseOfConcentrationResponse message(String? message);

  BaseResponseOfConcentrationResponse errors(List<String>? errors);

  BaseResponseOfConcentrationResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfConcentrationResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfConcentrationResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfConcentrationResponse call({
    ConcentrationResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfConcentrationResponse.copyWith(...)` or call `instanceOfBaseResponseOfConcentrationResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfConcentrationResponseCWProxyImpl
    implements _$BaseResponseOfConcentrationResponseCWProxy {
  const _$BaseResponseOfConcentrationResponseCWProxyImpl(this._value);

  final BaseResponseOfConcentrationResponse _value;

  @override
  BaseResponseOfConcentrationResponse payload(ConcentrationResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfConcentrationResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfConcentrationResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfConcentrationResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfConcentrationResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfConcentrationResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfConcentrationResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfConcentrationResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfConcentrationResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ConcentrationResponse?,
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

extension $BaseResponseOfConcentrationResponseCopyWith
    on BaseResponseOfConcentrationResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfConcentrationResponse.copyWith(...)` or `instanceOfBaseResponseOfConcentrationResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfConcentrationResponseCWProxy get copyWith =>
      _$BaseResponseOfConcentrationResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfConcentrationResponse
_$BaseResponseOfConcentrationResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfConcentrationResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfConcentrationResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : ConcentrationResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfConcentrationResponseToJson(
  BaseResponseOfConcentrationResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
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
