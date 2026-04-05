// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_shipping_info_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfShippingInfoListItemCWProxy {
  BaseResponseOfPagedResultOfShippingInfoListItem payload(
    PagedResultOfShippingInfoListItem? payload,
  );

  BaseResponseOfPagedResultOfShippingInfoListItem success(bool? success);

  BaseResponseOfPagedResultOfShippingInfoListItem message(String? message);

  BaseResponseOfPagedResultOfShippingInfoListItem errors(List<String>? errors);

  BaseResponseOfPagedResultOfShippingInfoListItem errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfShippingInfoListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfShippingInfoListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfShippingInfoListItem call({
    PagedResultOfShippingInfoListItem? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfShippingInfoListItem.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfShippingInfoListItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfShippingInfoListItemCWProxyImpl
    implements _$BaseResponseOfPagedResultOfShippingInfoListItemCWProxy {
  const _$BaseResponseOfPagedResultOfShippingInfoListItemCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfShippingInfoListItem _value;

  @override
  BaseResponseOfPagedResultOfShippingInfoListItem payload(
    PagedResultOfShippingInfoListItem? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfShippingInfoListItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfShippingInfoListItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfShippingInfoListItem errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfPagedResultOfShippingInfoListItem errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfShippingInfoListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfShippingInfoListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfShippingInfoListItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfShippingInfoListItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfShippingInfoListItem?,
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

extension $BaseResponseOfPagedResultOfShippingInfoListItemCopyWith
    on BaseResponseOfPagedResultOfShippingInfoListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfShippingInfoListItem.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfShippingInfoListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfShippingInfoListItemCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfShippingInfoListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfShippingInfoListItem
_$BaseResponseOfPagedResultOfShippingInfoListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPagedResultOfShippingInfoListItem', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPagedResultOfShippingInfoListItem(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PagedResultOfShippingInfoListItem.fromJson(
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
});

Map<String, dynamic> _$BaseResponseOfPagedResultOfShippingInfoListItemToJson(
  BaseResponseOfPagedResultOfShippingInfoListItem instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
