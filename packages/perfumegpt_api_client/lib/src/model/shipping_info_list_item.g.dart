// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_info_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ShippingInfoListItemCWProxy {
  ShippingInfoListItem id(String? id);

  ShippingInfoListItem orderId(String? orderId);

  ShippingInfoListItem carrierName(CarrierName? carrierName);

  ShippingInfoListItem trackingNumber(String? trackingNumber);

  ShippingInfoListItem shippingFee(num? shippingFee);

  ShippingInfoListItem type(ShippingType? type);

  ShippingInfoListItem status(ShippingStatus? status);

  ShippingInfoListItem leadTime(DateTime? leadTime);

  ShippingInfoListItem shippedDate(DateTime? shippedDate);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ShippingInfoListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ShippingInfoListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ShippingInfoListItem call({
    String? id,
    String? orderId,
    CarrierName? carrierName,
    String? trackingNumber,
    num? shippingFee,
    ShippingType? type,
    ShippingStatus? status,
    DateTime? leadTime,
    DateTime? shippedDate,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfShippingInfoListItem.copyWith(...)` or call `instanceOfShippingInfoListItem.copyWith.fieldName(value)` for a single field.
class _$ShippingInfoListItemCWProxyImpl
    implements _$ShippingInfoListItemCWProxy {
  const _$ShippingInfoListItemCWProxyImpl(this._value);

  final ShippingInfoListItem _value;

  @override
  ShippingInfoListItem id(String? id) => call(id: id);

  @override
  ShippingInfoListItem orderId(String? orderId) => call(orderId: orderId);

  @override
  ShippingInfoListItem carrierName(CarrierName? carrierName) =>
      call(carrierName: carrierName);

  @override
  ShippingInfoListItem trackingNumber(String? trackingNumber) =>
      call(trackingNumber: trackingNumber);

  @override
  ShippingInfoListItem shippingFee(num? shippingFee) =>
      call(shippingFee: shippingFee);

  @override
  ShippingInfoListItem type(ShippingType? type) => call(type: type);

  @override
  ShippingInfoListItem status(ShippingStatus? status) => call(status: status);

  @override
  ShippingInfoListItem leadTime(DateTime? leadTime) => call(leadTime: leadTime);

  @override
  ShippingInfoListItem shippedDate(DateTime? shippedDate) =>
      call(shippedDate: shippedDate);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ShippingInfoListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ShippingInfoListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ShippingInfoListItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? carrierName = const $CopyWithPlaceholder(),
    Object? trackingNumber = const $CopyWithPlaceholder(),
    Object? shippingFee = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? leadTime = const $CopyWithPlaceholder(),
    Object? shippedDate = const $CopyWithPlaceholder(),
  }) {
    return ShippingInfoListItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String?,
      carrierName: carrierName == const $CopyWithPlaceholder()
          ? _value.carrierName
          // ignore: cast_nullable_to_non_nullable
          : carrierName as CarrierName?,
      trackingNumber: trackingNumber == const $CopyWithPlaceholder()
          ? _value.trackingNumber
          // ignore: cast_nullable_to_non_nullable
          : trackingNumber as String?,
      shippingFee: shippingFee == const $CopyWithPlaceholder()
          ? _value.shippingFee
          // ignore: cast_nullable_to_non_nullable
          : shippingFee as num?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as ShippingType?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ShippingStatus?,
      leadTime: leadTime == const $CopyWithPlaceholder()
          ? _value.leadTime
          // ignore: cast_nullable_to_non_nullable
          : leadTime as DateTime?,
      shippedDate: shippedDate == const $CopyWithPlaceholder()
          ? _value.shippedDate
          // ignore: cast_nullable_to_non_nullable
          : shippedDate as DateTime?,
    );
  }
}

extension $ShippingInfoListItemCopyWith on ShippingInfoListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfShippingInfoListItem.copyWith(...)` or `instanceOfShippingInfoListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ShippingInfoListItemCWProxy get copyWith =>
      _$ShippingInfoListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingInfoListItem _$ShippingInfoListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ShippingInfoListItem', json, ($checkedConvert) {
  final val = ShippingInfoListItem(
    id: $checkedConvert('id', (v) => v as String?),
    orderId: $checkedConvert('orderId', (v) => v as String?),
    carrierName: $checkedConvert(
      'carrierName',
      (v) => $enumDecodeNullable(_$CarrierNameEnumMap, v),
    ),
    trackingNumber: $checkedConvert('trackingNumber', (v) => v as String?),
    shippingFee: $checkedConvert('shippingFee', (v) => v as num?),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(_$ShippingTypeEnumMap, v),
    ),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$ShippingStatusEnumMap, v),
    ),
    leadTime: $checkedConvert(
      'leadTime',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    shippedDate: $checkedConvert(
      'shippedDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$ShippingInfoListItemToJson(
  ShippingInfoListItem instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'orderId': ?instance.orderId,
  'carrierName': ?_$CarrierNameEnumMap[instance.carrierName],
  'trackingNumber': ?instance.trackingNumber,
  'shippingFee': ?instance.shippingFee,
  'type': ?_$ShippingTypeEnumMap[instance.type],
  'status': ?_$ShippingStatusEnumMap[instance.status],
  'leadTime': ?instance.leadTime?.toIso8601String(),
  'shippedDate': ?instance.shippedDate?.toIso8601String(),
};

const _$CarrierNameEnumMap = {CarrierName.GHN: 'GHN', CarrierName.GHTK: 'GHTK'};

const _$ShippingTypeEnumMap = {
  ShippingType.forward: 'Forward',
  ShippingType.return_: 'Return',
};

const _$ShippingStatusEnumMap = {
  ShippingStatus.unAssigned: 'UnAssigned',
  ShippingStatus.readyToPick: 'ReadyToPick',
  ShippingStatus.delivering: 'Delivering',
  ShippingStatus.delivered: 'Delivered',
  ShippingStatus.cancelled: 'Cancelled',
  ShippingStatus.returning: 'Returning',
  ShippingStatus.returned: 'Returned',
};
