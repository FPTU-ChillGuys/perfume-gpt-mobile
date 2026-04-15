// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_cash_flow_ledger_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfCashFlowLedgerItemResponseCWProxy {
  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse payload(
    PagedResultOfCashFlowLedgerItemResponse? payload,
  );

  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse success(bool? success);

  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse message(
    String? message,
  );

  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse errors(
    List<String>? errors,
  );

  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfCashFlowLedgerItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfCashFlowLedgerItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse call({
    PagedResultOfCashFlowLedgerItemResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfCashFlowLedgerItemResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfCashFlowLedgerItemResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfCashFlowLedgerItemResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfCashFlowLedgerItemResponseCWProxy {
  const _$BaseResponseOfPagedResultOfCashFlowLedgerItemResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfCashFlowLedgerItemResponse _value;

  @override
  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse payload(
    PagedResultOfCashFlowLedgerItemResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse success(
    bool? success,
  ) => call(success: success);

  @override
  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse message(
    String? message,
  ) => call(message: message);

  @override
  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfCashFlowLedgerItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfCashFlowLedgerItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfCashFlowLedgerItemResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfCashFlowLedgerItemResponse?,
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

extension $BaseResponseOfPagedResultOfCashFlowLedgerItemResponseCopyWith
    on BaseResponseOfPagedResultOfCashFlowLedgerItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfCashFlowLedgerItemResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfCashFlowLedgerItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfCashFlowLedgerItemResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfCashFlowLedgerItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfCashFlowLedgerItemResponse
_$BaseResponseOfPagedResultOfCashFlowLedgerItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfPagedResultOfCashFlowLedgerItemResponse',
  json,
  ($checkedConvert) {
    final val = BaseResponseOfPagedResultOfCashFlowLedgerItemResponse(
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : PagedResultOfCashFlowLedgerItemResponse.fromJson(
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
_$BaseResponseOfPagedResultOfCashFlowLedgerItemResponseToJson(
  BaseResponseOfPagedResultOfCashFlowLedgerItemResponse instance,
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
