// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_response_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreatePaymentResponseDtoCWProxy {
  CreatePaymentResponseDto paymentId(String? paymentId);

  CreatePaymentResponseDto paymentUrl(String? paymentUrl);

  CreatePaymentResponseDto orderId(String? orderId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreatePaymentResponseDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreatePaymentResponseDto(...).copyWith(id: 12, name: "My name")
  /// ```
  CreatePaymentResponseDto call({
    String? paymentId,
    String? paymentUrl,
    String? orderId,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreatePaymentResponseDto.copyWith(...)` or call `instanceOfCreatePaymentResponseDto.copyWith.fieldName(value)` for a single field.
class _$CreatePaymentResponseDtoCWProxyImpl
    implements _$CreatePaymentResponseDtoCWProxy {
  const _$CreatePaymentResponseDtoCWProxyImpl(this._value);

  final CreatePaymentResponseDto _value;

  @override
  CreatePaymentResponseDto paymentId(String? paymentId) =>
      call(paymentId: paymentId);

  @override
  CreatePaymentResponseDto paymentUrl(String? paymentUrl) =>
      call(paymentUrl: paymentUrl);

  @override
  CreatePaymentResponseDto orderId(String? orderId) => call(orderId: orderId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreatePaymentResponseDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreatePaymentResponseDto(...).copyWith(id: 12, name: "My name")
  /// ```
  CreatePaymentResponseDto call({
    Object? paymentId = const $CopyWithPlaceholder(),
    Object? paymentUrl = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
  }) {
    return CreatePaymentResponseDto(
      paymentId: paymentId == const $CopyWithPlaceholder()
          ? _value.paymentId
          // ignore: cast_nullable_to_non_nullable
          : paymentId as String?,
      paymentUrl: paymentUrl == const $CopyWithPlaceholder()
          ? _value.paymentUrl
          // ignore: cast_nullable_to_non_nullable
          : paymentUrl as String?,
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String?,
    );
  }
}

extension $CreatePaymentResponseDtoCopyWith on CreatePaymentResponseDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreatePaymentResponseDto.copyWith(...)` or `instanceOfCreatePaymentResponseDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreatePaymentResponseDtoCWProxy get copyWith =>
      _$CreatePaymentResponseDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentResponseDto _$CreatePaymentResponseDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreatePaymentResponseDto', json, ($checkedConvert) {
  final val = CreatePaymentResponseDto(
    paymentId: $checkedConvert('paymentId', (v) => v as String?),
    paymentUrl: $checkedConvert('paymentUrl', (v) => v as String?),
    orderId: $checkedConvert('orderId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CreatePaymentResponseDtoToJson(
  CreatePaymentResponseDto instance,
) => <String, dynamic>{
  'paymentId': ?instance.paymentId,
  'paymentUrl': ?instance.paymentUrl,
  'orderId': ?instance.orderId,
};
