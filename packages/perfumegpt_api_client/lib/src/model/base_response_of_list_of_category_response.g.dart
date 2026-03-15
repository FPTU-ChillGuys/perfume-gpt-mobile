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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfCategoryResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfCategoryResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfCategoryResponse call({
    List<CategoryResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfCategoryResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfCategoryResponse.copyWith.fieldName(...)`
class _$BaseResponseOfListOfCategoryResponseCWProxyImpl
    implements _$BaseResponseOfListOfCategoryResponseCWProxy {
  const _$BaseResponseOfListOfCategoryResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfCategoryResponse _value;

  @override
  BaseResponseOfListOfCategoryResponse payload(
    List<CategoryResponse>? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfListOfCategoryResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfCategoryResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfCategoryResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfCategoryResponse errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfCategoryResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfCategoryResponse(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfCategoryResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfCategoryResponse.copyWith.fieldName(...)`.
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
  ResponseErrorType.none: 'None',
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
