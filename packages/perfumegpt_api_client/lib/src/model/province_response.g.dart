// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProvinceResponse extends ProvinceResponse {
  @override
  final int? provinceID;
  @override
  final String provinceName;
  @override
  final int? countryID;
  @override
  final int? code;
  @override
  final BuiltList<String>? nameExtension;
  @override
  final int? isEnable;
  @override
  final int? regionID;
  @override
  final int? updatedBy;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final bool? canUpdateCOD;
  @override
  final int? status;

  factory _$ProvinceResponse([
    void Function(ProvinceResponseBuilder)? updates,
  ]) => (ProvinceResponseBuilder()..update(updates))._build();

  _$ProvinceResponse._({
    this.provinceID,
    required this.provinceName,
    this.countryID,
    this.code,
    this.nameExtension,
    this.isEnable,
    this.regionID,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.canUpdateCOD,
    this.status,
  }) : super._();
  @override
  ProvinceResponse rebuild(void Function(ProvinceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvinceResponseBuilder toBuilder() =>
      ProvinceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvinceResponse &&
        provinceID == other.provinceID &&
        provinceName == other.provinceName &&
        countryID == other.countryID &&
        code == other.code &&
        nameExtension == other.nameExtension &&
        isEnable == other.isEnable &&
        regionID == other.regionID &&
        updatedBy == other.updatedBy &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        canUpdateCOD == other.canUpdateCOD &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provinceID.hashCode);
    _$hash = $jc(_$hash, provinceName.hashCode);
    _$hash = $jc(_$hash, countryID.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, nameExtension.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, regionID.hashCode);
    _$hash = $jc(_$hash, updatedBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, canUpdateCOD.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProvinceResponse')
          ..add('provinceID', provinceID)
          ..add('provinceName', provinceName)
          ..add('countryID', countryID)
          ..add('code', code)
          ..add('nameExtension', nameExtension)
          ..add('isEnable', isEnable)
          ..add('regionID', regionID)
          ..add('updatedBy', updatedBy)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('canUpdateCOD', canUpdateCOD)
          ..add('status', status))
        .toString();
  }
}

class ProvinceResponseBuilder
    implements Builder<ProvinceResponse, ProvinceResponseBuilder> {
  _$ProvinceResponse? _$v;

  int? _provinceID;
  int? get provinceID => _$this._provinceID;
  set provinceID(int? provinceID) => _$this._provinceID = provinceID;

  String? _provinceName;
  String? get provinceName => _$this._provinceName;
  set provinceName(String? provinceName) => _$this._provinceName = provinceName;

  int? _countryID;
  int? get countryID => _$this._countryID;
  set countryID(int? countryID) => _$this._countryID = countryID;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  ListBuilder<String>? _nameExtension;
  ListBuilder<String> get nameExtension =>
      _$this._nameExtension ??= ListBuilder<String>();
  set nameExtension(ListBuilder<String>? nameExtension) =>
      _$this._nameExtension = nameExtension;

  int? _isEnable;
  int? get isEnable => _$this._isEnable;
  set isEnable(int? isEnable) => _$this._isEnable = isEnable;

  int? _regionID;
  int? get regionID => _$this._regionID;
  set regionID(int? regionID) => _$this._regionID = regionID;

  int? _updatedBy;
  int? get updatedBy => _$this._updatedBy;
  set updatedBy(int? updatedBy) => _$this._updatedBy = updatedBy;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  bool? _canUpdateCOD;
  bool? get canUpdateCOD => _$this._canUpdateCOD;
  set canUpdateCOD(bool? canUpdateCOD) => _$this._canUpdateCOD = canUpdateCOD;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  ProvinceResponseBuilder() {
    ProvinceResponse._defaults(this);
  }

  ProvinceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provinceID = $v.provinceID;
      _provinceName = $v.provinceName;
      _countryID = $v.countryID;
      _code = $v.code;
      _nameExtension = $v.nameExtension?.toBuilder();
      _isEnable = $v.isEnable;
      _regionID = $v.regionID;
      _updatedBy = $v.updatedBy;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _canUpdateCOD = $v.canUpdateCOD;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvinceResponse other) {
    _$v = other as _$ProvinceResponse;
  }

  @override
  void update(void Function(ProvinceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvinceResponse build() => _build();

  _$ProvinceResponse _build() {
    _$ProvinceResponse _$result;
    try {
      _$result =
          _$v ??
          _$ProvinceResponse._(
            provinceID: provinceID,
            provinceName: BuiltValueNullFieldError.checkNotNull(
              provinceName,
              r'ProvinceResponse',
              'provinceName',
            ),
            countryID: countryID,
            code: code,
            nameExtension: _nameExtension?.build(),
            isEnable: isEnable,
            regionID: regionID,
            updatedBy: updatedBy,
            createdAt: createdAt,
            updatedAt: updatedAt,
            canUpdateCOD: canUpdateCOD,
            status: status,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nameExtension';
        _nameExtension?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProvinceResponse',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
