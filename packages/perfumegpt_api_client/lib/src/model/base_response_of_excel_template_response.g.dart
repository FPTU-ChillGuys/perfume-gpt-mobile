// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_excel_template_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfExcelTemplateResponseCWProxy {
  BaseResponseOfExcelTemplateResponse payload(ExcelTemplateResponse? payload);

  BaseResponseOfExcelTemplateResponse success(bool? success);

  BaseResponseOfExcelTemplateResponse message(String? message);

  BaseResponseOfExcelTemplateResponse errors(List<String>? errors);

  BaseResponseOfExcelTemplateResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfExcelTemplateResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfExcelTemplateResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfExcelTemplateResponse call({
    ExcelTemplateResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfExcelTemplateResponse.copyWith(...)` or call `instanceOfBaseResponseOfExcelTemplateResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfExcelTemplateResponseCWProxyImpl
    implements _$BaseResponseOfExcelTemplateResponseCWProxy {
  const _$BaseResponseOfExcelTemplateResponseCWProxyImpl(this._value);

  final BaseResponseOfExcelTemplateResponse _value;

  @override
  BaseResponseOfExcelTemplateResponse payload(ExcelTemplateResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfExcelTemplateResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfExcelTemplateResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfExcelTemplateResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfExcelTemplateResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfExcelTemplateResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfExcelTemplateResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfExcelTemplateResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfExcelTemplateResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ExcelTemplateResponse?,
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

extension $BaseResponseOfExcelTemplateResponseCopyWith
    on BaseResponseOfExcelTemplateResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfExcelTemplateResponse.copyWith(...)` or `instanceOfBaseResponseOfExcelTemplateResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfExcelTemplateResponseCWProxy get copyWith =>
      _$BaseResponseOfExcelTemplateResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfExcelTemplateResponse
_$BaseResponseOfExcelTemplateResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfExcelTemplateResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfExcelTemplateResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : ExcelTemplateResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfExcelTemplateResponseToJson(
  BaseResponseOfExcelTemplateResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?_$ResponseErrorTypeEnumMap[instance.errorType],
};

const _$ResponseErrorTypeEnumMap = {
  ResponseErrorType.none: 'None',
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
