// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_inventory_ledger_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfInventoryLedgerItemResponseCWProxy {
  BaseResponseOfPagedResultOfInventoryLedgerItemResponse payload(
    PagedResultOfInventoryLedgerItemResponse? payload,
  );

  BaseResponseOfPagedResultOfInventoryLedgerItemResponse success(bool? success);

  BaseResponseOfPagedResultOfInventoryLedgerItemResponse message(
    String? message,
  );

  BaseResponseOfPagedResultOfInventoryLedgerItemResponse errors(
    List<String>? errors,
  );

  BaseResponseOfPagedResultOfInventoryLedgerItemResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfInventoryLedgerItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfInventoryLedgerItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfInventoryLedgerItemResponse call({
    PagedResultOfInventoryLedgerItemResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfInventoryLedgerItemResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfInventoryLedgerItemResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfInventoryLedgerItemResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfInventoryLedgerItemResponseCWProxy {
  const _$BaseResponseOfPagedResultOfInventoryLedgerItemResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfInventoryLedgerItemResponse _value;

  @override
  BaseResponseOfPagedResultOfInventoryLedgerItemResponse payload(
    PagedResultOfInventoryLedgerItemResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfInventoryLedgerItemResponse success(
    bool? success,
  ) => call(success: success);

  @override
  BaseResponseOfPagedResultOfInventoryLedgerItemResponse message(
    String? message,
  ) => call(message: message);

  @override
  BaseResponseOfPagedResultOfInventoryLedgerItemResponse errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfPagedResultOfInventoryLedgerItemResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfInventoryLedgerItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfInventoryLedgerItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfInventoryLedgerItemResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfInventoryLedgerItemResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfInventoryLedgerItemResponse?,
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

extension $BaseResponseOfPagedResultOfInventoryLedgerItemResponseCopyWith
    on BaseResponseOfPagedResultOfInventoryLedgerItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfInventoryLedgerItemResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfInventoryLedgerItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfInventoryLedgerItemResponseCWProxy
  get copyWith =>
      _$BaseResponseOfPagedResultOfInventoryLedgerItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfInventoryLedgerItemResponse
_$BaseResponseOfPagedResultOfInventoryLedgerItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfPagedResultOfInventoryLedgerItemResponse',
  json,
  ($checkedConvert) {
    final val = BaseResponseOfPagedResultOfInventoryLedgerItemResponse(
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : PagedResultOfInventoryLedgerItemResponse.fromJson(
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
_$BaseResponseOfPagedResultOfInventoryLedgerItemResponseToJson(
  BaseResponseOfPagedResultOfInventoryLedgerItemResponse instance,
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
