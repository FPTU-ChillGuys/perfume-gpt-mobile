// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_voucher_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserVoucherResponse extends UserVoucherResponse {
  @override
  final String? id;
  @override
  final String? voucherId;
  @override
  final String code;
  @override
  final num? discountValue;
  @override
  final String discountType;
  @override
  final num? minOrderValue;
  @override
  final DateTime? expiryDate;
  @override
  final bool? isUsed;
  @override
  final String status;
  @override
  final bool? isExpired;
  @override
  final DateTime? redeemedAt;

  factory _$UserVoucherResponse([
    void Function(UserVoucherResponseBuilder)? updates,
  ]) => (UserVoucherResponseBuilder()..update(updates))._build();

  _$UserVoucherResponse._({
    this.id,
    this.voucherId,
    required this.code,
    this.discountValue,
    required this.discountType,
    this.minOrderValue,
    this.expiryDate,
    this.isUsed,
    required this.status,
    this.isExpired,
    this.redeemedAt,
  }) : super._();
  @override
  UserVoucherResponse rebuild(
    void Function(UserVoucherResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserVoucherResponseBuilder toBuilder() =>
      UserVoucherResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserVoucherResponse &&
        id == other.id &&
        voucherId == other.voucherId &&
        code == other.code &&
        discountValue == other.discountValue &&
        discountType == other.discountType &&
        minOrderValue == other.minOrderValue &&
        expiryDate == other.expiryDate &&
        isUsed == other.isUsed &&
        status == other.status &&
        isExpired == other.isExpired &&
        redeemedAt == other.redeemedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, voucherId.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, discountValue.hashCode);
    _$hash = $jc(_$hash, discountType.hashCode);
    _$hash = $jc(_$hash, minOrderValue.hashCode);
    _$hash = $jc(_$hash, expiryDate.hashCode);
    _$hash = $jc(_$hash, isUsed.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, isExpired.hashCode);
    _$hash = $jc(_$hash, redeemedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserVoucherResponse')
          ..add('id', id)
          ..add('voucherId', voucherId)
          ..add('code', code)
          ..add('discountValue', discountValue)
          ..add('discountType', discountType)
          ..add('minOrderValue', minOrderValue)
          ..add('expiryDate', expiryDate)
          ..add('isUsed', isUsed)
          ..add('status', status)
          ..add('isExpired', isExpired)
          ..add('redeemedAt', redeemedAt))
        .toString();
  }
}

class UserVoucherResponseBuilder
    implements Builder<UserVoucherResponse, UserVoucherResponseBuilder> {
  _$UserVoucherResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _voucherId;
  String? get voucherId => _$this._voucherId;
  set voucherId(String? voucherId) => _$this._voucherId = voucherId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  num? _discountValue;
  num? get discountValue => _$this._discountValue;
  set discountValue(num? discountValue) =>
      _$this._discountValue = discountValue;

  String? _discountType;
  String? get discountType => _$this._discountType;
  set discountType(String? discountType) => _$this._discountType = discountType;

  num? _minOrderValue;
  num? get minOrderValue => _$this._minOrderValue;
  set minOrderValue(num? minOrderValue) =>
      _$this._minOrderValue = minOrderValue;

  DateTime? _expiryDate;
  DateTime? get expiryDate => _$this._expiryDate;
  set expiryDate(DateTime? expiryDate) => _$this._expiryDate = expiryDate;

  bool? _isUsed;
  bool? get isUsed => _$this._isUsed;
  set isUsed(bool? isUsed) => _$this._isUsed = isUsed;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  bool? _isExpired;
  bool? get isExpired => _$this._isExpired;
  set isExpired(bool? isExpired) => _$this._isExpired = isExpired;

  DateTime? _redeemedAt;
  DateTime? get redeemedAt => _$this._redeemedAt;
  set redeemedAt(DateTime? redeemedAt) => _$this._redeemedAt = redeemedAt;

  UserVoucherResponseBuilder() {
    UserVoucherResponse._defaults(this);
  }

  UserVoucherResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _voucherId = $v.voucherId;
      _code = $v.code;
      _discountValue = $v.discountValue;
      _discountType = $v.discountType;
      _minOrderValue = $v.minOrderValue;
      _expiryDate = $v.expiryDate;
      _isUsed = $v.isUsed;
      _status = $v.status;
      _isExpired = $v.isExpired;
      _redeemedAt = $v.redeemedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserVoucherResponse other) {
    _$v = other as _$UserVoucherResponse;
  }

  @override
  void update(void Function(UserVoucherResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserVoucherResponse build() => _build();

  _$UserVoucherResponse _build() {
    final _$result =
        _$v ??
        _$UserVoucherResponse._(
          id: id,
          voucherId: voucherId,
          code: BuiltValueNullFieldError.checkNotNull(
            code,
            r'UserVoucherResponse',
            'code',
          ),
          discountValue: discountValue,
          discountType: BuiltValueNullFieldError.checkNotNull(
            discountType,
            r'UserVoucherResponse',
            'discountType',
          ),
          minOrderValue: minOrderValue,
          expiryDate: expiryDate,
          isUsed: isUsed,
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'UserVoucherResponse',
            'status',
          ),
          isExpired: isExpired,
          redeemedAt: redeemedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
