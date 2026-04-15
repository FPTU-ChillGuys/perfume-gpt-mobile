// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_category_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfCategoryResponseCWProxy {
  BaseResponseOfListOfCategoryResponse payload(List<CategoryResponse>? payload);

  BaseResponseOfListOfCategoryResponse success(bool? success);

  BaseResponseOfListOfCategoryResponse message(String? message);

  BaseResponseOfListOfCategoryResponse errors(List<String>? errors);

  BaseResponseOfListOfCategoryResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfCategoryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfCategoryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfCategoryResponse call({
    List<CategoryResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfCategoryResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfCategoryResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfCategoryResponseCWProxyImpl
    implements _$BaseResponseOfListOfCategoryResponseCWProxy {
  const _$BaseResponseOfListOfCategoryResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfCategoryResponse _value;

  @override
  BaseResponseOfListOfCategoryResponse payload(
    List<CategoryResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfCategoryResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfCategoryResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfCategoryResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfCategoryResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfCategoryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfCategoryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfCategoryResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfCategoryResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<CategoryResponse>?,
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

extension $BaseResponseOfListOfCategoryResponseCopyWith
    on BaseResponseOfListOfCategoryResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfCategoryResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfCategoryResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfCategoryResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfCategoryResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfCategoryResponse
_$BaseResponseOfListOfCategoryResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfCategoryResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfCategoryResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map((e) => CategoryResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfListOfCategoryResponseToJson(
  BaseResponseOfListOfCategoryResponse instance,
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
