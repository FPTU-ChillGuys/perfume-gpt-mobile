// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_campaign_voucher_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCampaignVoucherRequest extends CreateCampaignVoucherRequest {
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

  factory _$CreateCampaignVoucherRequest([
    void Function(CreateCampaignVoucherRequestBuilder)? updates,
  ]) => (CreateCampaignVoucherRequestBuilder()..update(updates))._build();

  _$CreateCampaignVoucherRequest._({
    required this.code,
    this.discountValue,
    this.targetItemType,
    this.discountType,
    this.applyType,
  }) : super._();
  @override
  CreateCampaignVoucherRequest rebuild(
    void Function(CreateCampaignVoucherRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateCampaignVoucherRequestBuilder toBuilder() =>
      CreateCampaignVoucherRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCampaignVoucherRequest &&
        code == other.code &&
        discountValue == other.discountValue &&
        targetItemType == other.targetItemType &&
        discountType == other.discountType &&
        applyType == other.applyType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    return (newBuiltValueToStringHelper(r'CreateCampaignVoucherRequest')
          ..add('code', code)
          ..add('discountValue', discountValue)
          ..add('targetItemType', targetItemType)
          ..add('discountType', discountType)
          ..add('applyType', applyType))
        .toString();
  }
}

class CreateCampaignVoucherRequestBuilder
    implements
        Builder<
          CreateCampaignVoucherRequest,
          CreateCampaignVoucherRequestBuilder
        > {
  _$CreateCampaignVoucherRequest? _$v;

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

  CreateCampaignVoucherRequestBuilder() {
    CreateCampaignVoucherRequest._defaults(this);
  }

  CreateCampaignVoucherRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(CreateCampaignVoucherRequest other) {
    _$v = other as _$CreateCampaignVoucherRequest;
  }

  @override
  void update(void Function(CreateCampaignVoucherRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCampaignVoucherRequest build() => _build();

  _$CreateCampaignVoucherRequest _build() {
    final _$result =
        _$v ??
        _$CreateCampaignVoucherRequest._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'CreateCampaignVoucherRequest',
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
