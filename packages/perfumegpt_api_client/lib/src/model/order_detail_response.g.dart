// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderDetailResponseCWProxy {
  OrderDetailResponse id(String? id);

  OrderDetailResponse variantId(String? variantId);

  OrderDetailResponse variantName(String variantName);

  OrderDetailResponse imageUrl(String? imageUrl);

  OrderDetailResponse quantity(int? quantity);

  OrderDetailResponse unitPrice(num? unitPrice);

  OrderDetailResponse campaignDiscount(num? campaignDiscount);

  OrderDetailResponse campaignPrice(num? campaignPrice);

  OrderDetailResponse voucherDiscount(num? voucherDiscount);

  OrderDetailResponse itemTotal(num? itemTotal);

  OrderDetailResponse refunablePrice(num? refunablePrice);

  OrderDetailResponse total(num? total);

  OrderDetailResponse reservedBatches(
    List<ReservedBatchResponse> reservedBatches,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderDetailResponse call({
    String? id,
    String? variantId,
    String variantName,
    String? imageUrl,
    int? quantity,
    num? unitPrice,
    num? campaignDiscount,
    num? campaignPrice,
    num? voucherDiscount,
    num? itemTotal,
    num? refunablePrice,
    num? total,
    List<ReservedBatchResponse> reservedBatches,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderDetailResponse.copyWith(...)` or call `instanceOfOrderDetailResponse.copyWith.fieldName(value)` for a single field.
class _$OrderDetailResponseCWProxyImpl implements _$OrderDetailResponseCWProxy {
  const _$OrderDetailResponseCWProxyImpl(this._value);

  final OrderDetailResponse _value;

  @override
  OrderDetailResponse id(String? id) => call(id: id);

  @override
  OrderDetailResponse variantId(String? variantId) =>
      call(variantId: variantId);

  @override
  OrderDetailResponse variantName(String variantName) =>
      call(variantName: variantName);

  @override
  OrderDetailResponse imageUrl(String? imageUrl) => call(imageUrl: imageUrl);

  @override
  OrderDetailResponse quantity(int? quantity) => call(quantity: quantity);

  @override
  OrderDetailResponse unitPrice(num? unitPrice) => call(unitPrice: unitPrice);

  @override
  OrderDetailResponse campaignDiscount(num? campaignDiscount) =>
      call(campaignDiscount: campaignDiscount);

  @override
  OrderDetailResponse campaignPrice(num? campaignPrice) =>
      call(campaignPrice: campaignPrice);

  @override
  OrderDetailResponse voucherDiscount(num? voucherDiscount) =>
      call(voucherDiscount: voucherDiscount);

  @override
  OrderDetailResponse itemTotal(num? itemTotal) => call(itemTotal: itemTotal);

  @override
  OrderDetailResponse refunablePrice(num? refunablePrice) =>
      call(refunablePrice: refunablePrice);

  @override
  OrderDetailResponse total(num? total) => call(total: total);

  @override
  OrderDetailResponse reservedBatches(
    List<ReservedBatchResponse> reservedBatches,
  ) => call(reservedBatches: reservedBatches);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderDetailResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variantName = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? unitPrice = const $CopyWithPlaceholder(),
    Object? campaignDiscount = const $CopyWithPlaceholder(),
    Object? campaignPrice = const $CopyWithPlaceholder(),
    Object? voucherDiscount = const $CopyWithPlaceholder(),
    Object? itemTotal = const $CopyWithPlaceholder(),
    Object? refunablePrice = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
    Object? reservedBatches = const $CopyWithPlaceholder(),
  }) {
    return OrderDetailResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      variantName:
          variantName == const $CopyWithPlaceholder() || variantName == null
          ? _value.variantName
          // ignore: cast_nullable_to_non_nullable
          : variantName as String,
      imageUrl: imageUrl == const $CopyWithPlaceholder()
          ? _value.imageUrl
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String?,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
      unitPrice: unitPrice == const $CopyWithPlaceholder()
          ? _value.unitPrice
          // ignore: cast_nullable_to_non_nullable
          : unitPrice as num?,
      campaignDiscount: campaignDiscount == const $CopyWithPlaceholder()
          ? _value.campaignDiscount
          // ignore: cast_nullable_to_non_nullable
          : campaignDiscount as num?,
      campaignPrice: campaignPrice == const $CopyWithPlaceholder()
          ? _value.campaignPrice
          // ignore: cast_nullable_to_non_nullable
          : campaignPrice as num?,
      voucherDiscount: voucherDiscount == const $CopyWithPlaceholder()
          ? _value.voucherDiscount
          // ignore: cast_nullable_to_non_nullable
          : voucherDiscount as num?,
      itemTotal: itemTotal == const $CopyWithPlaceholder()
          ? _value.itemTotal
          // ignore: cast_nullable_to_non_nullable
          : itemTotal as num?,
      refunablePrice: refunablePrice == const $CopyWithPlaceholder()
          ? _value.refunablePrice
          // ignore: cast_nullable_to_non_nullable
          : refunablePrice as num?,
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as num?,
      reservedBatches:
          reservedBatches == const $CopyWithPlaceholder() ||
              reservedBatches == null
          ? _value.reservedBatches
          // ignore: cast_nullable_to_non_nullable
          : reservedBatches as List<ReservedBatchResponse>,
    );
  }
}

extension $OrderDetailResponseCopyWith on OrderDetailResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderDetailResponse.copyWith(...)` or `instanceOfOrderDetailResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderDetailResponseCWProxy get copyWith =>
      _$OrderDetailResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailResponse _$OrderDetailResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('OrderDetailResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['variantName', 'reservedBatches']);
      final val = OrderDetailResponse(
        id: $checkedConvert('id', (v) => v as String?),
        variantId: $checkedConvert('variantId', (v) => v as String?),
        variantName: $checkedConvert('variantName', (v) => v as String),
        imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
        quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
        unitPrice: $checkedConvert('unitPrice', (v) => v as num?),
        campaignDiscount: $checkedConvert('campaignDiscount', (v) => v as num?),
        campaignPrice: $checkedConvert('campaignPrice', (v) => v as num?),
        voucherDiscount: $checkedConvert('voucherDiscount', (v) => v as num?),
        itemTotal: $checkedConvert('itemTotal', (v) => v as num?),
        refunablePrice: $checkedConvert('refunablePrice', (v) => v as num?),
        total: $checkedConvert('total', (v) => v as num?),
        reservedBatches: $checkedConvert(
          'reservedBatches',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    ReservedBatchResponse.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$OrderDetailResponseToJson(
  OrderDetailResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'variantId': ?instance.variantId,
  'variantName': instance.variantName,
  'imageUrl': ?instance.imageUrl,
  'quantity': ?instance.quantity,
  'unitPrice': ?instance.unitPrice,
  'campaignDiscount': ?instance.campaignDiscount,
  'campaignPrice': ?instance.campaignPrice,
  'voucherDiscount': ?instance.voucherDiscount,
  'itemTotal': ?instance.itemTotal,
  'refunablePrice': ?instance.refunablePrice,
  'total': ?instance.total,
  'reservedBatches': instance.reservedBatches.map((e) => e.toJson()).toList(),
};
