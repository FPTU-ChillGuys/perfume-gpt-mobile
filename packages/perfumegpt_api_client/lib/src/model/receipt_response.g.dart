// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReceiptResponseCWProxy {
  ReceiptResponse orderId(String? orderId);

  ReceiptResponse orderDate(DateTime? orderDate);

  ReceiptResponse orderStatus(String? orderStatus);

  ReceiptResponse staffName(String? staffName);

  ReceiptResponse customerName(String? customerName);

  ReceiptResponse recipientPhone(String? recipientPhone);

  ReceiptResponse recipientAddress(String? recipientAddress);

  ReceiptResponse items(List<ReceiptItemDto>? items);

  ReceiptResponse subtotal(num? subtotal);

  ReceiptResponse discount(num? discount);

  ReceiptResponse tax(num? tax);

  ReceiptResponse total(num? total);

  ReceiptResponse paymentMethod(String? paymentMethod);

  ReceiptResponse note(String? note);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReceiptResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReceiptResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ReceiptResponse call({
    String? orderId,
    DateTime? orderDate,
    String? orderStatus,
    String? staffName,
    String? customerName,
    String? recipientPhone,
    String? recipientAddress,
    List<ReceiptItemDto>? items,
    num? subtotal,
    num? discount,
    num? tax,
    num? total,
    String? paymentMethod,
    String? note,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReceiptResponse.copyWith(...)` or call `instanceOfReceiptResponse.copyWith.fieldName(value)` for a single field.
class _$ReceiptResponseCWProxyImpl implements _$ReceiptResponseCWProxy {
  const _$ReceiptResponseCWProxyImpl(this._value);

  final ReceiptResponse _value;

  @override
  ReceiptResponse orderId(String? orderId) => call(orderId: orderId);

  @override
  ReceiptResponse orderDate(DateTime? orderDate) => call(orderDate: orderDate);

  @override
  ReceiptResponse orderStatus(String? orderStatus) =>
      call(orderStatus: orderStatus);

  @override
  ReceiptResponse staffName(String? staffName) => call(staffName: staffName);

  @override
  ReceiptResponse customerName(String? customerName) =>
      call(customerName: customerName);

  @override
  ReceiptResponse recipientPhone(String? recipientPhone) =>
      call(recipientPhone: recipientPhone);

  @override
  ReceiptResponse recipientAddress(String? recipientAddress) =>
      call(recipientAddress: recipientAddress);

  @override
  ReceiptResponse items(List<ReceiptItemDto>? items) => call(items: items);

  @override
  ReceiptResponse subtotal(num? subtotal) => call(subtotal: subtotal);

  @override
  ReceiptResponse discount(num? discount) => call(discount: discount);

  @override
  ReceiptResponse tax(num? tax) => call(tax: tax);

  @override
  ReceiptResponse total(num? total) => call(total: total);

  @override
  ReceiptResponse paymentMethod(String? paymentMethod) =>
      call(paymentMethod: paymentMethod);

  @override
  ReceiptResponse note(String? note) => call(note: note);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReceiptResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReceiptResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ReceiptResponse call({
    Object? orderId = const $CopyWithPlaceholder(),
    Object? orderDate = const $CopyWithPlaceholder(),
    Object? orderStatus = const $CopyWithPlaceholder(),
    Object? staffName = const $CopyWithPlaceholder(),
    Object? customerName = const $CopyWithPlaceholder(),
    Object? recipientPhone = const $CopyWithPlaceholder(),
    Object? recipientAddress = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
    Object? subtotal = const $CopyWithPlaceholder(),
    Object? discount = const $CopyWithPlaceholder(),
    Object? tax = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? paymentMethod = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
  }) {
    return ReceiptResponse(
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String?,
      orderDate: orderDate == const $CopyWithPlaceholder()
          ? _value.orderDate
          // ignore: cast_nullable_to_non_nullable
          : orderDate as DateTime?,
      orderStatus: orderStatus == const $CopyWithPlaceholder()
          ? _value.orderStatus
          // ignore: cast_nullable_to_non_nullable
          : orderStatus as String?,
      staffName: staffName == const $CopyWithPlaceholder()
          ? _value.staffName
          // ignore: cast_nullable_to_non_nullable
          : staffName as String?,
      customerName: customerName == const $CopyWithPlaceholder()
          ? _value.customerName
          // ignore: cast_nullable_to_non_nullable
          : customerName as String?,
      recipientPhone: recipientPhone == const $CopyWithPlaceholder()
          ? _value.recipientPhone
          // ignore: cast_nullable_to_non_nullable
          : recipientPhone as String?,
      recipientAddress: recipientAddress == const $CopyWithPlaceholder()
          ? _value.recipientAddress
          // ignore: cast_nullable_to_non_nullable
          : recipientAddress as String?,
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ReceiptItemDto>?,
      subtotal: subtotal == const $CopyWithPlaceholder()
          ? _value.subtotal
          // ignore: cast_nullable_to_non_nullable
          : subtotal as num?,
      discount: discount == const $CopyWithPlaceholder()
          ? _value.discount
          // ignore: cast_nullable_to_non_nullable
          : discount as num?,
      tax: tax == const $CopyWithPlaceholder()
          ? _value.tax
          // ignore: cast_nullable_to_non_nullable
          : tax as num?,
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as num?,
      paymentMethod: paymentMethod == const $CopyWithPlaceholder()
          ? _value.paymentMethod
          // ignore: cast_nullable_to_non_nullable
          : paymentMethod as String?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
    );
  }
}

extension $ReceiptResponseCopyWith on ReceiptResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReceiptResponse.copyWith(...)` or `instanceOfReceiptResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReceiptResponseCWProxy get copyWith => _$ReceiptResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReceiptResponse _$ReceiptResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ReceiptResponse', json, ($checkedConvert) {
      final val = ReceiptResponse(
        orderId: $checkedConvert('orderId', (v) => v as String?),
        orderDate: $checkedConvert(
          'orderDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        orderStatus: $checkedConvert('orderStatus', (v) => v as String?),
        staffName: $checkedConvert('staffName', (v) => v as String?),
        customerName: $checkedConvert('customerName', (v) => v as String?),
        recipientPhone: $checkedConvert('recipientPhone', (v) => v as String?),
        recipientAddress: $checkedConvert(
          'recipientAddress',
          (v) => v as String?,
        ),
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>?)
              ?.map((e) => ReceiptItemDto.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        subtotal: $checkedConvert('subtotal', (v) => v as num?),
        discount: $checkedConvert('discount', (v) => v as num?),
        tax: $checkedConvert('tax', (v) => v as num?),
        total: $checkedConvert('total', (v) => v as num?),
        paymentMethod: $checkedConvert('paymentMethod', (v) => v as String?),
        note: $checkedConvert('note', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ReceiptResponseToJson(ReceiptResponse instance) =>
    <String, dynamic>{
      'orderId': ?instance.orderId,
      'orderDate': ?instance.orderDate?.toIso8601String(),
      'orderStatus': ?instance.orderStatus,
      'staffName': ?instance.staffName,
      'customerName': ?instance.customerName,
      'recipientPhone': ?instance.recipientPhone,
      'recipientAddress': ?instance.recipientAddress,
      'items': ?instance.items?.map((e) => e.toJson()).toList(),
      'subtotal': ?instance.subtotal,
      'discount': ?instance.discount,
      'tax': ?instance.tax,
      'total': ?instance.total,
      'paymentMethod': ?instance.paymentMethod,
      'note': ?instance.note,
    };
