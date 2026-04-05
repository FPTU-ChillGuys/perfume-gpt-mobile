// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_shipping_info_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReturnShippingInfoResponse extends ReturnShippingInfoResponse {
  @override
  final String? id;
  @override
  final CarrierName? carrierName;
  @override
  final String? trackingNumber;
  @override
  final ShippingType? type;
  @override
  final num? shippingFee;
  @override
  final ShippingStatus? status;
  @override
  final DateTime? estimatedDeliveryDate;
  @override
  final DateTime? shippedDate;

  factory _$ReturnShippingInfoResponse([
    void Function(ReturnShippingInfoResponseBuilder)? updates,
  ]) => (ReturnShippingInfoResponseBuilder()..update(updates))._build();

  _$ReturnShippingInfoResponse._({
    this.id,
    this.carrierName,
    this.trackingNumber,
    this.type,
    this.shippingFee,
    this.status,
    this.estimatedDeliveryDate,
    this.shippedDate,
  }) : super._();
  @override
  ReturnShippingInfoResponse rebuild(
    void Function(ReturnShippingInfoResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReturnShippingInfoResponseBuilder toBuilder() =>
      ReturnShippingInfoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReturnShippingInfoResponse &&
        id == other.id &&
        carrierName == other.carrierName &&
        trackingNumber == other.trackingNumber &&
        type == other.type &&
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
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, shippingFee.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, estimatedDeliveryDate.hashCode);
    _$hash = $jc(_$hash, shippedDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReturnShippingInfoResponse')
          ..add('id', id)
          ..add('carrierName', carrierName)
          ..add('trackingNumber', trackingNumber)
          ..add('type', type)
          ..add('shippingFee', shippingFee)
          ..add('status', status)
          ..add('estimatedDeliveryDate', estimatedDeliveryDate)
          ..add('shippedDate', shippedDate))
        .toString();
  }
}

class ReturnShippingInfoResponseBuilder
    implements
        Builder<ReturnShippingInfoResponse, ReturnShippingInfoResponseBuilder> {
  _$ReturnShippingInfoResponse? _$v;

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

  ShippingType? _type;
  ShippingType? get type => _$this._type;
  set type(ShippingType? type) => _$this._type = type;

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

  ReturnShippingInfoResponseBuilder() {
    ReturnShippingInfoResponse._defaults(this);
  }

  ReturnShippingInfoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _carrierName = $v.carrierName;
      _trackingNumber = $v.trackingNumber;
      _type = $v.type;
      _shippingFee = $v.shippingFee;
      _status = $v.status;
      _estimatedDeliveryDate = $v.estimatedDeliveryDate;
      _shippedDate = $v.shippedDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReturnShippingInfoResponse other) {
    _$v = other as _$ReturnShippingInfoResponse;
  }

  @override
  void update(void Function(ReturnShippingInfoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReturnShippingInfoResponse build() => _build();

  _$ReturnShippingInfoResponse _build() {
    final _$result =
        _$v ??
        _$ReturnShippingInfoResponse._(
          id: id,
          carrierName: carrierName,
          trackingNumber: trackingNumber,
          type: type,
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
