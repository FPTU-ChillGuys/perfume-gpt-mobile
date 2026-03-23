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

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfAttributeValueLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfAttributeValueLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfAttributeValueLookupItem call({
    List<AttributeValueLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfAttributeValueLookupItem.copyWith(...)` or call `instanceOfBaseResponseOfListOfAttributeValueLookupItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfAttributeValueLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfAttributeValueLookupItemCWProxy {
  const _$BaseResponseOfListOfAttributeValueLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfAttributeValueLookupItem _value;

  @override
  BaseResponseOfListOfAttributeValueLookupItem payload(
    List<AttributeValueLookupItem>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfAttributeValueLookupItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfAttributeValueLookupItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfAttributeValueLookupItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfAttributeValueLookupItem errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfAttributeValueLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfAttributeValueLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfAttributeValueLookupItem.copyWith(...)` or `instanceOfBaseResponseOfListOfAttributeValueLookupItem.copyWith.fieldName(...)`.
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
