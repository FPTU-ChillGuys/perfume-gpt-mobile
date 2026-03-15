// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_order_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfOrderListItemCWProxy {
  BaseResponseOfPagedResultOfOrderListItem payload(
    PagedResultOfOrderListItem? payload,
  );

  BaseResponseOfPagedResultOfOrderListItem success(bool? success);

  BaseResponseOfPagedResultOfOrderListItem message(String? message);

  BaseResponseOfPagedResultOfOrderListItem errors(List<String>? errors);

  BaseResponseOfPagedResultOfOrderListItem errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfOrderListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfOrderListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfOrderListItem call({
    PagedResultOfOrderListItem? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfPagedResultOfOrderListItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfPagedResultOfOrderListItem.copyWith.fieldName(...)`
class _$BaseResponseOfPagedResultOfOrderListItemCWProxyImpl
    implements _$BaseResponseOfPagedResultOfOrderListItemCWProxy {
  const _$BaseResponseOfPagedResultOfOrderListItemCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfOrderListItem _value;

  @override
  BaseResponseOfPagedResultOfOrderListItem payload(
    PagedResultOfOrderListItem? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfPagedResultOfOrderListItem success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfPagedResultOfOrderListItem message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfPagedResultOfOrderListItem errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfPagedResultOfOrderListItem errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfOrderListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfOrderListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfOrderListItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfOrderListItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfOrderListItem?,
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

extension $BaseResponseOfPagedResultOfOrderListItemCopyWith
    on BaseResponseOfPagedResultOfOrderListItem {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfPagedResultOfOrderListItem.copyWith(...)` or like so:`instanceOfBaseResponseOfPagedResultOfOrderListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfOrderListItemCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfOrderListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfOrderListItem
_$BaseResponseOfPagedResultOfOrderListItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfPagedResultOfOrderListItem', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfPagedResultOfOrderListItem(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : PagedResultOfOrderListItem.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfOrderListItemToJson(
  BaseResponseOfPagedResultOfOrderListItem instance,
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
