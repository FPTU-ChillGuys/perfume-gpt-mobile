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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfVariantLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfVariantLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfListOfVariantLookupItem call({
    List<VariantLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfListOfVariantLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfListOfVariantLookupItem.copyWith.fieldName(...)`
class _$BaseResponseOfListOfVariantLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfVariantLookupItemCWProxy {
  const _$BaseResponseOfListOfVariantLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfVariantLookupItem _value;

  @override
  BaseResponseOfListOfVariantLookupItem payload(
    List<VariantLookupItem>? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfListOfVariantLookupItem success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfListOfVariantLookupItem message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfListOfVariantLookupItem errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfListOfVariantLookupItem errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfListOfVariantLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfListOfVariantLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfListOfVariantLookupItem.copyWith(...)` or like so:`instanceOfBaseResponseOfListOfVariantLookupItem.copyWith.fieldName(...)`.
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
  ResponseErrorType.none: 'None',
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
