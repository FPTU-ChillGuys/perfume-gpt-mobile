// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_product_variant_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfProductVariantResponseCWProxy {
  BaseResponseOfProductVariantResponse payload(ProductVariantResponse? payload);

  BaseResponseOfProductVariantResponse success(bool? success);

  BaseResponseOfProductVariantResponse message(String? message);

  BaseResponseOfProductVariantResponse errors(List<String>? errors);

  BaseResponseOfProductVariantResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfProductVariantResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfProductVariantResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfProductVariantResponse call({
    ProductVariantResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfProductVariantResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfProductVariantResponse.copyWith.fieldName(...)`
class _$BaseResponseOfProductVariantResponseCWProxyImpl
    implements _$BaseResponseOfProductVariantResponseCWProxy {
  const _$BaseResponseOfProductVariantResponseCWProxyImpl(this._value);

  final BaseResponseOfProductVariantResponse _value;

  @override
  BaseResponseOfProductVariantResponse payload(
    ProductVariantResponse? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfProductVariantResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfProductVariantResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfProductVariantResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfProductVariantResponse errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfProductVariantResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfProductVariantResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfProductVariantResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfProductVariantResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ProductVariantResponse?,
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

extension $BaseResponseOfProductVariantResponseCopyWith
    on BaseResponseOfProductVariantResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfProductVariantResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfProductVariantResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfProductVariantResponseCWProxy get copyWith =>
      _$BaseResponseOfProductVariantResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfProductVariantResponse
_$BaseResponseOfProductVariantResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfProductVariantResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfProductVariantResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : ProductVariantResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfProductVariantResponseToJson(
  BaseResponseOfProductVariantResponse instance,
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
