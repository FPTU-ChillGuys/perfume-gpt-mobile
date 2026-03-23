// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_review_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfReviewListItemCWProxy {
  BaseResponseOfPagedResultOfReviewListItem payload(
    PagedResultOfReviewListItem? payload,
  );

  BaseResponseOfPagedResultOfReviewListItem success(bool? success);

  BaseResponseOfPagedResultOfReviewListItem message(String? message);

  BaseResponseOfPagedResultOfReviewListItem errors(List<String>? errors);

  BaseResponseOfPagedResultOfReviewListItem errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfReviewListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfReviewListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfReviewListItem call({
    PagedResultOfReviewListItem? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfReviewListItem.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfReviewListItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfReviewListItemCWProxyImpl
    implements _$BaseResponseOfPagedResultOfReviewListItemCWProxy {
  const _$BaseResponseOfPagedResultOfReviewListItemCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfReviewListItem _value;

  @override
  BaseResponseOfPagedResultOfReviewListItem payload(
    PagedResultOfReviewListItem? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfReviewListItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfReviewListItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfReviewListItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPagedResultOfReviewListItem errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfReviewListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfReviewListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfReviewListItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfReviewListItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfReviewListItem?,
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

extension $BaseResponseOfPagedResultOfReviewListItemCopyWith
    on BaseResponseOfPagedResultOfReviewListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfReviewListItem.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfReviewListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfReviewListItemCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfReviewListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfReviewListItem
_$BaseResponseOfPagedResultOfReviewListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPagedResultOfReviewListItem', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPagedResultOfReviewListItem(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PagedResultOfReviewListItem.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfReviewListItemToJson(
  BaseResponseOfPagedResultOfReviewListItem instance,
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
