// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_notification_list_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfNotificationListItemResponseCWProxy {
  BaseResponseOfPagedResultOfNotificationListItemResponse payload(
    PagedResultOfNotificationListItemResponse? payload,
  );

  BaseResponseOfPagedResultOfNotificationListItemResponse success(
    bool? success,
  );

  BaseResponseOfPagedResultOfNotificationListItemResponse message(
    String? message,
  );

  BaseResponseOfPagedResultOfNotificationListItemResponse errors(
    List<String>? errors,
  );

  BaseResponseOfPagedResultOfNotificationListItemResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfNotificationListItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfNotificationListItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfNotificationListItemResponse call({
    PagedResultOfNotificationListItemResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfNotificationListItemResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfNotificationListItemResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfNotificationListItemResponseCWProxyImpl
    implements
        _$BaseResponseOfPagedResultOfNotificationListItemResponseCWProxy {
  const _$BaseResponseOfPagedResultOfNotificationListItemResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfNotificationListItemResponse _value;

  @override
  BaseResponseOfPagedResultOfNotificationListItemResponse payload(
    PagedResultOfNotificationListItemResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfNotificationListItemResponse success(
    bool? success,
  ) => call(success: success);

  @override
  BaseResponseOfPagedResultOfNotificationListItemResponse message(
    String? message,
  ) => call(message: message);

  @override
  BaseResponseOfPagedResultOfNotificationListItemResponse errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfPagedResultOfNotificationListItemResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfNotificationListItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfNotificationListItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfNotificationListItemResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfNotificationListItemResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfNotificationListItemResponse?,
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

extension $BaseResponseOfPagedResultOfNotificationListItemResponseCopyWith
    on BaseResponseOfPagedResultOfNotificationListItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfNotificationListItemResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfNotificationListItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfNotificationListItemResponseCWProxy
  get copyWith =>
      _$BaseResponseOfPagedResultOfNotificationListItemResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfNotificationListItemResponse
_$BaseResponseOfPagedResultOfNotificationListItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfPagedResultOfNotificationListItemResponse',
  json,
  ($checkedConvert) {
    final val = BaseResponseOfPagedResultOfNotificationListItemResponse(
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : PagedResultOfNotificationListItemResponse.fromJson(
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
_$BaseResponseOfPagedResultOfNotificationListItemResponseToJson(
  BaseResponseOfPagedResultOfNotificationListItemResponse instance,
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
