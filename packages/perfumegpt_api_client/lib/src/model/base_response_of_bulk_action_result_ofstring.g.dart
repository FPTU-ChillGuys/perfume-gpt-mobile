// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_bulk_action_result_ofstring.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfBulkActionResultOfstringCWProxy {
  BaseResponseOfBulkActionResultOfstring payload(
    BulkActionResultOfstring? payload,
  );

  BaseResponseOfBulkActionResultOfstring success(bool? success);

  BaseResponseOfBulkActionResultOfstring message(String? message);

  BaseResponseOfBulkActionResultOfstring errors(List<String>? errors);

  BaseResponseOfBulkActionResultOfstring errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfBulkActionResultOfstring(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfBulkActionResultOfstring(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfBulkActionResultOfstring call({
    BulkActionResultOfstring? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfBulkActionResultOfstring.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfBulkActionResultOfstring.copyWith.fieldName(...)`
class _$BaseResponseOfBulkActionResultOfstringCWProxyImpl
    implements _$BaseResponseOfBulkActionResultOfstringCWProxy {
  const _$BaseResponseOfBulkActionResultOfstringCWProxyImpl(this._value);

  final BaseResponseOfBulkActionResultOfstring _value;

  @override
  BaseResponseOfBulkActionResultOfstring payload(
    BulkActionResultOfstring? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfBulkActionResultOfstring success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfBulkActionResultOfstring message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfBulkActionResultOfstring errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfBulkActionResultOfstring errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfBulkActionResultOfstring(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfBulkActionResultOfstring(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfBulkActionResultOfstring call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfBulkActionResultOfstring(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as BulkActionResultOfstring?,
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

extension $BaseResponseOfBulkActionResultOfstringCopyWith
    on BaseResponseOfBulkActionResultOfstring {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfBulkActionResultOfstring.copyWith(...)` or like so:`instanceOfBaseResponseOfBulkActionResultOfstring.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfBulkActionResultOfstringCWProxy get copyWith =>
      _$BaseResponseOfBulkActionResultOfstringCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfBulkActionResultOfstring
_$BaseResponseOfBulkActionResultOfstringFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfBulkActionResultOfstring', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfBulkActionResultOfstring(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : BulkActionResultOfstring.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfBulkActionResultOfstringToJson(
  BaseResponseOfBulkActionResultOfstring instance,
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
