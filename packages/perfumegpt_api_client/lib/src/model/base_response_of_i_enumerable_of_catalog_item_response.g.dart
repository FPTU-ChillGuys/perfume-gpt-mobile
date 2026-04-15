// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_i_enumerable_of_catalog_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfIEnumerableOfCatalogItemResponseCWProxy {
  BaseResponseOfIEnumerableOfCatalogItemResponse payload(
    List<CatalogItemResponse>? payload,
  );

  BaseResponseOfIEnumerableOfCatalogItemResponse success(bool? success);

  BaseResponseOfIEnumerableOfCatalogItemResponse message(String? message);

  BaseResponseOfIEnumerableOfCatalogItemResponse errors(List<String>? errors);

  BaseResponseOfIEnumerableOfCatalogItemResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfIEnumerableOfCatalogItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfIEnumerableOfCatalogItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfIEnumerableOfCatalogItemResponse call({
    List<CatalogItemResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfIEnumerableOfCatalogItemResponse.copyWith(...)` or call `instanceOfBaseResponseOfIEnumerableOfCatalogItemResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfIEnumerableOfCatalogItemResponseCWProxyImpl
    implements _$BaseResponseOfIEnumerableOfCatalogItemResponseCWProxy {
  const _$BaseResponseOfIEnumerableOfCatalogItemResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfIEnumerableOfCatalogItemResponse _value;

  @override
  BaseResponseOfIEnumerableOfCatalogItemResponse payload(
    List<CatalogItemResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfIEnumerableOfCatalogItemResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfIEnumerableOfCatalogItemResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfIEnumerableOfCatalogItemResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfIEnumerableOfCatalogItemResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfIEnumerableOfCatalogItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfIEnumerableOfCatalogItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfIEnumerableOfCatalogItemResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfIEnumerableOfCatalogItemResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<CatalogItemResponse>?,
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

extension $BaseResponseOfIEnumerableOfCatalogItemResponseCopyWith
    on BaseResponseOfIEnumerableOfCatalogItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfIEnumerableOfCatalogItemResponse.copyWith(...)` or `instanceOfBaseResponseOfIEnumerableOfCatalogItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfIEnumerableOfCatalogItemResponseCWProxy get copyWith =>
      _$BaseResponseOfIEnumerableOfCatalogItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfIEnumerableOfCatalogItemResponse
_$BaseResponseOfIEnumerableOfCatalogItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfIEnumerableOfCatalogItemResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfIEnumerableOfCatalogItemResponse(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map((e) => CatalogItemResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfIEnumerableOfCatalogItemResponseToJson(
  BaseResponseOfIEnumerableOfCatalogItemResponse instance,
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
