// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_product_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfProductLookupItemCWProxy {
  BaseResponseOfListOfProductLookupItem payload(
    List<ProductLookupItem>? payload,
  );

  BaseResponseOfListOfProductLookupItem success(bool? success);

  BaseResponseOfListOfProductLookupItem message(String? message);

  BaseResponseOfListOfProductLookupItem errors(List<String>? errors);

  BaseResponseOfListOfProductLookupItem errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfProductLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfProductLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfProductLookupItem call({
    List<ProductLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfProductLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfProductLookupItem.copyWith.fieldName(...)`
class _$BaseResponseOfListOfProductLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfProductLookupItemCWProxy {
  const _$BaseResponseOfListOfProductLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfProductLookupItem _value;

  @override
  BaseResponseOfListOfProductLookupItem payload(
    List<ProductLookupItem>? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfListOfProductLookupItem success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfProductLookupItem message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfProductLookupItem errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfProductLookupItem errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfProductLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfProductLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfProductLookupItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfProductLookupItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<ProductLookupItem>?,
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

extension $BaseResponseOfListOfProductLookupItemCopyWith
    on BaseResponseOfListOfProductLookupItem {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfProductLookupItem.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfProductLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfProductLookupItemCWProxy get copyWith =>
      _$BaseResponseOfListOfProductLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfProductLookupItem
_$BaseResponseOfListOfProductLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfProductLookupItem', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfProductLookupItem(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => ProductLookupItem.fromJson(e as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfListOfProductLookupItemToJson(
  BaseResponseOfListOfProductLookupItem instance,
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
