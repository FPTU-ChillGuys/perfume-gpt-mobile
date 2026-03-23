// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_inventory_summary_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfInventorySummaryResponseCWProxy {
  BaseResponseOfInventorySummaryResponse payload(
    InventorySummaryResponse? payload,
  );

  BaseResponseOfInventorySummaryResponse success(bool? success);

  BaseResponseOfInventorySummaryResponse message(String? message);

  BaseResponseOfInventorySummaryResponse errors(List<String>? errors);

  BaseResponseOfInventorySummaryResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfInventorySummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfInventorySummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfInventorySummaryResponse call({
    InventorySummaryResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfInventorySummaryResponse.copyWith(...)` or call `instanceOfBaseResponseOfInventorySummaryResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfInventorySummaryResponseCWProxyImpl
    implements _$BaseResponseOfInventorySummaryResponseCWProxy {
  const _$BaseResponseOfInventorySummaryResponseCWProxyImpl(this._value);

  final BaseResponseOfInventorySummaryResponse _value;

  @override
  BaseResponseOfInventorySummaryResponse payload(
    InventorySummaryResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfInventorySummaryResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfInventorySummaryResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfInventorySummaryResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfInventorySummaryResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfInventorySummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfInventorySummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfInventorySummaryResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfInventorySummaryResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as InventorySummaryResponse?,
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

extension $BaseResponseOfInventorySummaryResponseCopyWith
    on BaseResponseOfInventorySummaryResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfInventorySummaryResponse.copyWith(...)` or `instanceOfBaseResponseOfInventorySummaryResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfInventorySummaryResponseCWProxy get copyWith =>
      _$BaseResponseOfInventorySummaryResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfInventorySummaryResponse
_$BaseResponseOfInventorySummaryResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfInventorySummaryResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfInventorySummaryResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : InventorySummaryResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfInventorySummaryResponseToJson(
  BaseResponseOfInventorySummaryResponse instance,
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
