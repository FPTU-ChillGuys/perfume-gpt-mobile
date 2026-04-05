// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_info_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShippingInfoListItem extends ShippingInfoListItem {
  @override
  final String? id;
  @override
  final String? orderId;
  @override
  final CarrierName? carrierName;
  @override
  final String? trackingNumber;
  @override
  final num? shippingFee;
  @override
  final ShippingType? type;
  @override
  final ShippingStatus? status;
  @override
  final DateTime? leadTime;
  @override
  final DateTime? shippedDate;

  factory _$ShippingInfoListItem([
    void Function(ShippingInfoListItemBuilder)? updates,
  ]) => (ShippingInfoListItemBuilder()..update(updates))._build();

  _$ShippingInfoListItem._({
    this.id,
    this.orderId,
    this.carrierName,
    this.trackingNumber,
    this.shippingFee,
    this.type,
    this.status,
    this.leadTime,
    this.shippedDate,
  }) : super._();
  @override
  ShippingInfoListItem rebuild(
    void Function(ShippingInfoListItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ShippingInfoListItemBuilder toBuilder() =>
      ShippingInfoListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShippingInfoListItem &&
        id == other.id &&
        orderId == other.orderId &&
        carrierName == other.carrierName &&
        trackingNumber == other.trackingNumber &&
        shippingFee == other.shippingFee &&
        type == other.type &&
        status == other.status &&
        leadTime == other.leadTime &&
        shippedDate == other.shippedDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, carrierName.hashCode);
    _$hash = $jc(_$hash, trackingNumber.hashCode);
    _$hash = $jc(_$hash, shippingFee.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, leadTime.hashCode);
    _$hash = $jc(_$hash, shippedDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShippingInfoListItem')
          ..add('id', id)
          ..add('orderId', orderId)
          ..add('carrierName', carrierName)
          ..add('trackingNumber', trackingNumber)
          ..add('shippingFee', shippingFee)
          ..add('type', type)
          ..add('status', status)
          ..add('leadTime', leadTime)
          ..add('shippedDate', shippedDate))
        .toString();
  }
}

class ShippingInfoListItemBuilder
    implements Builder<ShippingInfoListItem, ShippingInfoListItemBuilder> {
  _$ShippingInfoListItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

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

  ShippingType? _type;
  ShippingType? get type => _$this._type;
  set type(ShippingType? type) => _$this._type = type;

  ShippingStatus? _status;
  ShippingStatus? get status => _$this._status;
  set status(ShippingStatus? status) => _$this._status = status;

  DateTime? _leadTime;
  DateTime? get leadTime => _$this._leadTime;
  set leadTime(DateTime? leadTime) => _$this._leadTime = leadTime;

  DateTime? _shippedDate;
  DateTime? get shippedDate => _$this._shippedDate;
  set shippedDate(DateTime? shippedDate) => _$this._shippedDate = shippedDate;

  ShippingInfoListItemBuilder() {
    ShippingInfoListItem._defaults(this);
  }

  ShippingInfoListItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderId = $v.orderId;
      _carrierName = $v.carrierName;
      _trackingNumber = $v.trackingNumber;
      _shippingFee = $v.shippingFee;
      _type = $v.type;
      _status = $v.status;
      _leadTime = $v.leadTime;
      _shippedDate = $v.shippedDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShippingInfoListItem other) {
    _$v = other as _$ShippingInfoListItem;
  }

  @override
  void update(void Function(ShippingInfoListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShippingInfoListItem build() => _build();

  _$ShippingInfoListItem _build() {
    final _$result =
        _$v ??
        _$ShippingInfoListItem._(
          id: id,
          orderId: orderId,
          carrierName: carrierName,
          trackingNumber: trackingNumber,
          shippingFee: shippingFee,
          type: type,
          status: status,
          leadTime: leadTime,
          shippedDate: shippedDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
