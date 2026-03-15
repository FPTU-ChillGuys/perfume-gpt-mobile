// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_product_list_item_with_variants.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfProductListItemWithVariantsCWProxy {
  BaseResponseOfPagedResultOfProductListItemWithVariants payload(
    PagedResultOfProductListItemWithVariants? payload,
  );

  BaseResponseOfPagedResultOfProductListItemWithVariants success(bool? success);

  BaseResponseOfPagedResultOfProductListItemWithVariants message(
    String? message,
  );

  BaseResponseOfPagedResultOfProductListItemWithVariants errors(
    List<String>? errors,
  );

  BaseResponseOfPagedResultOfProductListItemWithVariants errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfProductListItemWithVariants(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfProductListItemWithVariants(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfProductListItemWithVariants call({
    PagedResultOfProductListItemWithVariants? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfPagedResultOfProductListItemWithVariants.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfPagedResultOfProductListItemWithVariants.copyWith.fieldName(...)`
class _$BaseResponseOfPagedResultOfProductListItemWithVariantsCWProxyImpl
    implements _$BaseResponseOfPagedResultOfProductListItemWithVariantsCWProxy {
  const _$BaseResponseOfPagedResultOfProductListItemWithVariantsCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfProductListItemWithVariants _value;

  @override
  BaseResponseOfPagedResultOfProductListItemWithVariants payload(
    PagedResultOfProductListItemWithVariants? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfPagedResultOfProductListItemWithVariants success(
    bool? success,
  ) => this(success: success);

  @override
  BaseResponseOfPagedResultOfProductListItemWithVariants message(
    String? message,
  ) => this(message: message);

  @override
  BaseResponseOfPagedResultOfProductListItemWithVariants errors(
    List<String>? errors,
  ) => this(errors: errors);

  @override
  BaseResponseOfPagedResultOfProductListItemWithVariants errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfProductListItemWithVariants(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfProductListItemWithVariants(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfProductListItemWithVariants call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfProductListItemWithVariants(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfProductListItemWithVariants?,
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

extension $BaseResponseOfPagedResultOfProductListItemWithVariantsCopyWith
    on BaseResponseOfPagedResultOfProductListItemWithVariants {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfPagedResultOfProductListItemWithVariants.copyWith(...)` or like so:`instanceOfBaseResponseOfPagedResultOfProductListItemWithVariants.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfProductListItemWithVariantsCWProxy
  get copyWith =>
      _$BaseResponseOfPagedResultOfProductListItemWithVariantsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfProductListItemWithVariants
_$BaseResponseOfPagedResultOfProductListItemWithVariantsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfPagedResultOfProductListItemWithVariants',
  json,
  ($checkedConvert) {
    final val = BaseResponseOfPagedResultOfProductListItemWithVariants(
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : PagedResultOfProductListItemWithVariants.fromJson(
                v as Map<String, dynamic>,
              ),
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
  },
);

Map<String, dynamic>
_$BaseResponseOfPagedResultOfProductListItemWithVariantsToJson(
  BaseResponseOfPagedResultOfProductListItemWithVariants instance,
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
