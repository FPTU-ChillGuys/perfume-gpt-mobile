// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_supplier_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfSupplierResponseCWProxy {
  BaseResponseOfSupplierResponse payload(SupplierResponse? payload);

  BaseResponseOfSupplierResponse success(bool? success);

  BaseResponseOfSupplierResponse message(String? message);

  BaseResponseOfSupplierResponse errors(List<String>? errors);

  BaseResponseOfSupplierResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfSupplierResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfSupplierResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfSupplierResponse call({
    SupplierResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfSupplierResponse.copyWith(...)` or call `instanceOfBaseResponseOfSupplierResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfSupplierResponseCWProxyImpl
    implements _$BaseResponseOfSupplierResponseCWProxy {
  const _$BaseResponseOfSupplierResponseCWProxyImpl(this._value);

  final BaseResponseOfSupplierResponse _value;

  @override
  BaseResponseOfSupplierResponse payload(SupplierResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfSupplierResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfSupplierResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfSupplierResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfSupplierResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfSupplierResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfSupplierResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfSupplierResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfSupplierResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as SupplierResponse?,
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

extension $BaseResponseOfSupplierResponseCopyWith
    on BaseResponseOfSupplierResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfSupplierResponse.copyWith(...)` or `instanceOfBaseResponseOfSupplierResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfSupplierResponseCWProxy get copyWith =>
      _$BaseResponseOfSupplierResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfSupplierResponse _$BaseResponseOfSupplierResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfSupplierResponse', json, ($checkedConvert) {
  final val = BaseResponseOfSupplierResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : SupplierResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfSupplierResponseToJson(
  BaseResponseOfSupplierResponse instance,
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
