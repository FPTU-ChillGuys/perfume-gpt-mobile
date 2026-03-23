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

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ShippingInfoResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ShippingInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ShippingInfoResponse call({
    String? id,
    CarrierName? carrierName,
    String? trackingNumber,
    num? shippingFee,
    int? status,
    int? leadTime,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfShippingInfoResponse.copyWith(...)` or call `instanceOfShippingInfoResponse.copyWith.fieldName(value)` for a single field.
class _$ShippingInfoResponseCWProxyImpl
    implements _$ShippingInfoResponseCWProxy {
  const _$ShippingInfoResponseCWProxyImpl(this._value);

  final ShippingInfoResponse _value;

  @override
  ShippingInfoResponse id(String? id) => call(id: id);

  @override
  ShippingInfoResponse carrierName(CarrierName? carrierName) =>
      call(carrierName: carrierName);

  @override
  ShippingInfoResponse trackingNumber(String? trackingNumber) =>
      call(trackingNumber: trackingNumber);

  @override
  ShippingInfoResponse shippingFee(num? shippingFee) =>
      call(shippingFee: shippingFee);

  @override
  ShippingInfoResponse status(int? status) => call(status: status);

  @override
  ShippingInfoResponse leadTime(int? leadTime) => call(leadTime: leadTime);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ShippingInfoResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ShippingInfoResponse(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfShippingInfoResponse.copyWith(...)` or `instanceOfShippingInfoResponse.copyWith.fieldName(...)`.
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
