// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_create_payment_response_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfCreatePaymentResponseDtoCWProxy {
  BaseResponseOfCreatePaymentResponseDto payload(
    CreatePaymentResponseDto? payload,
  );

  BaseResponseOfCreatePaymentResponseDto success(bool? success);

  BaseResponseOfCreatePaymentResponseDto message(String? message);

  BaseResponseOfCreatePaymentResponseDto errors(List<String>? errors);

  BaseResponseOfCreatePaymentResponseDto errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCreatePaymentResponseDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCreatePaymentResponseDto(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCreatePaymentResponseDto call({
    CreatePaymentResponseDto? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfCreatePaymentResponseDto.copyWith(...)` or call `instanceOfBaseResponseOfCreatePaymentResponseDto.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfCreatePaymentResponseDtoCWProxyImpl
    implements _$BaseResponseOfCreatePaymentResponseDtoCWProxy {
  const _$BaseResponseOfCreatePaymentResponseDtoCWProxyImpl(this._value);

  final BaseResponseOfCreatePaymentResponseDto _value;

  @override
  BaseResponseOfCreatePaymentResponseDto payload(
    CreatePaymentResponseDto? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfCreatePaymentResponseDto success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfCreatePaymentResponseDto message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfCreatePaymentResponseDto errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfCreatePaymentResponseDto errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCreatePaymentResponseDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCreatePaymentResponseDto(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCreatePaymentResponseDto call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfCreatePaymentResponseDto(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as CreatePaymentResponseDto?,
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

extension $BaseResponseOfCreatePaymentResponseDtoCopyWith
    on BaseResponseOfCreatePaymentResponseDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfCreatePaymentResponseDto.copyWith(...)` or `instanceOfBaseResponseOfCreatePaymentResponseDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfCreatePaymentResponseDtoCWProxy get copyWith =>
      _$BaseResponseOfCreatePaymentResponseDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfCreatePaymentResponseDto
_$BaseResponseOfCreatePaymentResponseDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfCreatePaymentResponseDto', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfCreatePaymentResponseDto(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : CreatePaymentResponseDto.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfCreatePaymentResponseDtoToJson(
  BaseResponseOfCreatePaymentResponseDto instance,
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
