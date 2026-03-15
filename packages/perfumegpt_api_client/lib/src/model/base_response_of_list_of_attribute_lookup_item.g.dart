// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_attribute_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfAttributeLookupItemCWProxy {
  BaseResponseOfListOfAttributeLookupItem payload(
    List<AttributeLookupItem>? payload,
  );

  BaseResponseOfListOfAttributeLookupItem success(bool? success);

  BaseResponseOfListOfAttributeLookupItem message(String? message);

  BaseResponseOfListOfAttributeLookupItem errors(List<String>? errors);

  BaseResponseOfListOfAttributeLookupItem errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfAttributeLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfAttributeLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfAttributeLookupItem call({
    List<AttributeLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfAttributeLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfAttributeLookupItem.copyWith.fieldName(...)`
class _$BaseResponseOfListOfAttributeLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfAttributeLookupItemCWProxy {
  const _$BaseResponseOfListOfAttributeLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfAttributeLookupItem _value;

  @override
  BaseResponseOfListOfAttributeLookupItem payload(
    List<AttributeLookupItem>? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfListOfAttributeLookupItem success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfAttributeLookupItem message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfAttributeLookupItem errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfAttributeLookupItem errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfAttributeLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfAttributeLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfAttributeLookupItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfAttributeLookupItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<AttributeLookupItem>?,
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

extension $BaseResponseOfListOfAttributeLookupItemCopyWith
    on BaseResponseOfListOfAttributeLookupItem {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfAttributeLookupItem.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfAttributeLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfAttributeLookupItemCWProxy get copyWith =>
      _$BaseResponseOfListOfAttributeLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfAttributeLookupItem
_$BaseResponseOfListOfAttributeLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfAttributeLookupItem', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfAttributeLookupItem(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => AttributeLookupItem.fromJson(e as Map<String, dynamic>),
              )
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

Map<String, dynamic> _$BaseResponseOfListOfAttributeLookupItemToJson(
  BaseResponseOfListOfAttributeLookupItem instance,
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
