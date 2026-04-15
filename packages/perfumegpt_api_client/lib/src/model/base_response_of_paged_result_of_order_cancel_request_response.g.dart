// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_order_cancel_request_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfOrderCancelRequestResponseCWProxy {
  BaseResponseOfPagedResultOfOrderCancelRequestResponse payload(
    PagedResultOfOrderCancelRequestResponse? payload,
  );

  BaseResponseOfPagedResultOfOrderCancelRequestResponse success(bool? success);

  BaseResponseOfPagedResultOfOrderCancelRequestResponse message(
    String? message,
  );

  BaseResponseOfPagedResultOfOrderCancelRequestResponse errors(
    List<String>? errors,
  );

  BaseResponseOfPagedResultOfOrderCancelRequestResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfOrderCancelRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfOrderCancelRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfOrderCancelRequestResponse call({
    PagedResultOfOrderCancelRequestResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfOrderCancelRequestResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfOrderCancelRequestResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfOrderCancelRequestResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfOrderCancelRequestResponseCWProxy {
  const _$BaseResponseOfPagedResultOfOrderCancelRequestResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfOrderCancelRequestResponse _value;

  @override
  BaseResponseOfPagedResultOfOrderCancelRequestResponse payload(
    PagedResultOfOrderCancelRequestResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfOrderCancelRequestResponse success(
    bool? success,
  ) => call(success: success);

  @override
  BaseResponseOfPagedResultOfOrderCancelRequestResponse message(
    String? message,
  ) => call(message: message);

  @override
  BaseResponseOfPagedResultOfOrderCancelRequestResponse errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfPagedResultOfOrderCancelRequestResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfOrderCancelRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfOrderCancelRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfOrderCancelRequestResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfOrderCancelRequestResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfOrderCancelRequestResponse?,
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

extension $BaseResponseOfPagedResultOfOrderCancelRequestResponseCopyWith
    on BaseResponseOfPagedResultOfOrderCancelRequestResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfOrderCancelRequestResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfOrderCancelRequestResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfOrderCancelRequestResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfOrderCancelRequestResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfOrderCancelRequestResponse
_$BaseResponseOfPagedResultOfOrderCancelRequestResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfPagedResultOfOrderCancelRequestResponse',
  json,
  ($checkedConvert) {
    final val = BaseResponseOfPagedResultOfOrderCancelRequestResponse(
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : PagedResultOfOrderCancelRequestResponse.fromJson(
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
_$BaseResponseOfPagedResultOfOrderCancelRequestResponseToJson(
  BaseResponseOfPagedResultOfOrderCancelRequestResponse instance,
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
