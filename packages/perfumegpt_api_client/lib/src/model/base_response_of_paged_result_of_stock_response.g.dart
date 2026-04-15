// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_stock_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfStockResponseCWProxy {
  BaseResponseOfPagedResultOfStockResponse payload(
    PagedResultOfStockResponse? payload,
  );

  BaseResponseOfPagedResultOfStockResponse success(bool? success);

  BaseResponseOfPagedResultOfStockResponse message(String? message);

  BaseResponseOfPagedResultOfStockResponse errors(List<String>? errors);

  BaseResponseOfPagedResultOfStockResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfStockResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfStockResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfStockResponse call({
    PagedResultOfStockResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfStockResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfStockResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfStockResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfStockResponseCWProxy {
  const _$BaseResponseOfPagedResultOfStockResponseCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfStockResponse _value;

  @override
  BaseResponseOfPagedResultOfStockResponse payload(
    PagedResultOfStockResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfStockResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfStockResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfStockResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPagedResultOfStockResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfStockResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfStockResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfStockResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfStockResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfStockResponse?,
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

extension $BaseResponseOfPagedResultOfStockResponseCopyWith
    on BaseResponseOfPagedResultOfStockResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfStockResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfStockResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfStockResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfStockResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfStockResponse
_$BaseResponseOfPagedResultOfStockResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfPagedResultOfStockResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfPagedResultOfStockResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : PagedResultOfStockResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfStockResponseToJson(
  BaseResponseOfPagedResultOfStockResponse instance,
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
