// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_voucher_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateVoucherRequest extends UpdateVoucherRequest {
  @override
  final String code;
  @override
  final num? discountValue;
  @override
  final DiscountType? discountType;
  @override
  final VoucherType? applyType;
  @override
  final int? requiredPoints;
  @override
  final num? minOrderValue;
  @override
  final DateTime? expiryDate;
  @override
  final int? totalQuantity;
  @override
  final int? remainingQuantity;
  @override
  final bool? isPublic;

  factory _$UpdateVoucherRequest([
    void Function(UpdateVoucherRequestBuilder)? updates,
  ]) => (UpdateVoucherRequestBuilder()..update(updates))._build();

  _$UpdateVoucherRequest._({
    required this.code,
    this.discountValue,
    this.discountType,
    this.applyType,
    this.requiredPoints,
    this.minOrderValue,
    this.expiryDate,
    this.totalQuantity,
    this.remainingQuantity,
    this.isPublic,
  }) : super._();
  @override
  UpdateVoucherRequest rebuild(
    void Function(UpdateVoucherRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateVoucherRequestBuilder toBuilder() =>
      UpdateVoucherRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateVoucherRequest &&
        code == other.code &&
        discountValue == other.discountValue &&
        discountType == other.discountType &&
        applyType == other.applyType &&
        requiredPoints == other.requiredPoints &&
        minOrderValue == other.minOrderValue &&
        expiryDate == other.expiryDate &&
        totalQuantity == other.totalQuantity &&
        remainingQuantity == other.remainingQuantity &&
        isPublic == other.isPublic;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, discountValue.hashCode);
    _$hash = $jc(_$hash, discountType.hashCode);
    _$hash = $jc(_$hash, applyType.hashCode);
    _$hash = $jc(_$hash, requiredPoints.hashCode);
    _$hash = $jc(_$hash, minOrderValue.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jc(_$hash, totalQuantity.hashCode);
    _$hash = $jc(_$hash, remainingQuantity.hashCode);
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateVoucherRequest')
          ..add('code', code)
          ..add('discountValue', discountValue)
          ..add('discountType', discountType)
          ..add('applyType', applyType)
          ..add('requiredPoints', requiredPoints)
          ..add('minOrderValue', minOrderValue)
          ..add('expiryDate', expiryDate)
          ..add('totalQuantity', totalQuantity)
          ..add('remainingQuantity', remainingQuantity)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class UpdateVoucherRequestBuilder
    implements Builder<UpdateVoucherRequest, UpdateVoucherRequestBuilder> {
  _$UpdateVoucherRequest? _$v;

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

  VoucherType? _applyType;
  VoucherType? get applyType => _$this._applyType;
  set applyType(VoucherType? applyType) => _$this._applyType = applyType;

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

  UpdateVoucherRequestBuilder() {
    UpdateVoucherRequest._defaults(this);
  }

  UpdateVoucherRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _discountValue = $v.discountValue;
      _discountType = $v.discountType;
      _applyType = $v.applyType;
      _requiredPoints = $v.requiredPoints;
      _minOrderValue = $v.minOrderValue;
      _expiryDate = $v.expiryDate;
      _totalQuantity = $v.totalQuantity;
      _remainingQuantity = $v.remainingQuantity;
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateVoucherRequest other) {
    _$v = other as _$UpdateVoucherRequest;
  }

  @override
  void update(void Function(UpdateVoucherRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateVoucherRequest build() => _build();

  _$UpdateVoucherRequest _build() {
    final _$result =
        _$v ??
        _$UpdateVoucherRequest._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'UpdateVoucherRequest',
            'code',
          ),
          discountValue: discountValue,
          discountType: discountType,
          applyType: applyType,
          requiredPoints: requiredPoints,
          minOrderValue: minOrderValue,
          expiryDate: expiryDate,
          totalQuantity: totalQuantity,
          remainingQuantity: remainingQuantity,
          isPublic: isPublic,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
