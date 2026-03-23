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

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfProductLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfProductLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfProductLookupItem call({
    List<ProductLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfProductLookupItem.copyWith(...)` or call `instanceOfBaseResponseOfListOfProductLookupItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfProductLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfProductLookupItemCWProxy {
  const _$BaseResponseOfListOfProductLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfProductLookupItem _value;

  @override
  BaseResponseOfListOfProductLookupItem payload(
    List<ProductLookupItem>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfProductLookupItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfProductLookupItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfProductLookupItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfProductLookupItem errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfProductLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfProductLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfProductLookupItem.copyWith(...)` or `instanceOfBaseResponseOfListOfProductLookupItem.copyWith.fieldName(...)`.
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
