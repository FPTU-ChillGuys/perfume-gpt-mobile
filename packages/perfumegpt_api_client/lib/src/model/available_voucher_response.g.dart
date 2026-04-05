// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_voucher_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AvailableVoucherResponse extends AvailableVoucherResponse {
  @override
  final String? id;
  @override
  final String code;
  @override
  final num? discountValue;
  @override
  final DiscountType? discountType;
  @override
  final num? minOrderValue;
  @override
  final DateTime? expiryDate;
  @override
  final int? remainingQuantity;

  factory _$AvailableVoucherResponse([
    void Function(AvailableVoucherResponseBuilder)? updates,
  ]) => (AvailableVoucherResponseBuilder()..update(updates))._build();

  _$AvailableVoucherResponse._({
    this.id,
    required this.code,
    this.discountValue,
    this.discountType,
    this.minOrderValue,
    this.expiryDate,
    this.remainingQuantity,
  }) : super._();
  @override
  AvailableVoucherResponse rebuild(
    void Function(AvailableVoucherResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AvailableVoucherResponseBuilder toBuilder() =>
      AvailableVoucherResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvailableVoucherResponse &&
        id == other.id &&
        code == other.code &&
        discountValue == other.discountValue &&
        discountType == other.discountType &&
        minOrderValue == other.minOrderValue &&
        expiryDate == other.expiryDate &&
        remainingQuantity == other.remainingQuantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, discountValue.hashCode);
    _$hash = $jc(_$hash, discountType.hashCode);
    _$hash = $jc(_$hash, minOrderValue.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jc(_$hash, remainingQuantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvailableVoucherResponse')
          ..add('id', id)
          ..add('code', code)
          ..add('discountValue', discountValue)
          ..add('discountType', discountType)
          ..add('minOrderValue', minOrderValue)
          ..add('expiryDate', expiryDate)
          ..add('remainingQuantity', remainingQuantity))
        .toString();
  }
}

class AvailableVoucherResponseBuilder
    implements
        Builder<AvailableVoucherResponse, AvailableVoucherResponseBuilder> {
  _$AvailableVoucherResponse? _$v;

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

  num? _minOrderValue;
  num? get minOrderValue => _$this._minOrderValue;
  set minOrderValue(num? minOrderValue) =>
      _$this._minOrderValue = minOrderValue;

  DateTime? _expiryDate;
  DateTime? get expiryDate => _$this._expiryDate;
  set expiryDate(DateTime? expiryDate) => _$this._expiryDate = expiryDate;

  int? _remainingQuantity;
  int? get remainingQuantity => _$this._remainingQuantity;
  set remainingQuantity(int? remainingQuantity) =>
      _$this._remainingQuantity = remainingQuantity;

  AvailableVoucherResponseBuilder() {
    AvailableVoucherResponse._defaults(this);
  }

  AvailableVoucherResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _discountValue = $v.discountValue;
      _discountType = $v.discountType;
      _minOrderValue = $v.minOrderValue;
      _expiryDate = $v.expiryDate;
      _remainingQuantity = $v.remainingQuantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvailableVoucherResponse other) {
    _$v = other as _$AvailableVoucherResponse;
  }

  @override
  void update(void Function(AvailableVoucherResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvailableVoucherResponse build() => _build();

  _$AvailableVoucherResponse _build() {
    final _$result =
        _$v ??
        _$AvailableVoucherResponse._(
          id: id,
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'AvailableVoucherResponse',
            'code',
          ),
          discountValue: discountValue,
          discountType: discountType,
          minOrderValue: minOrderValue,
          expiryDate: expiryDate,
          remainingQuantity: remainingQuantity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
