// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeemable_voucher_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RedeemableVoucherResponse extends RedeemableVoucherResponse {
  @override
  final String? id;
  @override
  final String code;
  @override
  final num? discountValue;
  @override
  final DiscountType? discountType;
  @override
  final int? requiredPoints;
  @override
  final num? minOrderValue;
  @override
  final DateTime? expiryDate;
  @override
  final bool? isExpired;
  @override
  final int? remainingQuantity;
  @override
  final DateTime? createdAt;

  factory _$RedeemableVoucherResponse([
    void Function(RedeemableVoucherResponseBuilder)? updates,
  ]) => (RedeemableVoucherResponseBuilder()..update(updates))._build();

  _$RedeemableVoucherResponse._({
    this.id,
    required this.code,
    this.discountValue,
    this.discountType,
    this.requiredPoints,
    this.minOrderValue,
    this.expiryDate,
    this.isExpired,
    this.remainingQuantity,
    this.createdAt,
  }) : super._();
  @override
  RedeemableVoucherResponse rebuild(
    void Function(RedeemableVoucherResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RedeemableVoucherResponseBuilder toBuilder() =>
      RedeemableVoucherResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RedeemableVoucherResponse &&
        id == other.id &&
        code == other.code &&
        discountValue == other.discountValue &&
        discountType == other.discountType &&
        requiredPoints == other.requiredPoints &&
        minOrderValue == other.minOrderValue &&
        expiryDate == other.expiryDate &&
        isExpired == other.isExpired &&
        remainingQuantity == other.remainingQuantity &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, discountValue.hashCode);
    _$hash = $jc(_$hash, discountType.hashCode);
    _$hash = $jc(_$hash, requiredPoints.hashCode);
    _$hash = $jc(_$hash, minOrderValue.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jc(_$hash, isExpired.hashCode);
    _$hash = $jc(_$hash, remainingQuantity.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RedeemableVoucherResponse')
          ..add('id', id)
          ..add('code', code)
          ..add('discountValue', discountValue)
          ..add('discountType', discountType)
          ..add('requiredPoints', requiredPoints)
          ..add('minOrderValue', minOrderValue)
          ..add('expiryDate', expiryDate)
          ..add('isExpired', isExpired)
          ..add('remainingQuantity', remainingQuantity)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class RedeemableVoucherResponseBuilder
    implements
        Builder<RedeemableVoucherResponse, RedeemableVoucherResponseBuilder> {
  _$RedeemableVoucherResponse? _$v;

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

  int? _remainingQuantity;
  int? get remainingQuantity => _$this._remainingQuantity;
  set remainingQuantity(int? remainingQuantity) =>
      _$this._remainingQuantity = remainingQuantity;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  RedeemableVoucherResponseBuilder() {
    RedeemableVoucherResponse._defaults(this);
  }

  RedeemableVoucherResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _discountValue = $v.discountValue;
      _discountType = $v.discountType;
      _requiredPoints = $v.requiredPoints;
      _minOrderValue = $v.minOrderValue;
      _expiryDate = $v.expiryDate;
      _isExpired = $v.isExpired;
      _remainingQuantity = $v.remainingQuantity;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RedeemableVoucherResponse other) {
    _$v = other as _$RedeemableVoucherResponse;
  }

  @override
  void update(void Function(RedeemableVoucherResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RedeemableVoucherResponse build() => _build();

  _$RedeemableVoucherResponse _build() {
    final _$result =
        _$v ??
        _$RedeemableVoucherResponse._(
          id: id,
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'RedeemableVoucherResponse',
            'code',
          ),
          discountValue: discountValue,
          discountType: discountType,
          requiredPoints: requiredPoints,
          minOrderValue: minOrderValue,
          expiryDate: expiryDate,
          isExpired: isExpired,
          remainingQuantity: remainingQuantity,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
