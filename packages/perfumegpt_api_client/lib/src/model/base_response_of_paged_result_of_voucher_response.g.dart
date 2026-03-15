// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfVoucherResponseCWProxy {
  BaseResponseOfPagedResultOfVoucherResponse payload(
    PagedResultOfVoucherResponse? payload,
  );

  BaseResponseOfPagedResultOfVoucherResponse success(bool? success);

  BaseResponseOfPagedResultOfVoucherResponse message(String? message);

  BaseResponseOfPagedResultOfVoucherResponse errors(List<String>? errors);

  BaseResponseOfPagedResultOfVoucherResponse errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfVoucherResponse call({
    PagedResultOfVoucherResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfPagedResultOfVoucherResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfPagedResultOfVoucherResponse.copyWith.fieldName(...)`
class _$BaseResponseOfPagedResultOfVoucherResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfVoucherResponseCWProxy {
  const _$BaseResponseOfPagedResultOfVoucherResponseCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfVoucherResponse _value;

  @override
  BaseResponseOfPagedResultOfVoucherResponse payload(
    PagedResultOfVoucherResponse? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfPagedResultOfVoucherResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfPagedResultOfVoucherResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfPagedResultOfVoucherResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfPagedResultOfVoucherResponse errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfVoucherResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfVoucherResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfVoucherResponse?,
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

extension $BaseResponseOfPagedResultOfVoucherResponseCopyWith
    on BaseResponseOfPagedResultOfVoucherResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfPagedResultOfVoucherResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfPagedResultOfVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfVoucherResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfVoucherResponse
_$BaseResponseOfPagedResultOfVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPagedResultOfVoucherResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPagedResultOfVoucherResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PagedResultOfVoucherResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfVoucherResponseToJson(
  BaseResponseOfPagedResultOfVoucherResponse instance,
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
