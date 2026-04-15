// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_variant_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfVariantLookupItemCWProxy {
  BaseResponseOfListOfVariantLookupItem payload(
    List<VariantLookupItem>? payload,
  );

  BaseResponseOfListOfVariantLookupItem success(bool? success);

  BaseResponseOfListOfVariantLookupItem message(String? message);

  BaseResponseOfListOfVariantLookupItem errors(List<String>? errors);

  BaseResponseOfListOfVariantLookupItem errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfVariantLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfVariantLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfVariantLookupItem call({
    List<VariantLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfVariantLookupItem.copyWith(...)` or call `instanceOfBaseResponseOfListOfVariantLookupItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfVariantLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfVariantLookupItemCWProxy {
  const _$BaseResponseOfListOfVariantLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfVariantLookupItem _value;

  @override
  BaseResponseOfListOfVariantLookupItem payload(
    List<VariantLookupItem>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfVariantLookupItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfVariantLookupItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfVariantLookupItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfVariantLookupItem errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfVariantLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfVariantLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfVariantLookupItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfVariantLookupItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<VariantLookupItem>?,
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

extension $BaseResponseOfListOfVariantLookupItemCopyWith
    on BaseResponseOfListOfVariantLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfVariantLookupItem.copyWith(...)` or `instanceOfBaseResponseOfListOfVariantLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfVariantLookupItemCWProxy get copyWith =>
      _$BaseResponseOfListOfVariantLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfVariantLookupItem
_$BaseResponseOfListOfVariantLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfVariantLookupItem', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfVariantLookupItem(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => VariantLookupItem.fromJson(e as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfListOfVariantLookupItemToJson(
  BaseResponseOfListOfVariantLookupItem instance,
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
