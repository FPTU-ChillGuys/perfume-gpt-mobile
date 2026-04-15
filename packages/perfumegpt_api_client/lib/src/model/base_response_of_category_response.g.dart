// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_category_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfCategoryResponseCWProxy {
  BaseResponseOfCategoryResponse payload(CategoryResponse? payload);

  BaseResponseOfCategoryResponse success(bool? success);

  BaseResponseOfCategoryResponse message(String? message);

  BaseResponseOfCategoryResponse errors(List<String>? errors);

  BaseResponseOfCategoryResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCategoryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCategoryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCategoryResponse call({
    CategoryResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfCategoryResponse.copyWith(...)` or call `instanceOfBaseResponseOfCategoryResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfCategoryResponseCWProxyImpl
    implements _$BaseResponseOfCategoryResponseCWProxy {
  const _$BaseResponseOfCategoryResponseCWProxyImpl(this._value);

  final BaseResponseOfCategoryResponse _value;

  @override
  BaseResponseOfCategoryResponse payload(CategoryResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfCategoryResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfCategoryResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfCategoryResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfCategoryResponse errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCategoryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCategoryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCategoryResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfCategoryResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as CategoryResponse?,
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

extension $BaseResponseOfCategoryResponseCopyWith
    on BaseResponseOfCategoryResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfCategoryResponse.copyWith(...)` or `instanceOfBaseResponseOfCategoryResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfCategoryResponseCWProxy get copyWith =>
      _$BaseResponseOfCategoryResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfCategoryResponse _$BaseResponseOfCategoryResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfCategoryResponse', json, ($checkedConvert) {
  final val = BaseResponseOfCategoryResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : CategoryResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfCategoryResponseToJson(
  BaseResponseOfCategoryResponse instance,
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
