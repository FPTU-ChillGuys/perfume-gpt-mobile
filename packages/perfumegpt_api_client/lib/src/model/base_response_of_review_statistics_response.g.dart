// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_review_statistics_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfReviewStatisticsResponseCWProxy {
  BaseResponseOfReviewStatisticsResponse payload(
    ReviewStatisticsResponse? payload,
  );

  BaseResponseOfReviewStatisticsResponse success(bool? success);

  BaseResponseOfReviewStatisticsResponse message(String? message);

  BaseResponseOfReviewStatisticsResponse errors(List<String>? errors);

  BaseResponseOfReviewStatisticsResponse errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfReviewStatisticsResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfReviewStatisticsResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfReviewStatisticsResponse call({
    ReviewStatisticsResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfReviewStatisticsResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfReviewStatisticsResponse.copyWith.fieldName(...)`
class _$BaseResponseOfReviewStatisticsResponseCWProxyImpl
    implements _$BaseResponseOfReviewStatisticsResponseCWProxy {
  const _$BaseResponseOfReviewStatisticsResponseCWProxyImpl(this._value);

  final BaseResponseOfReviewStatisticsResponse _value;

  @override
  BaseResponseOfReviewStatisticsResponse payload(
    ReviewStatisticsResponse? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfReviewStatisticsResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfReviewStatisticsResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfReviewStatisticsResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfReviewStatisticsResponse errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfReviewStatisticsResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfReviewStatisticsResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfReviewStatisticsResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfReviewStatisticsResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ReviewStatisticsResponse?,
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

extension $BaseResponseOfReviewStatisticsResponseCopyWith
    on BaseResponseOfReviewStatisticsResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfReviewStatisticsResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfReviewStatisticsResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfReviewStatisticsResponseCWProxy get copyWith =>
      _$BaseResponseOfReviewStatisticsResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfReviewStatisticsResponse
_$BaseResponseOfReviewStatisticsResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfReviewStatisticsResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfReviewStatisticsResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : ReviewStatisticsResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfReviewStatisticsResponseToJson(
  BaseResponseOfReviewStatisticsResponse instance,
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
