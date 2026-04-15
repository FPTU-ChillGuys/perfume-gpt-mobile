// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_top_product_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfTopProductResponseCWProxy {
  BaseResponseOfListOfTopProductResponse payload(
    List<TopProductResponse>? payload,
  );

  BaseResponseOfListOfTopProductResponse success(bool? success);

  BaseResponseOfListOfTopProductResponse message(String? message);

  BaseResponseOfListOfTopProductResponse errors(List<String>? errors);

  BaseResponseOfListOfTopProductResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfTopProductResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfTopProductResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfTopProductResponse call({
    List<TopProductResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfTopProductResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfTopProductResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfTopProductResponseCWProxyImpl
    implements _$BaseResponseOfListOfTopProductResponseCWProxy {
  const _$BaseResponseOfListOfTopProductResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfTopProductResponse _value;

  @override
  BaseResponseOfListOfTopProductResponse payload(
    List<TopProductResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfTopProductResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfTopProductResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfTopProductResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfTopProductResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfTopProductResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfTopProductResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfTopProductResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfTopProductResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<TopProductResponse>?,
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

extension $BaseResponseOfListOfTopProductResponseCopyWith
    on BaseResponseOfListOfTopProductResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfTopProductResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfTopProductResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfTopProductResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfTopProductResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfTopProductResponse
_$BaseResponseOfListOfTopProductResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfTopProductResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfTopProductResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => TopProductResponse.fromJson(e as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfListOfTopProductResponseToJson(
  BaseResponseOfListOfTopProductResponse instance,
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
