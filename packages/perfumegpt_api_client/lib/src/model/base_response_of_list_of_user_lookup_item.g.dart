// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_user_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfUserLookupItemCWProxy {
  BaseResponseOfListOfUserLookupItem payload(List<UserLookupItem>? payload);

  BaseResponseOfListOfUserLookupItem success(bool? success);

  BaseResponseOfListOfUserLookupItem message(String? message);

  BaseResponseOfListOfUserLookupItem errors(List<String>? errors);

  BaseResponseOfListOfUserLookupItem errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfUserLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfUserLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfUserLookupItem call({
    List<UserLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfUserLookupItem.copyWith(...)` or call `instanceOfBaseResponseOfListOfUserLookupItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfUserLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfUserLookupItemCWProxy {
  const _$BaseResponseOfListOfUserLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfUserLookupItem _value;

  @override
  BaseResponseOfListOfUserLookupItem payload(List<UserLookupItem>? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfListOfUserLookupItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfUserLookupItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfUserLookupItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfUserLookupItem errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfUserLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfUserLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfUserLookupItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfUserLookupItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<UserLookupItem>?,
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

extension $BaseResponseOfListOfUserLookupItemCopyWith
    on BaseResponseOfListOfUserLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfUserLookupItem.copyWith(...)` or `instanceOfBaseResponseOfListOfUserLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfUserLookupItemCWProxy get copyWith =>
      _$BaseResponseOfListOfUserLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfUserLookupItem _$BaseResponseOfListOfUserLookupItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfUserLookupItem', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfUserLookupItem(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map((e) => UserLookupItem.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfListOfUserLookupItemToJson(
  BaseResponseOfListOfUserLookupItem instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
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
