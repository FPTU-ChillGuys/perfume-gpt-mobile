// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VoucherResponse extends VoucherResponse {
  @override
  final String? id;
  @override
  final String code;
  @override
  final num? discountValue;
  @override
  final DiscountType? discountType;
  @override
  final String? campaignId;
  @override
  final VoucherType? applyType;
  @override
  final PromotionType? targetItemType;
  @override
  final int? requiredPoints;
  @override
  final num? minOrderValue;
  @override
  final DateTime? expiryDate;
  @override
  final bool? isExpired;
  @override
  final int? totalQuantity;
  @override
  final int? remainingQuantity;
  @override
  final bool? isPublic;
  @override
  final DateTime? createdAt;

  factory _$VoucherResponse([void Function(VoucherResponseBuilder)? updates]) =>
      (VoucherResponseBuilder()..update(updates))._build();

  _$VoucherResponse._({
    this.id,
    required this.code,
    this.discountValue,
    this.discountType,
    this.campaignId,
    this.applyType,
    this.targetItemType,
    this.requiredPoints,
    this.minOrderValue,
    this.expiryDate,
    this.isExpired,
    this.totalQuantity,
    this.remainingQuantity,
    this.isPublic,
    this.createdAt,
  }) : super._();
  @override
  VoucherResponse rebuild(void Function(VoucherResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VoucherResponseBuilder toBuilder() => VoucherResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VoucherResponse &&
        id == other.id &&
        code == other.code &&
        discountValue == other.discountValue &&
        discountType == other.discountType &&
        campaignId == other.campaignId &&
        applyType == other.applyType &&
        targetItemType == other.targetItemType &&
        requiredPoints == other.requiredPoints &&
        minOrderValue == other.minOrderValue &&
        expiryDate == other.expiryDate &&
        isExpired == other.isExpired &&
        totalQuantity == other.totalQuantity &&
        remainingQuantity == other.remainingQuantity &&
        isPublic == other.isPublic &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, discountValue.hashCode);
    _$hash = $jc(_$hash, discountType.hashCode);
    _$hash = $jc(_$hash, campaignId.hashCode);
    _$hash = $jc(_$hash, applyType.hashCode);
    _$hash = $jc(_$hash, targetItemType.hashCode);
    _$hash = $jc(_$hash, requiredPoints.hashCode);
    _$hash = $jc(_$hash, minOrderValue.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jc(_$hash, isExpired.hashCode);
    _$hash = $jc(_$hash, totalQuantity.hashCode);
    _$hash = $jc(_$hash, remainingQuantity.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VoucherResponse')
          ..add('id', id)
          ..add('code', code)
          ..add('discountValue', discountValue)
          ..add('discountType', discountType)
          ..add('campaignId', campaignId)
          ..add('applyType', applyType)
          ..add('targetItemType', targetItemType)
          ..add('requiredPoints', requiredPoints)
          ..add('minOrderValue', minOrderValue)
          ..add('expiryDate', expiryDate)
          ..add('isExpired', isExpired)
          ..add('totalQuantity', totalQuantity)
          ..add('remainingQuantity', remainingQuantity)
          ..add('isPublic', isPublic)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class VoucherResponseBuilder
    implements Builder<VoucherResponse, VoucherResponseBuilder> {
  _$VoucherResponse? _$v;

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

  DiscountType? _discountType;
  DiscountType? get discountType => _$this._discountType;
  set discountType(DiscountType? discountType) =>
      _$this._discountType = discountType;

  String? _campaignId;
  String? get campaignId => _$this._campaignId;
  set campaignId(String? campaignId) => _$this._campaignId = campaignId;

  VoucherType? _applyType;
  VoucherType? get applyType => _$this._applyType;
  set applyType(VoucherType? applyType) => _$this._applyType = applyType;

  PromotionType? _targetItemType;
  PromotionType? get targetItemType => _$this._targetItemType;
  set targetItemType(PromotionType? targetItemType) =>
      _$this._targetItemType = targetItemType;

  int? _requiredPoints;
  int? get requiredPoints => _$this._requiredPoints;
  set requiredPoints(int? requiredPoints) =>
      _$this._requiredPoints = requiredPoints;

  num? _minOrderValue;
  num? get minOrderValue => _$this._minOrderValue;
  set minOrderValue(num? minOrderValue) =>
      _$this._minOrderValue = minOrderValue;

  DateTime? _expiryDate;
  DateTime? get expiryDate => _$this._expiryDate;
  set expiryDate(DateTime? expiryDate) => _$this._expiryDate = expiryDate;

  bool? _isExpired;
  bool? get isExpired => _$this._isExpired;
  set isExpired(bool? isExpired) => _$this._isExpired = isExpired;

  int? _totalQuantity;
  int? get totalQuantity => _$this._totalQuantity;
  set totalQuantity(int? totalQuantity) =>
      _$this._totalQuantity = totalQuantity;

  int? _remainingQuantity;
  int? get remainingQuantity => _$this._remainingQuantity;
  set remainingQuantity(int? remainingQuantity) =>
      _$this._remainingQuantity = remainingQuantity;

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  VoucherResponseBuilder() {
    VoucherResponse._defaults(this);
  }

  VoucherResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _discountValue = $v.discountValue;
      _discountType = $v.discountType;
      _campaignId = $v.campaignId;
      _applyType = $v.applyType;
      _targetItemType = $v.targetItemType;
      _requiredPoints = $v.requiredPoints;
      _minOrderValue = $v.minOrderValue;
      _expiryDate = $v.expiryDate;
      _isExpired = $v.isExpired;
      _totalQuantity = $v.totalQuantity;
      _remainingQuantity = $v.remainingQuantity;
      _isPublic = $v.isPublic;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VoucherResponse other) {
    _$v = other as _$VoucherResponse;
  }

  @override
  void update(void Function(VoucherResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VoucherResponse build() => _build();

  _$VoucherResponse _build() {
    final _$result =
        _$v ??
        _$VoucherResponse._(
          id: id,
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'VoucherResponse',
            'code',
          ),
          discountValue: discountValue,
          discountType: discountType,
          campaignId: campaignId,
          applyType: applyType,
          targetItemType: targetItemType,
          requiredPoints: requiredPoints,
          minOrderValue: minOrderValue,
          expiryDate: expiryDate,
          isExpired: isExpired,
          totalQuantity: totalQuantity,
          remainingQuantity: remainingQuantity,
          isPublic: isPublic,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
