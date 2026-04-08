// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_in_store_order_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateInStoreOrderRequestCWProxy {
  CreateInStoreOrderRequest scannedItems(List<PosScanItemRequest> scannedItems);

  CreateInStoreOrderRequest voucherCode(String? voucherCode);

  CreateInStoreOrderRequest customerId(String? customerId);

  CreateInStoreOrderRequest isPickupInStore(bool? isPickupInStore);

  CreateInStoreOrderRequest recipient(ContactAddressInformation? recipient);

  CreateInStoreOrderRequest payment(PaymentInformation payment);

  CreateInStoreOrderRequest expectedTotalPrice(num? expectedTotalPrice);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateInStoreOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateInStoreOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateInStoreOrderRequest call({
    List<PosScanItemRequest> scannedItems,
    String? voucherCode,
    String? customerId,
    bool? isPickupInStore,
    ContactAddressInformation? recipient,
    PaymentInformation payment,
    num? expectedTotalPrice,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateInStoreOrderRequest.copyWith(...)` or call `instanceOfCreateInStoreOrderRequest.copyWith.fieldName(value)` for a single field.
class _$CreateInStoreOrderRequestCWProxyImpl
    implements _$CreateInStoreOrderRequestCWProxy {
  const _$CreateInStoreOrderRequestCWProxyImpl(this._value);

  final CreateInStoreOrderRequest _value;

  @override
  CreateInStoreOrderRequest scannedItems(
    List<PosScanItemRequest> scannedItems,
  ) => call(scannedItems: scannedItems);

  @override
  CreateInStoreOrderRequest voucherCode(String? voucherCode) =>
      call(voucherCode: voucherCode);

  @override
  CreateInStoreOrderRequest customerId(String? customerId) =>
      call(customerId: customerId);

  @override
  CreateInStoreOrderRequest isPickupInStore(bool? isPickupInStore) =>
      call(isPickupInStore: isPickupInStore);

  @override
  CreateInStoreOrderRequest recipient(ContactAddressInformation? recipient) =>
      call(recipient: recipient);

  @override
  CreateInStoreOrderRequest payment(PaymentInformation payment) =>
      call(payment: payment);

  @override
  CreateInStoreOrderRequest expectedTotalPrice(num? expectedTotalPrice) =>
      call(expectedTotalPrice: expectedTotalPrice);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateInStoreOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateInStoreOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateInStoreOrderRequest call({
    Object? scannedItems = const $CopyWithPlaceholder(),
    Object? voucherCode = const $CopyWithPlaceholder(),
    Object? customerId = const $CopyWithPlaceholder(),
    Object? isPickupInStore = const $CopyWithPlaceholder(),
    Object? recipient = const $CopyWithPlaceholder(),
    Object? payment = const $CopyWithPlaceholder(),
    Object? expectedTotalPrice = const $CopyWithPlaceholder(),
  }) {
    return CreateInStoreOrderRequest(
      scannedItems:
          scannedItems == const $CopyWithPlaceholder() || scannedItems == null
          ? _value.scannedItems
          // ignore: cast_nullable_to_non_nullable
          : scannedItems as List<PosScanItemRequest>,
      voucherCode: voucherCode == const $CopyWithPlaceholder()
          ? _value.voucherCode
          // ignore: cast_nullable_to_non_nullable
          : voucherCode as String?,
      customerId: customerId == const $CopyWithPlaceholder()
          ? _value.customerId
          // ignore: cast_nullable_to_non_nullable
          : customerId as String?,
      isPickupInStore: isPickupInStore == const $CopyWithPlaceholder()
          ? _value.isPickupInStore
          // ignore: cast_nullable_to_non_nullable
          : isPickupInStore as bool?,
      recipient: recipient == const $CopyWithPlaceholder()
          ? _value.recipient
          // ignore: cast_nullable_to_non_nullable
          : recipient as ContactAddressInformation?,
      payment: payment == const $CopyWithPlaceholder() || payment == null
          ? _value.payment
          // ignore: cast_nullable_to_non_nullable
          : payment as PaymentInformation,
      expectedTotalPrice: expectedTotalPrice == const $CopyWithPlaceholder()
          ? _value.expectedTotalPrice
          // ignore: cast_nullable_to_non_nullable
          : expectedTotalPrice as num?,
    );
  }
}

extension $CreateInStoreOrderRequestCopyWith on CreateInStoreOrderRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateInStoreOrderRequest.copyWith(...)` or `instanceOfCreateInStoreOrderRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateInStoreOrderRequestCWProxy get copyWith =>
      _$CreateInStoreOrderRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateInStoreOrderRequest _$CreateInStoreOrderRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateInStoreOrderRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['scannedItems', 'payment']);
  final val = CreateInStoreOrderRequest(
    scannedItems: $checkedConvert(
      'scannedItems',
      (v) => (v as List<dynamic>)
          .map((e) => PosScanItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    voucherCode: $checkedConvert('voucherCode', (v) => v as String?),
    customerId: $checkedConvert('customerId', (v) => v as String?),
    isPickupInStore: $checkedConvert('isPickupInStore', (v) => v as bool?),
    recipient: $checkedConvert(
      'recipient',
      (v) => v == null
          ? null
          : ContactAddressInformation.fromJson(v as Map<String, dynamic>),
    ),
    payment: $checkedConvert(
      'payment',
      (v) => PaymentInformation.fromJson(v as Map<String, dynamic>),
    ),
    expectedTotalPrice: $checkedConvert('expectedTotalPrice', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$CreateInStoreOrderRequestToJson(
  CreateInStoreOrderRequest instance,
) => <String, dynamic>{
  'scannedItems': instance.scannedItems.map((e) => e.toJson()).toList(),
  'voucherCode': ?instance.voucherCode,
  'customerId': ?instance.customerId,
  'isPickupInStore': ?instance.isPickupInStore,
  'recipient': ?instance.recipient?.toJson(),
  'payment': instance.payment.toJson(),
  'expectedTotalPrice': ?instance.expectedTotalPrice,
};
