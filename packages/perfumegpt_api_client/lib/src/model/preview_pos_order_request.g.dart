// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preview_pos_order_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PreviewPosOrderRequestCWProxy {
  PreviewPosOrderRequest scannedItems(List<PosScanItemRequest> scannedItems);

  PreviewPosOrderRequest voucherCode(String? voucherCode);

  PreviewPosOrderRequest guestEmailOrPhoneNumber(
    String? guestEmailOrPhoneNumber,
  );

  PreviewPosOrderRequest customerId(String? customerId);

  PreviewPosOrderRequest sessionId(String? sessionId);

  PreviewPosOrderRequest paymentMethod(PaymentMethod? paymentMethod);

  PreviewPosOrderRequest recipient(ContactAddressInformation? recipient);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PreviewPosOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PreviewPosOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  PreviewPosOrderRequest call({
    List<PosScanItemRequest> scannedItems,
    String? voucherCode,
    String? guestEmailOrPhoneNumber,
    String? customerId,
    String? sessionId,
    PaymentMethod? paymentMethod,
    ContactAddressInformation? recipient,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPreviewPosOrderRequest.copyWith(...)` or call `instanceOfPreviewPosOrderRequest.copyWith.fieldName(value)` for a single field.
class _$PreviewPosOrderRequestCWProxyImpl
    implements _$PreviewPosOrderRequestCWProxy {
  const _$PreviewPosOrderRequestCWProxyImpl(this._value);

  final PreviewPosOrderRequest _value;

  @override
  PreviewPosOrderRequest scannedItems(List<PosScanItemRequest> scannedItems) =>
      call(scannedItems: scannedItems);

  @override
  PreviewPosOrderRequest voucherCode(String? voucherCode) =>
      call(voucherCode: voucherCode);

  @override
  PreviewPosOrderRequest guestEmailOrPhoneNumber(
    String? guestEmailOrPhoneNumber,
  ) => call(guestEmailOrPhoneNumber: guestEmailOrPhoneNumber);

  @override
  PreviewPosOrderRequest customerId(String? customerId) =>
      call(customerId: customerId);

  @override
  PreviewPosOrderRequest sessionId(String? sessionId) =>
      call(sessionId: sessionId);

  @override
  PreviewPosOrderRequest paymentMethod(PaymentMethod? paymentMethod) =>
      call(paymentMethod: paymentMethod);

  @override
  PreviewPosOrderRequest recipient(ContactAddressInformation? recipient) =>
      call(recipient: recipient);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PreviewPosOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PreviewPosOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  PreviewPosOrderRequest call({
    Object? scannedItems = const $CopyWithPlaceholder(),
    Object? voucherCode = const $CopyWithPlaceholder(),
    Object? guestEmailOrPhoneNumber = const $CopyWithPlaceholder(),
    Object? customerId = const $CopyWithPlaceholder(),
    Object? sessionId = const $CopyWithPlaceholder(),
    Object? paymentMethod = const $CopyWithPlaceholder(),
    Object? recipient = const $CopyWithPlaceholder(),
  }) {
    return PreviewPosOrderRequest(
      scannedItems:
          scannedItems == const $CopyWithPlaceholder() || scannedItems == null
          ? _value.scannedItems
          // ignore: cast_nullable_to_non_nullable
          : scannedItems as List<PosScanItemRequest>,
      voucherCode: voucherCode == const $CopyWithPlaceholder()
          ? _value.voucherCode
          // ignore: cast_nullable_to_non_nullable
          : voucherCode as String?,
      guestEmailOrPhoneNumber:
          guestEmailOrPhoneNumber == const $CopyWithPlaceholder()
          ? _value.guestEmailOrPhoneNumber
          // ignore: cast_nullable_to_non_nullable
          : guestEmailOrPhoneNumber as String?,
      customerId: customerId == const $CopyWithPlaceholder()
          ? _value.customerId
          // ignore: cast_nullable_to_non_nullable
          : customerId as String?,
      sessionId: sessionId == const $CopyWithPlaceholder()
          ? _value.sessionId
          // ignore: cast_nullable_to_non_nullable
          : sessionId as String?,
      paymentMethod: paymentMethod == const $CopyWithPlaceholder()
          ? _value.paymentMethod
          // ignore: cast_nullable_to_non_nullable
          : paymentMethod as PaymentMethod?,
      recipient: recipient == const $CopyWithPlaceholder()
          ? _value.recipient
          // ignore: cast_nullable_to_non_nullable
          : recipient as ContactAddressInformation?,
    );
  }
}

extension $PreviewPosOrderRequestCopyWith on PreviewPosOrderRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPreviewPosOrderRequest.copyWith(...)` or `instanceOfPreviewPosOrderRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PreviewPosOrderRequestCWProxy get copyWith =>
      _$PreviewPosOrderRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreviewPosOrderRequest _$PreviewPosOrderRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PreviewPosOrderRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['scannedItems']);
  final val = PreviewPosOrderRequest(
    scannedItems: $checkedConvert(
      'scannedItems',
      (v) => (v as List<dynamic>)
          .map((e) => PosScanItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    voucherCode: $checkedConvert('voucherCode', (v) => v as String?),
    guestEmailOrPhoneNumber: $checkedConvert(
      'guestEmailOrPhoneNumber',
      (v) => v as String?,
    ),
    customerId: $checkedConvert('customerId', (v) => v as String?),
    sessionId: $checkedConvert('sessionId', (v) => v as String?),
    paymentMethod: $checkedConvert(
      'paymentMethod',
      (v) => $enumDecodeNullable(_$PaymentMethodEnumMap, v),
    ),
    recipient: $checkedConvert(
      'recipient',
      (v) => v == null
          ? null
          : ContactAddressInformation.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$PreviewPosOrderRequestToJson(
  PreviewPosOrderRequest instance,
) => <String, dynamic>{
  'scannedItems': instance.scannedItems.map((e) => e.toJson()).toList(),
  'voucherCode': ?instance.voucherCode,
  'guestEmailOrPhoneNumber': ?instance.guestEmailOrPhoneNumber,
  'customerId': ?instance.customerId,
  'sessionId': ?instance.sessionId,
  'paymentMethod': ?_$PaymentMethodEnumMap[instance.paymentMethod],
  'recipient': ?instance.recipient?.toJson(),
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.cashOnDelivery: 'CashOnDelivery',
  PaymentMethod.vnPay: 'VnPay',
  PaymentMethod.momo: 'Momo',
  PaymentMethod.cashInStore: 'CashInStore',
  PaymentMethod.externalBankTransfer: 'ExternalBankTransfer',
  PaymentMethod.payOs: 'PayOs',
};
