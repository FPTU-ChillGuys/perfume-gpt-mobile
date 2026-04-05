// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_campaign_voucher_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCampaignVoucherRequest extends UpdateCampaignVoucherRequest {
  @override
  final String? id;
  @override
  final String code;
  @override
  final num? discountValue;
  @override
  final PromotionType? targetItemType;
  @override
  final DiscountType? discountType;
  @override
  final VoucherType? applyType;

  factory _$UpdateCampaignVoucherRequest([
    void Function(UpdateCampaignVoucherRequestBuilder)? updates,
  ]) => (UpdateCampaignVoucherRequestBuilder()..update(updates))._build();

  _$UpdateCampaignVoucherRequest._({
    this.id,
    required this.code,
    this.discountValue,
    this.targetItemType,
    this.discountType,
    this.applyType,
  }) : super._();
  @override
  UpdateCampaignVoucherRequest rebuild(
    void Function(UpdateCampaignVoucherRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateCampaignVoucherRequestBuilder toBuilder() =>
      UpdateCampaignVoucherRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCampaignVoucherRequest &&
        id == other.id &&
        code == other.code &&
        discountValue == other.discountValue &&
        targetItemType == other.targetItemType &&
        discountType == other.discountType &&
        applyType == other.applyType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, discountValue.hashCode);
    _$hash = $jc(_$hash, targetItemType.hashCode);
    _$hash = $jc(_$hash, discountType.hashCode);
    _$hash = $jc(_$hash, applyType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateCampaignVoucherRequest')
          ..add('id', id)
          ..add('code', code)
          ..add('discountValue', discountValue)
          ..add('targetItemType', targetItemType)
          ..add('discountType', discountType)
          ..add('applyType', applyType))
        .toString();
  }
}

class UpdateCampaignVoucherRequestBuilder
    implements
        Builder<
          UpdateCampaignVoucherRequest,
          UpdateCampaignVoucherRequestBuilder
        > {
  _$UpdateCampaignVoucherRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  num? _discountValue;
  num? get discountValue => _$this._discountValue;
  set discountValue(num? discountValue) =>
      _$this._discountValue = discountValue;

  PromotionType? _targetItemType;
  PromotionType? get targetItemType => _$this._targetItemType;
  set targetItemType(PromotionType? targetItemType) =>
      _$this._targetItemType = targetItemType;

  DiscountType? _discountType;
  DiscountType? get discountType => _$this._discountType;
  set discountType(DiscountType? discountType) =>
      _$this._discountType = discountType;

  VoucherType? _applyType;
  VoucherType? get applyType => _$this._applyType;
  set applyType(VoucherType? applyType) => _$this._applyType = applyType;

  UpdateCampaignVoucherRequestBuilder() {
    UpdateCampaignVoucherRequest._defaults(this);
  }

  UpdateCampaignVoucherRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _discountValue = $v.discountValue;
      _targetItemType = $v.targetItemType;
      _discountType = $v.discountType;
      _applyType = $v.applyType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCampaignVoucherRequest other) {
    _$v = other as _$UpdateCampaignVoucherRequest;
  }

  @override
  void update(void Function(UpdateCampaignVoucherRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCampaignVoucherRequest build() => _build();

  _$UpdateCampaignVoucherRequest _build() {
    final _$result =
        _$v ??
        _$UpdateCampaignVoucherRequest._(
          id: id,
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'UpdateCampaignVoucherRequest',
            'code',
          ),
          discountValue: discountValue,
          targetItemType: targetItemType,
          discountType: discountType,
          applyType: applyType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
