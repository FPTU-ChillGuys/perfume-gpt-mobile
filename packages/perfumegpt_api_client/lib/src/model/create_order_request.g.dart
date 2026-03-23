// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateOrderRequestCWProxy {
  CreateOrderRequest voucherCode(String? voucherCode);

  CreateOrderRequest itemIds(List<String>? itemIds);

  CreateOrderRequest deliveryMethod(DeliveryMethod? deliveryMethod);

  CreateOrderRequest guestEmail(String? guestEmail);

  CreateOrderRequest savedAddressId(String? savedAddressId);

  CreateOrderRequest recipient(RecipientInformation? recipient);

  CreateOrderRequest payment(PaymentInformation? payment);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateOrderRequest call({
    String? voucherCode,
    List<String>? itemIds,
    DeliveryMethod? deliveryMethod,
    String? guestEmail,
    String? savedAddressId,
    RecipientInformation? recipient,
    PaymentInformation? payment,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateOrderRequest.copyWith(...)` or call `instanceOfCreateOrderRequest.copyWith.fieldName(value)` for a single field.
class _$CreateOrderRequestCWProxyImpl implements _$CreateOrderRequestCWProxy {
  const _$CreateOrderRequestCWProxyImpl(this._value);

  final CreateOrderRequest _value;

  @override
  CreateOrderRequest voucherCode(String? voucherCode) =>
      call(voucherCode: voucherCode);

  @override
  CreateOrderRequest itemIds(List<String>? itemIds) => call(itemIds: itemIds);

  @override
  CreateOrderRequest deliveryMethod(DeliveryMethod? deliveryMethod) =>
      call(deliveryMethod: deliveryMethod);

  @override
  CreateOrderRequest guestEmail(String? guestEmail) =>
      call(guestEmail: guestEmail);

  @override
  CreateOrderRequest savedAddressId(String? savedAddressId) =>
      call(savedAddressId: savedAddressId);

  @override
  CreateOrderRequest recipient(RecipientInformation? recipient) =>
      call(recipient: recipient);

  @override
  CreateOrderRequest payment(PaymentInformation? payment) =>
      call(payment: payment);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateOrderRequest call({
    Object? voucherCode = const $CopyWithPlaceholder(),
    Object? itemIds = const $CopyWithPlaceholder(),
    Object? deliveryMethod = const $CopyWithPlaceholder(),
    Object? guestEmail = const $CopyWithPlaceholder(),
    Object? savedAddressId = const $CopyWithPlaceholder(),
    Object? recipient = const $CopyWithPlaceholder(),
    Object? payment = const $CopyWithPlaceholder(),
  }) {
    return CreateOrderRequest(
      voucherCode: voucherCode == const $CopyWithPlaceholder()
          ? _value.voucherCode
          // ignore: cast_nullable_to_non_nullable
          : voucherCode as String?,
      itemIds: itemIds == const $CopyWithPlaceholder()
          ? _value.itemIds
          // ignore: cast_nullable_to_non_nullable
          : itemIds as List<String>?,
      deliveryMethod: deliveryMethod == const $CopyWithPlaceholder()
          ? _value.deliveryMethod
          // ignore: cast_nullable_to_non_nullable
          : deliveryMethod as DeliveryMethod?,
      guestEmail: guestEmail == const $CopyWithPlaceholder()
          ? _value.guestEmail
          // ignore: cast_nullable_to_non_nullable
          : guestEmail as String?,
      savedAddressId: savedAddressId == const $CopyWithPlaceholder()
          ? _value.savedAddressId
          // ignore: cast_nullable_to_non_nullable
          : savedAddressId as String?,
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

extension $CreateOrderRequestCopyWith on CreateOrderRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateOrderRequest.copyWith(...)` or `instanceOfCreateOrderRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateOrderRequestCWProxy get copyWith =>
      _$CreateOrderRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderRequest _$CreateOrderRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreateOrderRequest', json, ($checkedConvert) {
      final val = CreateOrderRequest(
        voucherCode: $checkedConvert('voucherCode', (v) => v as String?),
        itemIds: $checkedConvert(
          'itemIds',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        deliveryMethod: $checkedConvert(
          'deliveryMethod',
          (v) => $enumDecodeNullable(_$DeliveryMethodEnumMap, v),
        ),
        guestEmail: $checkedConvert('guestEmail', (v) => v as String?),
        savedAddressId: $checkedConvert('savedAddressId', (v) => v as String?),
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

Map<String, dynamic> _$CreateOrderRequestToJson(CreateOrderRequest instance) =>
    <String, dynamic>{
      'voucherCode': ?instance.voucherCode,
      'itemIds': ?instance.itemIds,
      'deliveryMethod': ?_$DeliveryMethodEnumMap[instance.deliveryMethod],
      'guestEmail': ?instance.guestEmail,
      'savedAddressId': ?instance.savedAddressId,
      'recipient': ?instance.recipient?.toJson(),
      'payment': ?instance.payment?.toJson(),
    };

const _$DeliveryMethodEnumMap = {
  DeliveryMethod.delivery: 'Delivery',
  DeliveryMethod.pickupInStore: 'PickupInStore',
};
