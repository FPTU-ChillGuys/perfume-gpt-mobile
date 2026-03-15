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

  BaseResponseOfPagedResultOfStockAdjustmentListItem errorType(
    ResponseErrorType? errorType,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfStockAdjustmentListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfStockAdjustmentListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfPagedResultOfStockAdjustmentListItem call({
    PagedResultOfStockAdjustmentListItem? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfPagedResultOfStockAdjustmentListItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfPagedResultOfStockAdjustmentListItem.copyWith.fieldName(...)`
class _$BaseResponseOfPagedResultOfStockAdjustmentListItemCWProxyImpl
    implements _$BaseResponseOfPagedResultOfStockAdjustmentListItemCWProxy {
  const _$BaseResponseOfPagedResultOfStockAdjustmentListItemCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfStockAdjustmentListItem _value;

  @override
  BaseResponseOfPagedResultOfStockAdjustmentListItem payload(
    PagedResultOfStockAdjustmentListItem? payload,
  ) => this(payload: payload);

  @override
  BaseResponseOfPagedResultOfStockAdjustmentListItem success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfPagedResultOfStockAdjustmentListItem message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfPagedResultOfStockAdjustmentListItem errors(
    List<String>? errors,
  ) => this(errors: errors);

  @override
  BaseResponseOfPagedResultOfStockAdjustmentListItem errorType(
    ResponseErrorType? errorType,
  ) => this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfPagedResultOfStockAdjustmentListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfPagedResultOfStockAdjustmentListItem(...).copyWith(id: 12, name: "My name")
  /// ````
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
          : errorType as ResponseErrorType?,
    );
  }
}

extension $BaseResponseOfPagedResultOfStockAdjustmentListItemCopyWith
    on BaseResponseOfPagedResultOfStockAdjustmentListItem {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfPagedResultOfStockAdjustmentListItem.copyWith(...)` or like so:`instanceOfBaseResponseOfPagedResultOfStockAdjustmentListItem.copyWith.fieldName(...)`.
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
      errorType: $checkedConvert(
        'errorType',
        (v) => $enumDecodeNullable(_$ResponseErrorTypeEnumMap, v),
      ),
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
