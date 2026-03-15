// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_ward_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfWardResponseCWProxy {
  BaseResponseOfListOfWardResponse payload(List<WardResponse>? payload);

  BaseResponseOfListOfWardResponse success(bool? success);

  BaseResponseOfListOfWardResponse message(String? message);

  BaseResponseOfListOfWardResponse errors(List<String>? errors);

  BaseResponseOfListOfWardResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfWardResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfWardResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfWardResponse call({
    List<WardResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfWardResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfWardResponse.copyWith.fieldName(...)`
class _$BaseResponseOfListOfWardResponseCWProxyImpl
    implements _$BaseResponseOfListOfWardResponseCWProxy {
  const _$BaseResponseOfListOfWardResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfWardResponse _value;

  @override
  BaseResponseOfListOfWardResponse payload(List<WardResponse>? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfListOfWardResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfWardResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfWardResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfWardResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfWardResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfWardResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfWardResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfWardResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<WardResponse>?,
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

extension $BaseResponseOfListOfWardResponseCopyWith
    on BaseResponseOfListOfWardResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfWardResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfWardResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfWardResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfWardResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfWardResponse _$BaseResponseOfListOfWardResponseFromJson(
  Map<String, dynamic> json,
) =>
    $checkedCreate('BaseResponseOfListOfWardResponse', json, ($checkedConvert) {
      final val = BaseResponseOfListOfWardResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map((e) => WardResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
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

Map<String, dynamic> _$BaseResponseOfListOfWardResponseToJson(
  BaseResponseOfListOfWardResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
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
