// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_info_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShippingInfoResponse extends ShippingInfoResponse {
  @override
  final String? id;
  @override
  final CarrierName? carrierName;
  @override
  final String? trackingNumber;
  @override
  final num? shippingFee;
  @override
  final ShippingStatus? status;
  @override
  final DateTime? estimatedDeliveryDate;
  @override
  final DateTime? shippedDate;

  factory _$ShippingInfoResponse([
    void Function(ShippingInfoResponseBuilder)? updates,
  ]) => (ShippingInfoResponseBuilder()..update(updates))._build();

  _$ShippingInfoResponse._({
    this.id,
    this.carrierName,
    this.trackingNumber,
    this.shippingFee,
    this.status,
    this.estimatedDeliveryDate,
    this.shippedDate,
  }) : super._();
  @override
  ShippingInfoResponse rebuild(
    void Function(ShippingInfoResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ShippingInfoResponseBuilder toBuilder() =>
      ShippingInfoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShippingInfoResponse &&
        id == other.id &&
        carrierName == other.carrierName &&
        trackingNumber == other.trackingNumber &&
        shippingFee == other.shippingFee &&
        status == other.status &&
        estimatedDeliveryDate == other.estimatedDeliveryDate &&
        shippedDate == other.shippedDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, carrierName.hashCode);
    _$hash = $jc(_$hash, trackingNumber.hashCode);
    _$hash = $jc(_$hash, shippingFee.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, estimatedDeliveryDate.hashCode);
    _$hash = $jc(_$hash, shippedDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShippingInfoResponse')
          ..add('id', id)
          ..add('carrierName', carrierName)
          ..add('trackingNumber', trackingNumber)
          ..add('shippingFee', shippingFee)
          ..add('status', status)
          ..add('estimatedDeliveryDate', estimatedDeliveryDate)
          ..add('shippedDate', shippedDate))
        .toString();
  }
}

class ShippingInfoResponseBuilder
    implements Builder<ShippingInfoResponse, ShippingInfoResponseBuilder> {
  _$ShippingInfoResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  CarrierName? _carrierName;
  CarrierName? get carrierName => _$this._carrierName;
  set carrierName(CarrierName? carrierName) =>
      _$this._carrierName = carrierName;

  String? _trackingNumber;
  String? get trackingNumber => _$this._trackingNumber;
  set trackingNumber(String? trackingNumber) =>
      _$this._trackingNumber = trackingNumber;

  num? _shippingFee;
  num? get shippingFee => _$this._shippingFee;
  set shippingFee(num? shippingFee) => _$this._shippingFee = shippingFee;

  ShippingStatus? _status;
  ShippingStatus? get status => _$this._status;
  set status(ShippingStatus? status) => _$this._status = status;

  DateTime? _estimatedDeliveryDate;
  DateTime? get estimatedDeliveryDate => _$this._estimatedDeliveryDate;
  set estimatedDeliveryDate(DateTime? estimatedDeliveryDate) =>
      _$this._estimatedDeliveryDate = estimatedDeliveryDate;

  DateTime? _shippedDate;
  DateTime? get shippedDate => _$this._shippedDate;
  set shippedDate(DateTime? shippedDate) => _$this._shippedDate = shippedDate;

  ShippingInfoResponseBuilder() {
    ShippingInfoResponse._defaults(this);
  }

  ShippingInfoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _carrierName = $v.carrierName;
      _trackingNumber = $v.trackingNumber;
      _shippingFee = $v.shippingFee;
      _status = $v.status;
      _estimatedDeliveryDate = $v.estimatedDeliveryDate;
      _shippedDate = $v.shippedDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShippingInfoResponse other) {
    _$v = other as _$ShippingInfoResponse;
  }

  @override
  void update(void Function(ShippingInfoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShippingInfoResponse build() => _build();

  _$ShippingInfoResponse _build() {
    final _$result =
        _$v ??
        _$ShippingInfoResponse._(
          id: id,
          carrierName: carrierName,
          trackingNumber: trackingNumber,
          shippingFee: shippingFee,
          status: status,
          estimatedDeliveryDate: estimatedDeliveryDate,
          shippedDate: shippedDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
