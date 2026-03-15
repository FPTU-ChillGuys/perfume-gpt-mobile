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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfVariantPagedItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfVariantPagedItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfVariantPagedItem call({
    PagedResultOfVariantPagedItem? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfPagedResultOfVariantPagedItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfPagedResultOfVariantPagedItem.copyWith.fieldName(...)`
class _$BaseResponseOfPagedResultOfVariantPagedItemCWProxyImpl
    implements _$BaseResponseOfPagedResultOfVariantPagedItemCWProxy {
  const _$BaseResponseOfPagedResultOfVariantPagedItemCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfVariantPagedItem _value;

  @override
  BaseResponseOfPagedResultOfVariantPagedItem payload(
    PagedResultOfVariantPagedItem? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfPagedResultOfVariantPagedItem success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfPagedResultOfVariantPagedItem message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfPagedResultOfVariantPagedItem errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfPagedResultOfVariantPagedItem errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfVariantPagedItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfVariantPagedItem(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfPagedResultOfVariantPagedItem.copyWith(...)` or like so:`instanceOfBaseResponseOfPagedResultOfVariantPagedItem.copyWith.fieldName(...)`.
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
