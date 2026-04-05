// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DistrictResponse extends DistrictResponse {
  @override
  final int? districtID;
  @override
  final int? provinceID;
  @override
  final String districtName;
  @override
  final int? code;
  @override
  final int? type;
  @override
  final int? supportType;
  @override
  final BuiltList<String> nameExtension;
  @override
  final int? isEnable;
  @override
  final bool? canUpdateCOD;
  @override
  final int? status;
  @override
  final String? createdDate;
  @override
  final String updatedDate;

  factory _$DistrictResponse([
    void Function(DistrictResponseBuilder)? updates,
  ]) => (DistrictResponseBuilder()..update(updates))._build();

  _$DistrictResponse._({
    this.districtID,
    this.provinceID,
    required this.districtName,
    this.code,
    this.type,
    this.supportType,
    required this.nameExtension,
    this.isEnable,
    this.canUpdateCOD,
    this.status,
    this.createdDate,
    required this.updatedDate,
  }) : super._();
  @override
  DistrictResponse rebuild(void Function(DistrictResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DistrictResponseBuilder toBuilder() =>
      DistrictResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DistrictResponse &&
        districtID == other.districtID &&
        provinceID == other.provinceID &&
        districtName == other.districtName &&
        code == other.code &&
        type == other.type &&
        supportType == other.supportType &&
        nameExtension == other.nameExtension &&
        isEnable == other.isEnable &&
        canUpdateCOD == other.canUpdateCOD &&
        status == other.status &&
        createdDate == other.createdDate &&
        updatedDate == other.updatedDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, districtID.hashCode);
    _$hash = $jc(_$hash, provinceID.hashCode);
    _$hash = $jc(_$hash, districtName.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, supportType.hashCode);
    _$hash = $jc(_$hash, nameExtension.hashCode);
    _$hash = $jc(_$hash, isEnable.hashCode);
    _$hash = $jc(_$hash, canUpdateCOD.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, updatedDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DistrictResponse')
          ..add('districtID', districtID)
          ..add('provinceID', provinceID)
          ..add('districtName', districtName)
          ..add('code', code)
          ..add('type', type)
          ..add('supportType', supportType)
          ..add('nameExtension', nameExtension)
          ..add('isEnable', isEnable)
          ..add('canUpdateCOD', canUpdateCOD)
          ..add('status', status)
          ..add('createdDate', createdDate)
          ..add('updatedDate', updatedDate))
        .toString();
  }
}

class DistrictResponseBuilder
    implements Builder<DistrictResponse, DistrictResponseBuilder> {
  _$DistrictResponse? _$v;

  int? _districtID;
  int? get districtID => _$this._districtID;
  set districtID(int? districtID) => _$this._districtID = districtID;

  int? _provinceID;
  int? get provinceID => _$this._provinceID;
  set provinceID(int? provinceID) => _$this._provinceID = provinceID;

  String? _districtName;
  String? get districtName => _$this._districtName;
  set districtName(String? districtName) => _$this._districtName = districtName;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  int? _supportType;
  int? get supportType => _$this._supportType;
  set supportType(int? supportType) => _$this._supportType = supportType;

  ListBuilder<String>? _nameExtension;
  ListBuilder<String> get nameExtension =>
      _$this._nameExtension ??= ListBuilder<String>();
  set nameExtension(ListBuilder<String>? nameExtension) =>
      _$this._nameExtension = nameExtension;

  int? _isEnable;
  int? get isEnable => _$this._isEnable;
  set isEnable(int? isEnable) => _$this._isEnable = isEnable;

  bool? _canUpdateCOD;
  bool? get canUpdateCOD => _$this._canUpdateCOD;
  set canUpdateCOD(bool? canUpdateCOD) => _$this._canUpdateCOD = canUpdateCOD;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _createdDate;
  String? get createdDate => _$this._createdDate;
  set createdDate(String? createdDate) => _$this._createdDate = createdDate;

  String? _updatedDate;
  String? get updatedDate => _$this._updatedDate;
  set updatedDate(String? updatedDate) => _$this._updatedDate = updatedDate;

  DistrictResponseBuilder() {
    DistrictResponse._defaults(this);
  }

  DistrictResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _districtID = $v.districtID;
      _provinceID = $v.provinceID;
      _districtName = $v.districtName;
      _code = $v.code;
      _type = $v.type;
      _supportType = $v.supportType;
      _nameExtension = $v.nameExtension.toBuilder();
      _isEnable = $v.isEnable;
      _canUpdateCOD = $v.canUpdateCOD;
      _status = $v.status;
      _createdDate = $v.createdDate;
      _updatedDate = $v.updatedDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DistrictResponse other) {
    _$v = other as _$DistrictResponse;
  }

  @override
  void update(void Function(DistrictResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DistrictResponse build() => _build();

  _$DistrictResponse _build() {
    _$DistrictResponse _$result;
    try {
      _$result =
          _$v ??
          _$DistrictResponse._(
            districtID: districtID,
            provinceID: provinceID,
            districtName: BuiltValueNullFieldError.checkNotNull(
              districtName,
              r'DistrictResponse',
              'districtName',
            ),
            code: code,
            type: type,
            supportType: supportType,
            nameExtension: nameExtension.build(),
            isEnable: isEnable,
            canUpdateCOD: canUpdateCOD,
            status: status,
            createdDate: createdDate,
            updatedDate: BuiltValueNullFieldError.checkNotNull(
              updatedDate,
              r'DistrictResponse',
              'updatedDate',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nameExtension';
        nameExtension.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DistrictResponse',
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
