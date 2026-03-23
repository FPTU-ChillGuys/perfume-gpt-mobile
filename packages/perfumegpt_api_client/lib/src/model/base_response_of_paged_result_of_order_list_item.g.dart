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

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfOrderListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfOrderListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfOrderListItem call({
    PagedResultOfOrderListItem? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfOrderListItem.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfOrderListItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfOrderListItemCWProxyImpl
    implements _$BaseResponseOfPagedResultOfOrderListItemCWProxy {
  const _$BaseResponseOfPagedResultOfOrderListItemCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfOrderListItem _value;

  @override
  BaseResponseOfPagedResultOfOrderListItem payload(
    PagedResultOfOrderListItem? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfOrderListItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfOrderListItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfOrderListItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPagedResultOfOrderListItem errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfOrderListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfOrderListItem(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfOrderListItem.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfOrderListItem.copyWith.fieldName(...)`.
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
