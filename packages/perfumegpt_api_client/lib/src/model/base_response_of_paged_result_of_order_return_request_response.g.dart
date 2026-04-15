// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_order_return_request_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfOrderReturnRequestResponseCWProxy {
  BaseResponseOfPagedResultOfOrderReturnRequestResponse payload(
    PagedResultOfOrderReturnRequestResponse? payload,
  );

  BaseResponseOfPagedResultOfOrderReturnRequestResponse success(bool? success);

  BaseResponseOfPagedResultOfOrderReturnRequestResponse message(
    String? message,
  );

  BaseResponseOfPagedResultOfOrderReturnRequestResponse errors(
    List<String>? errors,
  );

  BaseResponseOfPagedResultOfOrderReturnRequestResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfOrderReturnRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfOrderReturnRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfOrderReturnRequestResponse call({
    PagedResultOfOrderReturnRequestResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfOrderReturnRequestResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfOrderReturnRequestResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfOrderReturnRequestResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfOrderReturnRequestResponseCWProxy {
  const _$BaseResponseOfPagedResultOfOrderReturnRequestResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfOrderReturnRequestResponse _value;

  @override
  BaseResponseOfPagedResultOfOrderReturnRequestResponse payload(
    PagedResultOfOrderReturnRequestResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfOrderReturnRequestResponse success(
    bool? success,
  ) => call(success: success);

  @override
  BaseResponseOfPagedResultOfOrderReturnRequestResponse message(
    String? message,
  ) => call(message: message);

  @override
  BaseResponseOfPagedResultOfOrderReturnRequestResponse errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfPagedResultOfOrderReturnRequestResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfOrderReturnRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfOrderReturnRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfOrderReturnRequestResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfOrderReturnRequestResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfOrderReturnRequestResponse?,
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

extension $BaseResponseOfPagedResultOfOrderReturnRequestResponseCopyWith
    on BaseResponseOfPagedResultOfOrderReturnRequestResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfOrderReturnRequestResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfOrderReturnRequestResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfOrderReturnRequestResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfOrderReturnRequestResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfOrderReturnRequestResponse
_$BaseResponseOfPagedResultOfOrderReturnRequestResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfPagedResultOfOrderReturnRequestResponse',
  json,
  ($checkedConvert) {
    final val = BaseResponseOfPagedResultOfOrderReturnRequestResponse(
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : PagedResultOfOrderReturnRequestResponse.fromJson(
                v as Map<String, dynamic>,
              ),
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
  },
);

Map<String, dynamic>
_$BaseResponseOfPagedResultOfOrderReturnRequestResponseToJson(
  BaseResponseOfPagedResultOfOrderReturnRequestResponse instance,
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
