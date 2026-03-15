// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_preview_order_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPreviewOrderResponseCWProxy {
  BaseResponseOfPreviewOrderResponse payload(PreviewOrderResponse? payload);

  BaseResponseOfPreviewOrderResponse success(bool? success);

  BaseResponseOfPreviewOrderResponse message(String? message);

  BaseResponseOfPreviewOrderResponse errors(List<String>? errors);

  BaseResponseOfPreviewOrderResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPreviewOrderResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPreviewOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPreviewOrderResponse call({
    PreviewOrderResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfPreviewOrderResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfPreviewOrderResponse.copyWith.fieldName(...)`
class _$BaseResponseOfPreviewOrderResponseCWProxyImpl
    implements _$BaseResponseOfPreviewOrderResponseCWProxy {
  const _$BaseResponseOfPreviewOrderResponseCWProxyImpl(this._value);

  final BaseResponseOfPreviewOrderResponse _value;

  @override
  BaseResponseOfPreviewOrderResponse payload(PreviewOrderResponse? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfPreviewOrderResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfPreviewOrderResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfPreviewOrderResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfPreviewOrderResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPreviewOrderResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPreviewOrderResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPreviewOrderResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPreviewOrderResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PreviewOrderResponse?,
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

extension $BaseResponseOfPreviewOrderResponseCopyWith
    on BaseResponseOfPreviewOrderResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfPreviewOrderResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfPreviewOrderResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPreviewOrderResponseCWProxy get copyWith =>
      _$BaseResponseOfPreviewOrderResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPreviewOrderResponse _$BaseResponseOfPreviewOrderResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPreviewOrderResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPreviewOrderResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PreviewOrderResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPreviewOrderResponseToJson(
  BaseResponseOfPreviewOrderResponse instance,
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
