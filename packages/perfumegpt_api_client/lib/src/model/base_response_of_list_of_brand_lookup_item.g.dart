// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_brand_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfBrandLookupItemCWProxy {
  BaseResponseOfListOfBrandLookupItem payload(List<BrandLookupItem>? payload);

  BaseResponseOfListOfBrandLookupItem success(bool? success);

  BaseResponseOfListOfBrandLookupItem message(String? message);

  BaseResponseOfListOfBrandLookupItem errors(List<String>? errors);

  BaseResponseOfListOfBrandLookupItem errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfBrandLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfBrandLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfBrandLookupItem call({
    List<BrandLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfBrandLookupItem.copyWith(...)` or call `instanceOfBaseResponseOfListOfBrandLookupItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfBrandLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfBrandLookupItemCWProxy {
  const _$BaseResponseOfListOfBrandLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfBrandLookupItem _value;

  @override
  BaseResponseOfListOfBrandLookupItem payload(List<BrandLookupItem>? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfListOfBrandLookupItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfBrandLookupItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfBrandLookupItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfBrandLookupItem errorType(ResponseErrorType? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfBrandLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfBrandLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfBrandLookupItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfBrandLookupItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<BrandLookupItem>?,
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

extension $BaseResponseOfListOfBrandLookupItemCopyWith
    on BaseResponseOfListOfBrandLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfBrandLookupItem.copyWith(...)` or `instanceOfBaseResponseOfListOfBrandLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfBrandLookupItemCWProxy get copyWith =>
      _$BaseResponseOfListOfBrandLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfBrandLookupItem
_$BaseResponseOfListOfBrandLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfBrandLookupItem', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfBrandLookupItem(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map((e) => BrandLookupItem.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfListOfBrandLookupItemToJson(
  BaseResponseOfListOfBrandLookupItem instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?_$ResponseErrorTypeEnumMap[instance.errorType],
};

const _$ResponseErrorTypeEnumMap = {
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
