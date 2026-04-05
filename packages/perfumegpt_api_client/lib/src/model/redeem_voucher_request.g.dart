// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_voucher_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RedeemVoucherRequest extends RedeemVoucherRequest {
  @override
  final String? voucherId;
  @override
  final String? receiverEmailOrPhone;

  factory _$RedeemVoucherRequest([
    void Function(RedeemVoucherRequestBuilder)? updates,
  ]) => (RedeemVoucherRequestBuilder()..update(updates))._build();

  _$RedeemVoucherRequest._({this.voucherId, this.receiverEmailOrPhone})
    : super._();
  @override
  RedeemVoucherRequest rebuild(
    void Function(RedeemVoucherRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RedeemVoucherRequestBuilder toBuilder() =>
      RedeemVoucherRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RedeemVoucherRequest &&
        voucherId == other.voucherId &&
        receiverEmailOrPhone == other.receiverEmailOrPhone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, voucherId.hashCode);
    _$hash = $jc(_$hash, receiverEmailOrPhone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RedeemVoucherRequest')
          ..add('voucherId', voucherId)
          ..add('receiverEmailOrPhone', receiverEmailOrPhone))
        .toString();
  }
}

class RedeemVoucherRequestBuilder
    implements Builder<RedeemVoucherRequest, RedeemVoucherRequestBuilder> {
  _$RedeemVoucherRequest? _$v;

  String? _voucherId;
  String? get voucherId => _$this._voucherId;
  set voucherId(String? voucherId) => _$this._voucherId = voucherId;

  String? _receiverEmailOrPhone;
  String? get receiverEmailOrPhone => _$this._receiverEmailOrPhone;
  set receiverEmailOrPhone(String? receiverEmailOrPhone) =>
      _$this._receiverEmailOrPhone = receiverEmailOrPhone;

  RedeemVoucherRequestBuilder() {
    RedeemVoucherRequest._defaults(this);
  }

  RedeemVoucherRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _voucherId = $v.voucherId;
      _receiverEmailOrPhone = $v.receiverEmailOrPhone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RedeemVoucherRequest other) {
    _$v = other as _$RedeemVoucherRequest;
  }

  @override
  void update(void Function(RedeemVoucherRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RedeemVoucherRequest build() => _build();

  _$RedeemVoucherRequest _build() {
    final _$result =
        _$v ??
        _$RedeemVoucherRequest._(
          voucherId: voucherId,
          receiverEmailOrPhone: receiverEmailOrPhone,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
