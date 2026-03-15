// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_user_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfUserVoucherResponseCWProxy {
  BaseResponseOfPagedResultOfUserVoucherResponse payload(
    PagedResultOfUserVoucherResponse? payload,
  );

  BaseResponseOfPagedResultOfUserVoucherResponse success(bool? success);

  BaseResponseOfPagedResultOfUserVoucherResponse message(String? message);

  BaseResponseOfPagedResultOfUserVoucherResponse errors(List<String>? errors);

  BaseResponseOfPagedResultOfUserVoucherResponse errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfUserVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfUserVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfUserVoucherResponse call({
    PagedResultOfUserVoucherResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfPagedResultOfUserVoucherResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfPagedResultOfUserVoucherResponse.copyWith.fieldName(...)`
class _$BaseResponseOfPagedResultOfUserVoucherResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfUserVoucherResponseCWProxy {
  const _$BaseResponseOfPagedResultOfUserVoucherResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfUserVoucherResponse _value;

  @override
  BaseResponseOfPagedResultOfUserVoucherResponse payload(
    PagedResultOfUserVoucherResponse? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfPagedResultOfUserVoucherResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfPagedResultOfUserVoucherResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfPagedResultOfUserVoucherResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfPagedResultOfUserVoucherResponse errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfUserVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfUserVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfUserVoucherResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfUserVoucherResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfUserVoucherResponse?,
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

extension $BaseResponseOfPagedResultOfUserVoucherResponseCopyWith
    on BaseResponseOfPagedResultOfUserVoucherResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfPagedResultOfUserVoucherResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfPagedResultOfUserVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfUserVoucherResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfUserVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfUserVoucherResponse
_$BaseResponseOfPagedResultOfUserVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPagedResultOfUserVoucherResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPagedResultOfUserVoucherResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PagedResultOfUserVoucherResponse.fromJson(
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
});

Map<String, dynamic> _$BaseResponseOfPagedResultOfUserVoucherResponseToJson(
  BaseResponseOfPagedResultOfUserVoucherResponse instance,
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
