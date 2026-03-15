// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_staff_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfStaffLookupItemCWProxy {
  BaseResponseOfListOfStaffLookupItem payload(List<StaffLookupItem>? payload);

  BaseResponseOfListOfStaffLookupItem success(bool? success);

  BaseResponseOfListOfStaffLookupItem message(String? message);

  BaseResponseOfListOfStaffLookupItem errors(List<String>? errors);

  BaseResponseOfListOfStaffLookupItem errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfStaffLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfStaffLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfStaffLookupItem call({
    List<StaffLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfStaffLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfStaffLookupItem.copyWith.fieldName(...)`
class _$BaseResponseOfListOfStaffLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfStaffLookupItemCWProxy {
  const _$BaseResponseOfListOfStaffLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfStaffLookupItem _value;

  @override
  BaseResponseOfListOfStaffLookupItem payload(List<StaffLookupItem>? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfListOfStaffLookupItem success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfStaffLookupItem message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfStaffLookupItem errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfStaffLookupItem errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfStaffLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfStaffLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfStaffLookupItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfStaffLookupItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<StaffLookupItem>?,
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

extension $BaseResponseOfListOfStaffLookupItemCopyWith
    on BaseResponseOfListOfStaffLookupItem {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfStaffLookupItem.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfStaffLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfStaffLookupItemCWProxy get copyWith =>
      _$BaseResponseOfListOfStaffLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfStaffLookupItem
_$BaseResponseOfListOfStaffLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfStaffLookupItem', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfStaffLookupItem(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map((e) => StaffLookupItem.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfListOfStaffLookupItemToJson(
  BaseResponseOfListOfStaffLookupItem instance,
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
