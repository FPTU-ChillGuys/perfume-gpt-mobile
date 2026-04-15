// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_preview_pos_order_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPreviewPosOrderResponseCWProxy {
  BaseResponseOfPreviewPosOrderResponse payload(
    PreviewPosOrderResponse? payload,
  );

  BaseResponseOfPreviewPosOrderResponse success(bool? success);

  BaseResponseOfPreviewPosOrderResponse message(String? message);

  BaseResponseOfPreviewPosOrderResponse errors(List<String>? errors);

  BaseResponseOfPreviewPosOrderResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPreviewPosOrderResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPreviewPosOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPreviewPosOrderResponse call({
    PreviewPosOrderResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPreviewPosOrderResponse.copyWith(...)` or call `instanceOfBaseResponseOfPreviewPosOrderResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPreviewPosOrderResponseCWProxyImpl
    implements _$BaseResponseOfPreviewPosOrderResponseCWProxy {
  const _$BaseResponseOfPreviewPosOrderResponseCWProxyImpl(this._value);

  final BaseResponseOfPreviewPosOrderResponse _value;

  @override
  BaseResponseOfPreviewPosOrderResponse payload(
    PreviewPosOrderResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPreviewPosOrderResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPreviewPosOrderResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPreviewPosOrderResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPreviewPosOrderResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPreviewPosOrderResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPreviewPosOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPreviewPosOrderResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPreviewPosOrderResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PreviewPosOrderResponse?,
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

extension $BaseResponseOfPreviewPosOrderResponseCopyWith
    on BaseResponseOfPreviewPosOrderResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPreviewPosOrderResponse.copyWith(...)` or `instanceOfBaseResponseOfPreviewPosOrderResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPreviewPosOrderResponseCWProxy get copyWith =>
      _$BaseResponseOfPreviewPosOrderResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPreviewPosOrderResponse
_$BaseResponseOfPreviewPosOrderResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfPreviewPosOrderResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfPreviewPosOrderResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : PreviewPosOrderResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPreviewPosOrderResponseToJson(
  BaseResponseOfPreviewPosOrderResponse instance,
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
