// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_variant_paged_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfVariantPagedItemCWProxy {
  BaseResponseOfPagedResultOfVariantPagedItem payload(
    PagedResultOfVariantPagedItem? payload,
  );

  BaseResponseOfPagedResultOfVariantPagedItem success(bool? success);

  BaseResponseOfPagedResultOfVariantPagedItem message(String? message);

  BaseResponseOfPagedResultOfVariantPagedItem errors(List<String>? errors);

  BaseResponseOfPagedResultOfVariantPagedItem errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfVariantPagedItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfVariantPagedItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfVariantPagedItem call({
    PagedResultOfVariantPagedItem? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfVariantPagedItem.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfVariantPagedItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfVariantPagedItemCWProxyImpl
    implements _$BaseResponseOfPagedResultOfVariantPagedItemCWProxy {
  const _$BaseResponseOfPagedResultOfVariantPagedItemCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfVariantPagedItem _value;

  @override
  BaseResponseOfPagedResultOfVariantPagedItem payload(
    PagedResultOfVariantPagedItem? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfVariantPagedItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfVariantPagedItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfVariantPagedItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPagedResultOfVariantPagedItem errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfVariantPagedItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfVariantPagedItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfVariantPagedItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfVariantPagedItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfVariantPagedItem?,
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

extension $BaseResponseOfPagedResultOfVariantPagedItemCopyWith
    on BaseResponseOfPagedResultOfVariantPagedItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfVariantPagedItem.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfVariantPagedItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfVariantPagedItemCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfVariantPagedItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfVariantPagedItem
_$BaseResponseOfPagedResultOfVariantPagedItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPagedResultOfVariantPagedItem', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPagedResultOfVariantPagedItem(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PagedResultOfVariantPagedItem.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfVariantPagedItemToJson(
  BaseResponseOfPagedResultOfVariantPagedItem instance,
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
