// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_payment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConfirmPaymentRequestCWProxy {
  ConfirmPaymentRequest isSuccess(bool isSuccess);

  ConfirmPaymentRequest failureReason(String? failureReason);

  ConfirmPaymentRequest posSessionId(String? posSessionId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConfirmPaymentRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConfirmPaymentRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ConfirmPaymentRequest call({
    bool isSuccess,
    String? failureReason,
    String? posSessionId,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConfirmPaymentRequest.copyWith(...)` or call `instanceOfConfirmPaymentRequest.copyWith.fieldName(value)` for a single field.
class _$ConfirmPaymentRequestCWProxyImpl
    implements _$ConfirmPaymentRequestCWProxy {
  const _$ConfirmPaymentRequestCWProxyImpl(this._value);

  final ConfirmPaymentRequest _value;

  @override
  ConfirmPaymentRequest isSuccess(bool isSuccess) => call(isSuccess: isSuccess);

  @override
  ConfirmPaymentRequest failureReason(String? failureReason) =>
      call(failureReason: failureReason);

  @override
  ConfirmPaymentRequest posSessionId(String? posSessionId) =>
      call(posSessionId: posSessionId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConfirmPaymentRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConfirmPaymentRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ConfirmPaymentRequest call({
    Object? isSuccess = const $CopyWithPlaceholder(),
    Object? failureReason = const $CopyWithPlaceholder(),
    Object? posSessionId = const $CopyWithPlaceholder(),
  }) {
    return ConfirmPaymentRequest(
      isSuccess: isSuccess == const $CopyWithPlaceholder() || isSuccess == null
          ? _value.isSuccess
          // ignore: cast_nullable_to_non_nullable
          : isSuccess as bool,
      failureReason: failureReason == const $CopyWithPlaceholder()
          ? _value.failureReason
          // ignore: cast_nullable_to_non_nullable
          : failureReason as String?,
      posSessionId: posSessionId == const $CopyWithPlaceholder()
          ? _value.posSessionId
          // ignore: cast_nullable_to_non_nullable
          : posSessionId as String?,
    );
  }
}

extension $ConfirmPaymentRequestCopyWith on ConfirmPaymentRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConfirmPaymentRequest.copyWith(...)` or `instanceOfConfirmPaymentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConfirmPaymentRequestCWProxy get copyWith =>
      _$ConfirmPaymentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmPaymentRequest _$ConfirmPaymentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ConfirmPaymentRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['isSuccess']);
  final val = ConfirmPaymentRequest(
    isSuccess: $checkedConvert('isSuccess', (v) => v as bool),
    failureReason: $checkedConvert('failureReason', (v) => v as String?),
    posSessionId: $checkedConvert('posSessionId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ConfirmPaymentRequestToJson(
  ConfirmPaymentRequest instance,
) => <String, dynamic>{
  'isSuccess': instance.isSuccess,
  'failureReason': ?instance.failureReason,
  'posSessionId': ?instance.posSessionId,
};
