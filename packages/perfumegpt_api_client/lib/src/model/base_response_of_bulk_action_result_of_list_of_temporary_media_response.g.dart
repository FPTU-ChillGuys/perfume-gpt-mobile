// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_bulk_action_result_of_list_of_temporary_media_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCWProxy {
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse payload(
    BulkActionResultOfListOfTemporaryMediaResponse? payload,
  );

  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse success(
    bool? success,
  );

  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse message(
    String? message,
  );

  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse errors(
    List<String>? errors,
  );

  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse call({
    BulkActionResultOfListOfTemporaryMediaResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.copyWith.fieldName(...)`
class _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCWProxyImpl
    implements
        _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCWProxy {
  const _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse _value;

  @override
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse payload(
    BulkActionResultOfListOfTemporaryMediaResponse? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse success(
    bool? success,
  ) => this(success: success);

  @override
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse message(
    String? message,
  ) => this(message: message);

  @override
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse errors(
    List<String>? errors,
  ) => this(errors: errors);

  @override
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as BulkActionResultOfListOfTemporaryMediaResponse?,
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

extension $BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCopyWith
    on BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCWProxy
  get copyWith =>
      _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse
_$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse',
  json,
  ($checkedConvert) {
    final val = BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse(
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : BulkActionResultOfListOfTemporaryMediaResponse.fromJson(
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
_$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseToJson(
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse instance,
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
