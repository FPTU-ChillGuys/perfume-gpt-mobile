// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_supplier_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfSupplierLookupItemCWProxy {
  BaseResponseOfListOfSupplierLookupItem payload(
    List<SupplierLookupItem>? payload,
  );

  BaseResponseOfListOfSupplierLookupItem success(bool? success);

  BaseResponseOfListOfSupplierLookupItem message(String? message);

  BaseResponseOfListOfSupplierLookupItem errors(List<String>? errors);

  BaseResponseOfListOfSupplierLookupItem errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfSupplierLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfSupplierLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfSupplierLookupItem call({
    List<SupplierLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfSupplierLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfSupplierLookupItem.copyWith.fieldName(...)`
class _$BaseResponseOfListOfSupplierLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfSupplierLookupItemCWProxy {
  const _$BaseResponseOfListOfSupplierLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfSupplierLookupItem _value;

  @override
  BaseResponseOfListOfSupplierLookupItem payload(
    List<SupplierLookupItem>? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfListOfSupplierLookupItem success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfSupplierLookupItem message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfSupplierLookupItem errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfSupplierLookupItem errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfSupplierLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfSupplierLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfSupplierLookupItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfSupplierLookupItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<SupplierLookupItem>?,
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

extension $BaseResponseOfListOfSupplierLookupItemCopyWith
    on BaseResponseOfListOfSupplierLookupItem {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfSupplierLookupItem.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfSupplierLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfSupplierLookupItemCWProxy get copyWith =>
      _$BaseResponseOfListOfSupplierLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfSupplierLookupItem
_$BaseResponseOfListOfSupplierLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfSupplierLookupItem', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfSupplierLookupItem(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => SupplierLookupItem.fromJson(e as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfListOfSupplierLookupItemToJson(
  BaseResponseOfListOfSupplierLookupItem instance,
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
