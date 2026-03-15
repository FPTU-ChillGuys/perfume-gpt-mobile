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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfExcelTemplateResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfExcelTemplateResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfExcelTemplateResponse call({
    ExcelTemplateResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfExcelTemplateResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfExcelTemplateResponse.copyWith.fieldName(...)`
class _$BaseResponseOfExcelTemplateResponseCWProxyImpl
    implements _$BaseResponseOfExcelTemplateResponseCWProxy {
  const _$BaseResponseOfExcelTemplateResponseCWProxyImpl(this._value);

  final BaseResponseOfExcelTemplateResponse _value;

  @override
  BaseResponseOfExcelTemplateResponse payload(ExcelTemplateResponse? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfExcelTemplateResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfExcelTemplateResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfExcelTemplateResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfExcelTemplateResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfExcelTemplateResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfExcelTemplateResponse(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfExcelTemplateResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfExcelTemplateResponse.copyWith.fieldName(...)`.
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
