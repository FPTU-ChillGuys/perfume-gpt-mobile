// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_pick_list_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPickListResponseCWProxy {
  BaseResponseOfPickListResponse payload(PickListResponse? payload);

  BaseResponseOfPickListResponse success(bool? success);

  BaseResponseOfPickListResponse message(String? message);

  BaseResponseOfPickListResponse errors(List<String>? errors);

  BaseResponseOfPickListResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPickListResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPickListResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPickListResponse call({
    PickListResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfPickListResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfPickListResponse.copyWith.fieldName(...)`
class _$BaseResponseOfPickListResponseCWProxyImpl
    implements _$BaseResponseOfPickListResponseCWProxy {
  const _$BaseResponseOfPickListResponseCWProxyImpl(this._value);

  final BaseResponseOfPickListResponse _value;

  @override
  BaseResponseOfPickListResponse payload(PickListResponse? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfPickListResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfPickListResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfPickListResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfPickListResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPickListResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPickListResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPickListResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPickListResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PickListResponse?,
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

extension $BaseResponseOfPickListResponseCopyWith
    on BaseResponseOfPickListResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfPickListResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfPickListResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPickListResponseCWProxy get copyWith =>
      _$BaseResponseOfPickListResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPickListResponse _$BaseResponseOfPickListResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPickListResponse', json, ($checkedConvert) {
  final val = BaseResponseOfPickListResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PickListResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPickListResponseToJson(
  BaseResponseOfPickListResponse instance,
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
