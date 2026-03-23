// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_in_store_order_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateInStoreOrderRequestCWProxy {
  CreateInStoreOrderRequest voucherCode(String? voucherCode);

  CreateInStoreOrderRequest isPickupInStore(bool? isPickupInStore);

  CreateInStoreOrderRequest orderDetails(
    List<CreateOrderDetailRequest>? orderDetails,
  );

  CreateInStoreOrderRequest recipient(RecipientInformation? recipient);

  CreateInStoreOrderRequest payment(PaymentInformation? payment);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateInStoreOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateInStoreOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateInStoreOrderRequest call({
    String? voucherCode,
    bool? isPickupInStore,
    List<CreateOrderDetailRequest>? orderDetails,
    RecipientInformation? recipient,
    PaymentInformation? payment,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateInStoreOrderRequest.copyWith(...)` or call `instanceOfCreateInStoreOrderRequest.copyWith.fieldName(value)` for a single field.
class _$CreateInStoreOrderRequestCWProxyImpl
    implements _$CreateInStoreOrderRequestCWProxy {
  const _$CreateInStoreOrderRequestCWProxyImpl(this._value);

  final CreateInStoreOrderRequest _value;

  @override
  CreateInStoreOrderRequest voucherCode(String? voucherCode) =>
      call(voucherCode: voucherCode);

  @override
  CreateInStoreOrderRequest isPickupInStore(bool? isPickupInStore) =>
      call(isPickupInStore: isPickupInStore);

  @override
  CreateInStoreOrderRequest orderDetails(
    List<CreateOrderDetailRequest>? orderDetails,
  ) => call(orderDetails: orderDetails);

  @override
  CreateInStoreOrderRequest recipient(RecipientInformation? recipient) =>
      call(recipient: recipient);

  @override
  CreateInStoreOrderRequest payment(PaymentInformation? payment) =>
      call(payment: payment);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateInStoreOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateInStoreOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateInStoreOrderRequest call({
    Object? voucherCode = const $CopyWithPlaceholder(),
    Object? isPickupInStore = const $CopyWithPlaceholder(),
    Object? orderDetails = const $CopyWithPlaceholder(),
    Object? recipient = const $CopyWithPlaceholder(),
    Object? payment = const $CopyWithPlaceholder(),
  }) {
    return CreateInStoreOrderRequest(
      voucherCode: voucherCode == const $CopyWithPlaceholder()
          ? _value.voucherCode
          // ignore: cast_nullable_to_non_nullable
          : voucherCode as String?,
      isPickupInStore: isPickupInStore == const $CopyWithPlaceholder()
          ? _value.isPickupInStore
          // ignore: cast_nullable_to_non_nullable
          : isPickupInStore as bool?,
      orderDetails: orderDetails == const $CopyWithPlaceholder()
          ? _value.orderDetails
          // ignore: cast_nullable_to_non_nullable
          : orderDetails as List<CreateOrderDetailRequest>?,
      recipient: recipient == const $CopyWithPlaceholder()
          ? _value.recipient
          // ignore: cast_nullable_to_non_nullable
          : recipient as RecipientInformation?,
      payment: payment == const $CopyWithPlaceholder()
          ? _value.payment
          // ignore: cast_nullable_to_non_nullable
          : payment as PaymentInformation?,
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
  final val = CreateInStoreOrderRequest(
    voucherCode: $checkedConvert('voucherCode', (v) => v as String?),
    isPickupInStore: $checkedConvert('isPickupInStore', (v) => v as bool?),
    orderDetails: $checkedConvert(
      'orderDetails',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => CreateOrderDetailRequest.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    recipient: $checkedConvert(
      'recipient',
      (v) => v == null
          ? null
          : RecipientInformation.fromJson(v as Map<String, dynamic>),
    ),
    payment: $checkedConvert(
      'payment',
      (v) => v == null
          ? null
          : PaymentInformation.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateInStoreOrderRequestToJson(
  CreateInStoreOrderRequest instance,
) => <String, dynamic>{
  'voucherCode': ?instance.voucherCode,
  'isPickupInStore': ?instance.isPickupInStore,
  'orderDetails': ?instance.orderDetails?.map((e) => e.toJson()).toList(),
  'recipient': ?instance.recipient?.toJson(),
  'payment': ?instance.payment?.toJson(),
};
