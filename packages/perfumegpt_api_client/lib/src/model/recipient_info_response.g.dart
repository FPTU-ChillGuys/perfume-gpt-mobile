// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipient_info_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecipientInfoResponse extends RecipientInfoResponse {
  @override
  final String? id;
  @override
  final String? recipientName;
  @override
  final String? recipientPhoneNumber;
  @override
  final String districtName;
  @override
  final String wardName;
  @override
  final String provinceName;
  @override
  final String fullAddress;

  factory _$RecipientInfoResponse([
    void Function(RecipientInfoResponseBuilder)? updates,
  ]) => (RecipientInfoResponseBuilder()..update(updates))._build();

  _$RecipientInfoResponse._({
    this.id,
    this.recipientName,
    this.recipientPhoneNumber,
    required this.districtName,
    required this.wardName,
    required this.provinceName,
    required this.fullAddress,
  }) : super._();
  @override
  RecipientInfoResponse rebuild(
    void Function(RecipientInfoResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RecipientInfoResponseBuilder toBuilder() =>
      RecipientInfoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecipientInfoResponse &&
        id == other.id &&
        recipientName == other.recipientName &&
        recipientPhoneNumber == other.recipientPhoneNumber &&
        districtName == other.districtName &&
        wardName == other.wardName &&
        provinceName == other.provinceName &&
        fullAddress == other.fullAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, recipientName.hashCode);
    _$hash = $jc(_$hash, recipientPhoneNumber.hashCode);
    _$hash = $jc(_$hash, districtName.hashCode);
    _$hash = $jc(_$hash, wardName.hashCode);
    _$hash = $jc(_$hash, provinceName.hashCode);
    _$hash = $jc(_$hash, fullAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecipientInfoResponse')
          ..add('id', id)
          ..add('recipientName', recipientName)
          ..add('recipientPhoneNumber', recipientPhoneNumber)
          ..add('districtName', districtName)
          ..add('wardName', wardName)
          ..add('provinceName', provinceName)
          ..add('fullAddress', fullAddress))
        .toString();
  }
}

class RecipientInfoResponseBuilder
    implements Builder<RecipientInfoResponse, RecipientInfoResponseBuilder> {
  _$RecipientInfoResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _recipientName;
  String? get recipientName => _$this._recipientName;
  set recipientName(String? recipientName) =>
      _$this._recipientName = recipientName;

  String? _recipientPhoneNumber;
  String? get recipientPhoneNumber => _$this._recipientPhoneNumber;
  set recipientPhoneNumber(String? recipientPhoneNumber) =>
      _$this._recipientPhoneNumber = recipientPhoneNumber;

  String? _districtName;
  String? get districtName => _$this._districtName;
  set districtName(String? districtName) => _$this._districtName = districtName;

  String? _wardName;
  String? get wardName => _$this._wardName;
  set wardName(String? wardName) => _$this._wardName = wardName;

  String? _provinceName;
  String? get provinceName => _$this._provinceName;
  set provinceName(String? provinceName) => _$this._provinceName = provinceName;

  String? _fullAddress;
  String? get fullAddress => _$this._fullAddress;
  set fullAddress(String? fullAddress) => _$this._fullAddress = fullAddress;

  RecipientInfoResponseBuilder() {
    RecipientInfoResponse._defaults(this);
  }

  RecipientInfoResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _recipientName = $v.recipientName;
      _recipientPhoneNumber = $v.recipientPhoneNumber;
      _districtName = $v.districtName;
      _wardName = $v.wardName;
      _provinceName = $v.provinceName;
      _fullAddress = $v.fullAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecipientInfoResponse other) {
    _$v = other as _$RecipientInfoResponse;
  }

  @override
  void update(void Function(RecipientInfoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecipientInfoResponse build() => _build();

  _$RecipientInfoResponse _build() {
    final _$result =
        _$v ??
        _$RecipientInfoResponse._(
          id: id,
          recipientName: recipientName,
          recipientPhoneNumber: recipientPhoneNumber,
          districtName: BuiltValueNullFieldError.checkNotNull(
            districtName,
            r'RecipientInfoResponse',
            'districtName',
          ),
          wardName: BuiltValueNullFieldError.checkNotNull(
            wardName,
            r'RecipientInfoResponse',
            'wardName',
          ),
          provinceName: BuiltValueNullFieldError.checkNotNull(
            provinceName,
            r'RecipientInfoResponse',
            'provinceName',
          ),
          fullAddress: BuiltValueNullFieldError.checkNotNull(
            fullAddress,
            r'RecipientInfoResponse',
            'fullAddress',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
