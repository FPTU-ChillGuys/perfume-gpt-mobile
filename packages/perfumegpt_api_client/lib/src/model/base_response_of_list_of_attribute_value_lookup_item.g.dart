// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_attribute_value_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfAttributeValueLookupItemCWProxy {
  BaseResponseOfListOfAttributeValueLookupItem payload(
    List<AttributeValueLookupItem>? payload,
  );

  BaseResponseOfListOfAttributeValueLookupItem success(bool? success);

  BaseResponseOfListOfAttributeValueLookupItem message(String? message);

  BaseResponseOfListOfAttributeValueLookupItem errors(List<String>? errors);

  BaseResponseOfListOfAttributeValueLookupItem errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfAttributeValueLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfAttributeValueLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfAttributeValueLookupItem call({
    List<AttributeValueLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfAttributeValueLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfAttributeValueLookupItem.copyWith.fieldName(...)`
class _$BaseResponseOfListOfAttributeValueLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfAttributeValueLookupItemCWProxy {
  const _$BaseResponseOfListOfAttributeValueLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfAttributeValueLookupItem _value;

  @override
  BaseResponseOfListOfAttributeValueLookupItem payload(
    List<AttributeValueLookupItem>? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfListOfAttributeValueLookupItem success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfAttributeValueLookupItem message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfAttributeValueLookupItem errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfAttributeValueLookupItem errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfAttributeValueLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfAttributeValueLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfAttributeValueLookupItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfAttributeValueLookupItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<AttributeValueLookupItem>?,
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

extension $BaseResponseOfListOfAttributeValueLookupItemCopyWith
    on BaseResponseOfListOfAttributeValueLookupItem {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfAttributeValueLookupItem.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfAttributeValueLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfAttributeValueLookupItemCWProxy get copyWith =>
      _$BaseResponseOfListOfAttributeValueLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfAttributeValueLookupItem
_$BaseResponseOfListOfAttributeValueLookupItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfAttributeValueLookupItem', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfAttributeValueLookupItem(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => AttributeValueLookupItem.fromJson(e as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfListOfAttributeValueLookupItemToJson(
  BaseResponseOfListOfAttributeValueLookupItem instance,
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
