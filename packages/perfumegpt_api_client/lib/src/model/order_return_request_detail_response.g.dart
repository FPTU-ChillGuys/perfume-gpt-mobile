// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_return_request_detail_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderReturnRequestDetailResponseCWProxy {
  OrderReturnRequestDetailResponse id(String? id);

  OrderReturnRequestDetailResponse orderDetailId(String? orderDetailId);

  OrderReturnRequestDetailResponse variantId(String? variantId);

  OrderReturnRequestDetailResponse requestedQuantity(int? requestedQuantity);

  OrderReturnRequestDetailResponse unitPrice(num? unitPrice);

  OrderReturnRequestDetailResponse refundableAmount(num? refundableAmount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderReturnRequestDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderReturnRequestDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderReturnRequestDetailResponse call({
    String? id,
    String? orderDetailId,
    String? variantId,
    int? requestedQuantity,
    num? unitPrice,
    num? refundableAmount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderReturnRequestDetailResponse.copyWith(...)` or call `instanceOfOrderReturnRequestDetailResponse.copyWith.fieldName(value)` for a single field.
class _$OrderReturnRequestDetailResponseCWProxyImpl
    implements _$OrderReturnRequestDetailResponseCWProxy {
  const _$OrderReturnRequestDetailResponseCWProxyImpl(this._value);

  final OrderReturnRequestDetailResponse _value;

  @override
  OrderReturnRequestDetailResponse id(String? id) => call(id: id);

  @override
  OrderReturnRequestDetailResponse orderDetailId(String? orderDetailId) =>
      call(orderDetailId: orderDetailId);

  @override
  OrderReturnRequestDetailResponse variantId(String? variantId) =>
      call(variantId: variantId);

  @override
  OrderReturnRequestDetailResponse requestedQuantity(int? requestedQuantity) =>
      call(requestedQuantity: requestedQuantity);

  @override
  OrderReturnRequestDetailResponse unitPrice(num? unitPrice) =>
      call(unitPrice: unitPrice);

  @override
  OrderReturnRequestDetailResponse refundableAmount(num? refundableAmount) =>
      call(refundableAmount: refundableAmount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderReturnRequestDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderReturnRequestDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderReturnRequestDetailResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? orderDetailId = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? requestedQuantity = const $CopyWithPlaceholder(),
    Object? unitPrice = const $CopyWithPlaceholder(),
    Object? refundableAmount = const $CopyWithPlaceholder(),
  }) {
    return OrderReturnRequestDetailResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      orderDetailId: orderDetailId == const $CopyWithPlaceholder()
          ? _value.orderDetailId
          // ignore: cast_nullable_to_non_nullable
          : orderDetailId as String?,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      requestedQuantity: requestedQuantity == const $CopyWithPlaceholder()
          ? _value.requestedQuantity
          // ignore: cast_nullable_to_non_nullable
          : requestedQuantity as int?,
      unitPrice: unitPrice == const $CopyWithPlaceholder()
          ? _value.unitPrice
          // ignore: cast_nullable_to_non_nullable
          : unitPrice as num?,
      refundableAmount: refundableAmount == const $CopyWithPlaceholder()
          ? _value.refundableAmount
          // ignore: cast_nullable_to_non_nullable
          : refundableAmount as num?,
    );
  }
}

extension $OrderReturnRequestDetailResponseCopyWith
    on OrderReturnRequestDetailResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderReturnRequestDetailResponse.copyWith(...)` or `instanceOfOrderReturnRequestDetailResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderReturnRequestDetailResponseCWProxy get copyWith =>
      _$OrderReturnRequestDetailResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderReturnRequestDetailResponse _$OrderReturnRequestDetailResponseFromJson(
  Map<String, dynamic> json,
) =>
    $checkedCreate('OrderReturnRequestDetailResponse', json, ($checkedConvert) {
      final val = OrderReturnRequestDetailResponse(
        id: $checkedConvert('id', (v) => v as String?),
        orderDetailId: $checkedConvert('orderDetailId', (v) => v as String?),
        variantId: $checkedConvert('variantId', (v) => v as String?),
        requestedQuantity: $checkedConvert(
          'requestedQuantity',
          (v) => (v as num?)?.toInt(),
        ),
        unitPrice: $checkedConvert('unitPrice', (v) => v as num?),
        refundableAmount: $checkedConvert('refundableAmount', (v) => v as num?),
      );
      return val;
    });

Map<String, dynamic> _$OrderReturnRequestDetailResponseToJson(
  OrderReturnRequestDetailResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'orderDetailId': ?instance.orderDetailId,
  'variantId': ?instance.variantId,
  'requestedQuantity': ?instance.requestedQuantity,
  'unitPrice': ?instance.unitPrice,
  'refundableAmount': ?instance.refundableAmount,
};
