// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_product_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfProductListItemCWProxy {
  BaseResponseOfPagedResultOfProductListItem payload(
    PagedResultOfProductListItem? payload,
  );

  BaseResponseOfPagedResultOfProductListItem success(bool? success);

  BaseResponseOfPagedResultOfProductListItem message(String? message);

  BaseResponseOfPagedResultOfProductListItem errors(List<String>? errors);

  BaseResponseOfPagedResultOfProductListItem errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfProductListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfProductListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfProductListItem call({
    PagedResultOfProductListItem? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfPagedResultOfProductListItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfPagedResultOfProductListItem.copyWith.fieldName(...)`
class _$BaseResponseOfPagedResultOfProductListItemCWProxyImpl
    implements _$BaseResponseOfPagedResultOfProductListItemCWProxy {
  const _$BaseResponseOfPagedResultOfProductListItemCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfProductListItem _value;

  @override
  BaseResponseOfPagedResultOfProductListItem payload(
    PagedResultOfProductListItem? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfPagedResultOfProductListItem success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfPagedResultOfProductListItem message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfPagedResultOfProductListItem errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfPagedResultOfProductListItem errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfProductListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfProductListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfProductListItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfProductListItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfProductListItem?,
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

extension $BaseResponseOfPagedResultOfProductListItemCopyWith
    on BaseResponseOfPagedResultOfProductListItem {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfPagedResultOfProductListItem.copyWith(...)` or like so:`instanceOfBaseResponseOfPagedResultOfProductListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfProductListItemCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfProductListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfProductListItem
_$BaseResponseOfPagedResultOfProductListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPagedResultOfProductListItem', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPagedResultOfProductListItem(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PagedResultOfProductListItem.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfProductListItemToJson(
  BaseResponseOfPagedResultOfProductListItem instance,
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
