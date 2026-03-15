// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_bulk_action_result_of_guid.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfBulkActionResultOfGuidCWProxy {
  BaseResponseOfBulkActionResultOfGuid payload(BulkActionResultOfGuid? payload);

  BaseResponseOfBulkActionResultOfGuid success(bool? success);

  BaseResponseOfBulkActionResultOfGuid message(String? message);

  BaseResponseOfBulkActionResultOfGuid errors(List<String>? errors);

  BaseResponseOfBulkActionResultOfGuid errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfBulkActionResultOfGuid(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfBulkActionResultOfGuid(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfBulkActionResultOfGuid call({
    BulkActionResultOfGuid? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfBulkActionResultOfGuid.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfBulkActionResultOfGuid.copyWith.fieldName(...)`
class _$BaseResponseOfBulkActionResultOfGuidCWProxyImpl
    implements _$BaseResponseOfBulkActionResultOfGuidCWProxy {
  const _$BaseResponseOfBulkActionResultOfGuidCWProxyImpl(this._value);

  final BaseResponseOfBulkActionResultOfGuid _value;

  @override
  BaseResponseOfBulkActionResultOfGuid payload(
    BulkActionResultOfGuid? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfBulkActionResultOfGuid success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfBulkActionResultOfGuid message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfBulkActionResultOfGuid errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfBulkActionResultOfGuid errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfBulkActionResultOfGuid(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfBulkActionResultOfGuid(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfBulkActionResultOfGuid call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfBulkActionResultOfGuid(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as BulkActionResultOfGuid?,
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

extension $BaseResponseOfBulkActionResultOfGuidCopyWith
    on BaseResponseOfBulkActionResultOfGuid {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfBulkActionResultOfGuid.copyWith(...)` or like so:`instanceOfBaseResponseOfBulkActionResultOfGuid.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfBulkActionResultOfGuidCWProxy get copyWith =>
      _$BaseResponseOfBulkActionResultOfGuidCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfBulkActionResultOfGuid
_$BaseResponseOfBulkActionResultOfGuidFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfBulkActionResultOfGuid', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfBulkActionResultOfGuid(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : BulkActionResultOfGuid.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfBulkActionResultOfGuidToJson(
  BaseResponseOfBulkActionResultOfGuid instance,
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
