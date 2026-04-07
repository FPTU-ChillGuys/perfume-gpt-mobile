// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_shipping_info_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReturnShippingInfoResponseCWProxy {
  ReturnShippingInfoResponse id(String? id);

  ReturnShippingInfoResponse carrierName(CarrierName? carrierName);

  ReturnShippingInfoResponse trackingNumber(String? trackingNumber);

  ReturnShippingInfoResponse type(ShippingType? type);

  ReturnShippingInfoResponse shippingFee(num? shippingFee);

  ReturnShippingInfoResponse status(ShippingStatus? status);

  ReturnShippingInfoResponse estimatedDeliveryDate(
    DateTime? estimatedDeliveryDate,
  );

  ReturnShippingInfoResponse shippedDate(DateTime? shippedDate);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReturnShippingInfoResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReturnShippingInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ReturnShippingInfoResponse call({
    String? id,
    CarrierName? carrierName,
    String? trackingNumber,
    ShippingType? type,
    num? shippingFee,
    ShippingStatus? status,
    DateTime? estimatedDeliveryDate,
    DateTime? shippedDate,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReturnShippingInfoResponse.copyWith(...)` or call `instanceOfReturnShippingInfoResponse.copyWith.fieldName(value)` for a single field.
class _$ReturnShippingInfoResponseCWProxyImpl
    implements _$ReturnShippingInfoResponseCWProxy {
  const _$ReturnShippingInfoResponseCWProxyImpl(this._value);

  final ReturnShippingInfoResponse _value;

  @override
  ReturnShippingInfoResponse id(String? id) => call(id: id);

  @override
  ReturnShippingInfoResponse carrierName(CarrierName? carrierName) =>
      call(carrierName: carrierName);

  @override
  ReturnShippingInfoResponse trackingNumber(String? trackingNumber) =>
      call(trackingNumber: trackingNumber);

  @override
  ReturnShippingInfoResponse type(ShippingType? type) => call(type: type);

  @override
  ReturnShippingInfoResponse shippingFee(num? shippingFee) =>
      call(shippingFee: shippingFee);

  @override
  ReturnShippingInfoResponse status(ShippingStatus? status) =>
      call(status: status);

  @override
  ReturnShippingInfoResponse estimatedDeliveryDate(
    DateTime? estimatedDeliveryDate,
  ) => call(estimatedDeliveryDate: estimatedDeliveryDate);

  @override
  ReturnShippingInfoResponse shippedDate(DateTime? shippedDate) =>
      call(shippedDate: shippedDate);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReturnShippingInfoResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReturnShippingInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ReturnShippingInfoResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? carrierName = const $CopyWithPlaceholder(),
    Object? trackingNumber = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? shippingFee = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? estimatedDeliveryDate = const $CopyWithPlaceholder(),
    Object? shippedDate = const $CopyWithPlaceholder(),
  }) {
    return ReturnShippingInfoResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      carrierName: carrierName == const $CopyWithPlaceholder()
          ? _value.carrierName
          // ignore: cast_nullable_to_non_nullable
          : carrierName as CarrierName?,
      trackingNumber: trackingNumber == const $CopyWithPlaceholder()
          ? _value.trackingNumber
          // ignore: cast_nullable_to_non_nullable
          : trackingNumber as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as ShippingType?,
      shippingFee: shippingFee == const $CopyWithPlaceholder()
          ? _value.shippingFee
          // ignore: cast_nullable_to_non_nullable
          : shippingFee as num?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ShippingStatus?,
      estimatedDeliveryDate:
          estimatedDeliveryDate == const $CopyWithPlaceholder()
          ? _value.estimatedDeliveryDate
          // ignore: cast_nullable_to_non_nullable
          : estimatedDeliveryDate as DateTime?,
      shippedDate: shippedDate == const $CopyWithPlaceholder()
          ? _value.shippedDate
          // ignore: cast_nullable_to_non_nullable
          : shippedDate as DateTime?,
    );
  }
}

extension $ReturnShippingInfoResponseCopyWith on ReturnShippingInfoResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReturnShippingInfoResponse.copyWith(...)` or `instanceOfReturnShippingInfoResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReturnShippingInfoResponseCWProxy get copyWith =>
      _$ReturnShippingInfoResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnShippingInfoResponse _$ReturnShippingInfoResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ReturnShippingInfoResponse', json, ($checkedConvert) {
  final val = ReturnShippingInfoResponse(
    id: $checkedConvert('id', (v) => v as String?),
    carrierName: $checkedConvert(
      'carrierName',
      (v) => $enumDecodeNullable(_$CarrierNameEnumMap, v),
    ),
    trackingNumber: $checkedConvert('trackingNumber', (v) => v as String?),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(_$ShippingTypeEnumMap, v),
    ),
    shippingFee: $checkedConvert('shippingFee', (v) => v as num?),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$ShippingStatusEnumMap, v),
    ),
    estimatedDeliveryDate: $checkedConvert(
      'estimatedDeliveryDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    shippedDate: $checkedConvert(
      'shippedDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$ReturnShippingInfoResponseToJson(
  ReturnShippingInfoResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'carrierName': ?_$CarrierNameEnumMap[instance.carrierName],
  'trackingNumber': ?instance.trackingNumber,
  'type': ?_$ShippingTypeEnumMap[instance.type],
  'shippingFee': ?instance.shippingFee,
  'status': ?_$ShippingStatusEnumMap[instance.status],
  'estimatedDeliveryDate': ?instance.estimatedDeliveryDate?.toIso8601String(),
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
