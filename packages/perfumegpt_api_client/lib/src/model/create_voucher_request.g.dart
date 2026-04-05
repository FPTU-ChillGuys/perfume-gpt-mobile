// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_voucher_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVoucherRequest extends CreateVoucherRequest {
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
  final bool? isPublic;

  factory _$CreateVoucherRequest([
    void Function(CreateVoucherRequestBuilder)? updates,
  ]) => (CreateVoucherRequestBuilder()..update(updates))._build();

  _$CreateVoucherRequest._({
    required this.code,
    this.discountValue,
    this.discountType,
    this.applyType,
    this.requiredPoints,
    this.minOrderValue,
    this.expiryDate,
    this.totalQuantity,
    this.isPublic,
  }) : super._();
  @override
  CreateVoucherRequest rebuild(
    void Function(CreateVoucherRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateVoucherRequestBuilder toBuilder() =>
      CreateVoucherRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVoucherRequest &&
        code == other.code &&
        discountValue == other.discountValue &&
        discountType == other.discountType &&
        applyType == other.applyType &&
        requiredPoints == other.requiredPoints &&
        minOrderValue == other.minOrderValue &&
        expiryDate == other.expiryDate &&
        totalQuantity == other.totalQuantity &&
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
    _$hash = $jc(_$hash, isPublic.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateVoucherRequest')
          ..add('code', code)
          ..add('discountValue', discountValue)
          ..add('discountType', discountType)
          ..add('applyType', applyType)
          ..add('requiredPoints', requiredPoints)
          ..add('minOrderValue', minOrderValue)
          ..add('expiryDate', expiryDate)
          ..add('totalQuantity', totalQuantity)
          ..add('isPublic', isPublic))
        .toString();
  }
}

class CreateVoucherRequestBuilder
    implements Builder<CreateVoucherRequest, CreateVoucherRequestBuilder> {
  _$CreateVoucherRequest? _$v;

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

  bool? _isPublic;
  bool? get isPublic => _$this._isPublic;
  set isPublic(bool? isPublic) => _$this._isPublic = isPublic;

  CreateVoucherRequestBuilder() {
    CreateVoucherRequest._defaults(this);
  }

  CreateVoucherRequestBuilder get _$this {
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
      _isPublic = $v.isPublic;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVoucherRequest other) {
    _$v = other as _$CreateVoucherRequest;
  }

  @override
  void update(void Function(CreateVoucherRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVoucherRequest build() => _build();

  _$CreateVoucherRequest _build() {
    final _$result =
        _$v ??
        _$CreateVoucherRequest._(
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'CreateVoucherRequest',
            'code',
          ),
          discountValue: discountValue,
          discountType: discountType,
          applyType: applyType,
          requiredPoints: requiredPoints,
          minOrderValue: minOrderValue,
          expiryDate: expiryDate,
          totalQuantity: totalQuantity,
          isPublic: isPublic,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
