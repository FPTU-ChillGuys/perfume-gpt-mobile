// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_info_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ShippingInfoResponseCWProxy {
  ShippingInfoResponse id(String? id);

  ShippingInfoResponse carrierName(CarrierName? carrierName);

  ShippingInfoResponse trackingNumber(String? trackingNumber);

  ShippingInfoResponse shippingFee(num? shippingFee);

  ShippingInfoResponse status(int? status);

  ShippingInfoResponse leadTime(int? leadTime);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ShippingInfoResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ShippingInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ShippingInfoResponse call({
    String? id,
    CarrierName? carrierName,
    String? trackingNumber,
    num? shippingFee,
    int? status,
    int? leadTime,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfShippingInfoResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfShippingInfoResponse.copyWith.fieldName(...)`
class _$ShippingInfoResponseCWProxyImpl
    implements _$ShippingInfoResponseCWProxy {
  const _$ShippingInfoResponseCWProxyImpl(this._value);

  final ShippingInfoResponse _value;

  @override
  ShippingInfoResponse id(String? id) => this(id: id);

  @override
  ShippingInfoResponse carrierName(CarrierName? carrierName) =>
      this(carrierName: carrierName);

  @override
  ShippingInfoResponse trackingNumber(String? trackingNumber) =>
      this(trackingNumber: trackingNumber);

  @override
  ShippingInfoResponse shippingFee(num? shippingFee) =>
      this(shippingFee: shippingFee);

  @override
  ShippingInfoResponse status(int? status) => this(status: status);

  @override
  ShippingInfoResponse leadTime(int? leadTime) => this(leadTime: leadTime);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ShippingInfoResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ShippingInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ShippingInfoResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? carrierName = const $CopyWithPlaceholder(),
    Object? trackingNumber = const $CopyWithPlaceholder(),
    Object? shippingFee = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? leadTime = const $CopyWithPlaceholder(),
  }) {
    return ShippingInfoResponse(
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
      shippingFee: shippingFee == const $CopyWithPlaceholder()
          ? _value.shippingFee
          // ignore: cast_nullable_to_non_nullable
          : shippingFee as num?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as int?,
      leadTime: leadTime == const $CopyWithPlaceholder()
          ? _value.leadTime
          // ignore: cast_nullable_to_non_nullable
          : leadTime as int?,
    );
  }
}

extension $ShippingInfoResponseCopyWith on ShippingInfoResponse {
  /// Returns a callable class that can be used as follows: `instanceOfShippingInfoResponse.copyWith(...)` or like so:`instanceOfShippingInfoResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ShippingInfoResponseCWProxy get copyWith =>
      _$ShippingInfoResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingInfoResponse _$ShippingInfoResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ShippingInfoResponse', json, ($checkedConvert) {
  final val = ShippingInfoResponse(
    id: $checkedConvert('id', (v) => v as String?),
    carrierName: $checkedConvert(
      'carrierName',
      (v) => $enumDecodeNullable(_$CarrierNameEnumMap, v),
    ),
    trackingNumber: $checkedConvert('trackingNumber', (v) => v as String?),
    shippingFee: $checkedConvert('shippingFee', (v) => v as num?),
    status: $checkedConvert('status', (v) => (v as num?)?.toInt()),
    leadTime: $checkedConvert('leadTime', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$ShippingInfoResponseToJson(
  ShippingInfoResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'carrierName': ?_$CarrierNameEnumMap[instance.carrierName],
  'trackingNumber': ?instance.trackingNumber,
  'shippingFee': ?instance.shippingFee,
  'status': ?instance.status,
  'leadTime': ?instance.leadTime,
};

const _$CarrierNameEnumMap = {CarrierName.GHN: 'GHN', CarrierName.GHTK: 'GHTK'};
