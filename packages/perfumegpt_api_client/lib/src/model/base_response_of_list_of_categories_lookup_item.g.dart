// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_categories_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfCategoriesLookupItemCWProxy {
  BaseResponseOfListOfCategoriesLookupItem payload(
    List<CategoriesLookupItem>? payload,
  );

  BaseResponseOfListOfCategoriesLookupItem success(bool? success);

  BaseResponseOfListOfCategoriesLookupItem message(String? message);

  BaseResponseOfListOfCategoriesLookupItem errors(List<String>? errors);

  BaseResponseOfListOfCategoriesLookupItem errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfCategoriesLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfCategoriesLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfCategoriesLookupItem call({
    List<CategoriesLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfCategoriesLookupItem.copyWith(...)` or call `instanceOfBaseResponseOfListOfCategoriesLookupItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfCategoriesLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfCategoriesLookupItemCWProxy {
  const _$BaseResponseOfListOfCategoriesLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfCategoriesLookupItem _value;

  @override
  BaseResponseOfListOfCategoriesLookupItem payload(
    List<CategoriesLookupItem>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfCategoriesLookupItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfCategoriesLookupItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfCategoriesLookupItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfCategoriesLookupItem errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfCategoriesLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfCategoriesLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfCategoriesLookupItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfCategoriesLookupItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<CategoriesLookupItem>?,
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

extension $BaseResponseOfListOfCategoriesLookupItemCopyWith
    on BaseResponseOfListOfCategoriesLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfCategoriesLookupItem.copyWith(...)` or `instanceOfBaseResponseOfListOfCategoriesLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfCategoriesLookupItemCWProxy get copyWith =>
      _$BaseResponseOfListOfCategoriesLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfCategoriesLookupItem
_$BaseResponseOfListOfCategoriesLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfCategoriesLookupItem', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfCategoriesLookupItem(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => CategoriesLookupItem.fromJson(e as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfListOfCategoriesLookupItemToJson(
  BaseResponseOfListOfCategoriesLookupItem instance,
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
