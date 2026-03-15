// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_district_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfDistrictResponseCWProxy {
  BaseResponseOfListOfDistrictResponse payload(List<DistrictResponse>? payload);

  BaseResponseOfListOfDistrictResponse success(bool? success);

  BaseResponseOfListOfDistrictResponse message(String? message);

  BaseResponseOfListOfDistrictResponse errors(List<String>? errors);

  BaseResponseOfListOfDistrictResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfDistrictResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfDistrictResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfDistrictResponse call({
    List<DistrictResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfDistrictResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfDistrictResponse.copyWith.fieldName(...)`
class _$BaseResponseOfListOfDistrictResponseCWProxyImpl
    implements _$BaseResponseOfListOfDistrictResponseCWProxy {
  const _$BaseResponseOfListOfDistrictResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfDistrictResponse _value;

  @override
  BaseResponseOfListOfDistrictResponse payload(
    List<DistrictResponse>? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfListOfDistrictResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfDistrictResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfDistrictResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfDistrictResponse errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfDistrictResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfDistrictResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfDistrictResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfDistrictResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<DistrictResponse>?,
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

extension $BaseResponseOfListOfDistrictResponseCopyWith
    on BaseResponseOfListOfDistrictResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfDistrictResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfDistrictResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfDistrictResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfDistrictResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfDistrictResponse
_$BaseResponseOfListOfDistrictResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfDistrictResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfDistrictResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map((e) => DistrictResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfListOfDistrictResponseToJson(
  BaseResponseOfListOfDistrictResponse instance,
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
