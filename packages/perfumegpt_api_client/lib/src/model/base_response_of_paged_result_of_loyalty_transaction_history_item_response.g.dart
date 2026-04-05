// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_loyalty_transaction_history_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseCWProxy {
  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse payload(
    PagedResultOfLoyaltyTransactionHistoryItemResponse? payload,
  );

  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse success(
    bool? success,
  );

  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse message(
    String? message,
  );

  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse errors(
    List<String>? errors,
  );

  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse errorType(
    int? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse call({
    PagedResultOfLoyaltyTransactionHistoryItemResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseCWProxyImpl
    implements
        _$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseCWProxy {
  const _$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse _value;

  @override
  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse payload(
    PagedResultOfLoyaltyTransactionHistoryItemResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse success(
    bool? success,
  ) => call(success: success);

  @override
  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse message(
    String? message,
  ) => call(message: message);

  @override
  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse errorType(
    int? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfLoyaltyTransactionHistoryItemResponse?,
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

extension $BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseCopyWith
    on BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseCWProxy
  get copyWith =>
      _$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse
_$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse',
  json,
  ($checkedConvert) {
    final val =
        BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse(
          payload: $checkedConvert(
            'payload',
            (v) => v == null
                ? null
                : PagedResultOfLoyaltyTransactionHistoryItemResponse.fromJson(
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
_$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseToJson(
  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
