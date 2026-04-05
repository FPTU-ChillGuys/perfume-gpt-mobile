// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_redeemable_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfRedeemableVoucherResponseCWProxy {
  BaseResponseOfListOfRedeemableVoucherResponse payload(
    List<RedeemableVoucherResponse>? payload,
  );

  BaseResponseOfListOfRedeemableVoucherResponse success(bool? success);

  BaseResponseOfListOfRedeemableVoucherResponse message(String? message);

  BaseResponseOfListOfRedeemableVoucherResponse errors(List<String>? errors);

  BaseResponseOfListOfRedeemableVoucherResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfRedeemableVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfRedeemableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfRedeemableVoucherResponse call({
    List<RedeemableVoucherResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfRedeemableVoucherResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfRedeemableVoucherResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfRedeemableVoucherResponseCWProxyImpl
    implements _$BaseResponseOfListOfRedeemableVoucherResponseCWProxy {
  const _$BaseResponseOfListOfRedeemableVoucherResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfRedeemableVoucherResponse _value;

  @override
  BaseResponseOfListOfRedeemableVoucherResponse payload(
    List<RedeemableVoucherResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfRedeemableVoucherResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfRedeemableVoucherResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfRedeemableVoucherResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfRedeemableVoucherResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfRedeemableVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfRedeemableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfRedeemableVoucherResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfRedeemableVoucherResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<RedeemableVoucherResponse>?,
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

extension $BaseResponseOfListOfRedeemableVoucherResponseCopyWith
    on BaseResponseOfListOfRedeemableVoucherResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfRedeemableVoucherResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfRedeemableVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfRedeemableVoucherResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfRedeemableVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfRedeemableVoucherResponse
_$BaseResponseOfListOfRedeemableVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfRedeemableVoucherResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfRedeemableVoucherResponse(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                RedeemableVoucherResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
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

Map<String, dynamic> _$BaseResponseOfListOfRedeemableVoucherResponseToJson(
  BaseResponseOfListOfRedeemableVoucherResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
