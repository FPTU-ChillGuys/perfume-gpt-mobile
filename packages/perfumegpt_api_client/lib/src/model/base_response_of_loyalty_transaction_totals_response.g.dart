// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_loyalty_transaction_totals_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfLoyaltyTransactionTotalsResponseCWProxy {
  BaseResponseOfLoyaltyTransactionTotalsResponse payload(
    LoyaltyTransactionTotalsResponse? payload,
  );

  BaseResponseOfLoyaltyTransactionTotalsResponse success(bool? success);

  BaseResponseOfLoyaltyTransactionTotalsResponse message(String? message);

  BaseResponseOfLoyaltyTransactionTotalsResponse errors(List<String>? errors);

  BaseResponseOfLoyaltyTransactionTotalsResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfLoyaltyTransactionTotalsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfLoyaltyTransactionTotalsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfLoyaltyTransactionTotalsResponse call({
    LoyaltyTransactionTotalsResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfLoyaltyTransactionTotalsResponse.copyWith(...)` or call `instanceOfBaseResponseOfLoyaltyTransactionTotalsResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfLoyaltyTransactionTotalsResponseCWProxyImpl
    implements _$BaseResponseOfLoyaltyTransactionTotalsResponseCWProxy {
  const _$BaseResponseOfLoyaltyTransactionTotalsResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfLoyaltyTransactionTotalsResponse _value;

  @override
  BaseResponseOfLoyaltyTransactionTotalsResponse payload(
    LoyaltyTransactionTotalsResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfLoyaltyTransactionTotalsResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfLoyaltyTransactionTotalsResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfLoyaltyTransactionTotalsResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfLoyaltyTransactionTotalsResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfLoyaltyTransactionTotalsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfLoyaltyTransactionTotalsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfLoyaltyTransactionTotalsResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfLoyaltyTransactionTotalsResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as LoyaltyTransactionTotalsResponse?,
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

extension $BaseResponseOfLoyaltyTransactionTotalsResponseCopyWith
    on BaseResponseOfLoyaltyTransactionTotalsResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfLoyaltyTransactionTotalsResponse.copyWith(...)` or `instanceOfBaseResponseOfLoyaltyTransactionTotalsResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfLoyaltyTransactionTotalsResponseCWProxy get copyWith =>
      _$BaseResponseOfLoyaltyTransactionTotalsResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfLoyaltyTransactionTotalsResponse
_$BaseResponseOfLoyaltyTransactionTotalsResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfLoyaltyTransactionTotalsResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfLoyaltyTransactionTotalsResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : LoyaltyTransactionTotalsResponse.fromJson(
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

Map<String, dynamic> _$BaseResponseOfLoyaltyTransactionTotalsResponseToJson(
  BaseResponseOfLoyaltyTransactionTotalsResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
