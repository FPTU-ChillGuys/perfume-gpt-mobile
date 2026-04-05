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
    int? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfProductListItemWithVariants(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfProductListItemWithVariants(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfProductListItemWithVariants call({
    PagedResultOfProductListItemWithVariants? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfProductListItemWithVariants.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfProductListItemWithVariants.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfProductListItemWithVariantsCWProxyImpl
    implements _$BaseResponseOfPagedResultOfProductListItemWithVariantsCWProxy {
  const _$BaseResponseOfPagedResultOfProductListItemWithVariantsCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfProductListItemWithVariants _value;

  @override
  BaseResponseOfPagedResultOfProductListItemWithVariants payload(
    PagedResultOfProductListItemWithVariants? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfProductListItemWithVariants success(
    bool? success,
  ) => call(success: success);

  @override
  BaseResponseOfPagedResultOfProductListItemWithVariants message(
    String? message,
  ) => call(message: message);

  @override
  BaseResponseOfPagedResultOfProductListItemWithVariants errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfPagedResultOfProductListItemWithVariants errorType(
    int? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfProductListItemWithVariants(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfProductListItemWithVariants(...).copyWith(id: 12, name: "My name")
  /// ```
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
          : errorType as int?,
    );
  }
}

extension $BaseResponseOfPagedResultOfProductListItemWithVariantsCopyWith
    on BaseResponseOfPagedResultOfProductListItemWithVariants {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfProductListItemWithVariants.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfProductListItemWithVariants.copyWith.fieldName(...)`.
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
      errorType: $checkedConvert('errorType', (v) => (v as num?)?.toInt()),
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
  'errorType': ?instance.errorType,
};
