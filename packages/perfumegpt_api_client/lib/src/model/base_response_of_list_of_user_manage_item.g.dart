// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_user_manage_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfUserManageItemCWProxy {
  BaseResponseOfListOfUserManageItem payload(List<UserManageItem>? payload);

  BaseResponseOfListOfUserManageItem success(bool? success);

  BaseResponseOfListOfUserManageItem message(String? message);

  BaseResponseOfListOfUserManageItem errors(List<String>? errors);

  BaseResponseOfListOfUserManageItem errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfUserManageItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfUserManageItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfUserManageItem call({
    List<UserManageItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfUserManageItem.copyWith(...)` or call `instanceOfBaseResponseOfListOfUserManageItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfUserManageItemCWProxyImpl
    implements _$BaseResponseOfListOfUserManageItemCWProxy {
  const _$BaseResponseOfListOfUserManageItemCWProxyImpl(this._value);

  final BaseResponseOfListOfUserManageItem _value;

  @override
  BaseResponseOfListOfUserManageItem payload(List<UserManageItem>? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfListOfUserManageItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfUserManageItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfUserManageItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfUserManageItem errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfUserManageItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfUserManageItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfUserManageItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfUserManageItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<UserManageItem>?,
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

extension $BaseResponseOfListOfUserManageItemCopyWith
    on BaseResponseOfListOfUserManageItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfUserManageItem.copyWith(...)` or `instanceOfBaseResponseOfListOfUserManageItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfUserManageItemCWProxy get copyWith =>
      _$BaseResponseOfListOfUserManageItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfUserManageItem _$BaseResponseOfListOfUserManageItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfUserManageItem', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfUserManageItem(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map((e) => UserManageItem.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfListOfUserManageItemToJson(
  BaseResponseOfListOfUserManageItem instance,
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
