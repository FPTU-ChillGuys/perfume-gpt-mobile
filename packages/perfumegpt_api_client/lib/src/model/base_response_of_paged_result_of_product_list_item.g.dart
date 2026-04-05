// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_product_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfProductListItemCWProxy {
  BaseResponseOfPagedResultOfProductListItem payload(
    PagedResultOfProductListItem? payload,
  );

  BaseResponseOfPagedResultOfProductListItem success(bool? success);

  BaseResponseOfPagedResultOfProductListItem message(String? message);

  BaseResponseOfPagedResultOfProductListItem errors(List<String>? errors);

  BaseResponseOfPagedResultOfProductListItem errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfProductListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfProductListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfProductListItem call({
    PagedResultOfProductListItem? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfProductListItem.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfProductListItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfProductListItemCWProxyImpl
    implements _$BaseResponseOfPagedResultOfProductListItemCWProxy {
  const _$BaseResponseOfPagedResultOfProductListItemCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfProductListItem _value;

  @override
  BaseResponseOfPagedResultOfProductListItem payload(
    PagedResultOfProductListItem? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfProductListItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfProductListItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfProductListItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPagedResultOfProductListItem errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfProductListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfProductListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfProductListItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfProductListItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfProductListItem?,
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

extension $BaseResponseOfPagedResultOfProductListItemCopyWith
    on BaseResponseOfPagedResultOfProductListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfProductListItem.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfProductListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfProductListItemCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfProductListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfProductListItem
_$BaseResponseOfPagedResultOfProductListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPagedResultOfProductListItem', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPagedResultOfProductListItem(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PagedResultOfProductListItem.fromJson(v as Map<String, dynamic>),
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
});

Map<String, dynamic> _$BaseResponseOfPagedResultOfProductListItemToJson(
  BaseResponseOfPagedResultOfProductListItem instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
