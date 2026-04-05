// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_stock_adjustment_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfStockAdjustmentListItemCWProxy {
  BaseResponseOfPagedResultOfStockAdjustmentListItem payload(
    PagedResultOfStockAdjustmentListItem? payload,
  );

  BaseResponseOfPagedResultOfStockAdjustmentListItem success(bool? success);

  BaseResponseOfPagedResultOfStockAdjustmentListItem message(String? message);

  BaseResponseOfPagedResultOfStockAdjustmentListItem errors(
    List<String>? errors,
  );

  BaseResponseOfPagedResultOfStockAdjustmentListItem errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfStockAdjustmentListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfStockAdjustmentListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfStockAdjustmentListItem call({
    PagedResultOfStockAdjustmentListItem? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfStockAdjustmentListItem.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfStockAdjustmentListItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfStockAdjustmentListItemCWProxyImpl
    implements _$BaseResponseOfPagedResultOfStockAdjustmentListItemCWProxy {
  const _$BaseResponseOfPagedResultOfStockAdjustmentListItemCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfStockAdjustmentListItem _value;

  @override
  BaseResponseOfPagedResultOfStockAdjustmentListItem payload(
    PagedResultOfStockAdjustmentListItem? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfStockAdjustmentListItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfStockAdjustmentListItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfStockAdjustmentListItem errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfPagedResultOfStockAdjustmentListItem errorType(
    int? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfStockAdjustmentListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfStockAdjustmentListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfStockAdjustmentListItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfStockAdjustmentListItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfStockAdjustmentListItem?,
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

extension $BaseResponseOfPagedResultOfStockAdjustmentListItemCopyWith
    on BaseResponseOfPagedResultOfStockAdjustmentListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfStockAdjustmentListItem.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfStockAdjustmentListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfStockAdjustmentListItemCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfStockAdjustmentListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfStockAdjustmentListItem
_$BaseResponseOfPagedResultOfStockAdjustmentListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfPagedResultOfStockAdjustmentListItem',
  json,
  ($checkedConvert) {
    final val = BaseResponseOfPagedResultOfStockAdjustmentListItem(
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : PagedResultOfStockAdjustmentListItem.fromJson(
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfStockAdjustmentListItemToJson(
  BaseResponseOfPagedResultOfStockAdjustmentListItem instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
