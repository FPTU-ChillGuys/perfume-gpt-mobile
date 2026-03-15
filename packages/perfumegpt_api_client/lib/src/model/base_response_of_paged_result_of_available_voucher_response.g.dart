// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_available_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfAvailableVoucherResponseCWProxy {
  BaseResponseOfPagedResultOfAvailableVoucherResponse payload(
    PagedResultOfAvailableVoucherResponse? payload,
  );

  BaseResponseOfPagedResultOfAvailableVoucherResponse success(bool? success);

  BaseResponseOfPagedResultOfAvailableVoucherResponse message(String? message);

  BaseResponseOfPagedResultOfAvailableVoucherResponse errors(
    List<String>? errors,
  );

  BaseResponseOfPagedResultOfAvailableVoucherResponse errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfAvailableVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfAvailableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfAvailableVoucherResponse call({
    PagedResultOfAvailableVoucherResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfPagedResultOfAvailableVoucherResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfPagedResultOfAvailableVoucherResponse.copyWith.fieldName(...)`
class _$BaseResponseOfPagedResultOfAvailableVoucherResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfAvailableVoucherResponseCWProxy {
  const _$BaseResponseOfPagedResultOfAvailableVoucherResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfAvailableVoucherResponse _value;

  @override
  BaseResponseOfPagedResultOfAvailableVoucherResponse payload(
    PagedResultOfAvailableVoucherResponse? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfPagedResultOfAvailableVoucherResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfPagedResultOfAvailableVoucherResponse message(
    String? message,
  ) => this(message: message);

  @override
  BaseResponseOfPagedResultOfAvailableVoucherResponse errors(
    List<String>? errors,
  ) => this(errors: errors);

  @override
  BaseResponseOfPagedResultOfAvailableVoucherResponse errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfAvailableVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfAvailableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfAvailableVoucherResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfAvailableVoucherResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfAvailableVoucherResponse?,
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

extension $BaseResponseOfPagedResultOfAvailableVoucherResponseCopyWith
    on BaseResponseOfPagedResultOfAvailableVoucherResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfPagedResultOfAvailableVoucherResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfPagedResultOfAvailableVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfAvailableVoucherResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfAvailableVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfAvailableVoucherResponse
_$BaseResponseOfPagedResultOfAvailableVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfPagedResultOfAvailableVoucherResponse',
  json,
  ($checkedConvert) {
    final val = BaseResponseOfPagedResultOfAvailableVoucherResponse(
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : PagedResultOfAvailableVoucherResponse.fromJson(
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
_$BaseResponseOfPagedResultOfAvailableVoucherResponseToJson(
  BaseResponseOfPagedResultOfAvailableVoucherResponse instance,
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
