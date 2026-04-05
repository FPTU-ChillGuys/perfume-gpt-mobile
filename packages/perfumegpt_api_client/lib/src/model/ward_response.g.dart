// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ward_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WardResponse extends WardResponse {
  @override
  final String wardCode;
  @override
  final int? districtID;
  @override
  final String wardName;
  @override
  final BuiltList<String> nameExtension;
  @override
  final bool? canUpdateCOD;
  @override
  final int? supportType;
  @override
  final int? status;
  @override
  final String createdDate;
  @override
  final String updatedDate;

  factory _$WardResponse([void Function(WardResponseBuilder)? updates]) =>
      (WardResponseBuilder()..update(updates))._build();

  _$WardResponse._({
    required this.wardCode,
    this.districtID,
    required this.wardName,
    required this.nameExtension,
    this.canUpdateCOD,
    this.supportType,
    this.status,
    required this.createdDate,
    required this.updatedDate,
  }) : super._();
  @override
  WardResponse rebuild(void Function(WardResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WardResponseBuilder toBuilder() => WardResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WardResponse &&
        wardCode == other.wardCode &&
        districtID == other.districtID &&
        wardName == other.wardName &&
        nameExtension == other.nameExtension &&
        canUpdateCOD == other.canUpdateCOD &&
        supportType == other.supportType &&
        status == other.status &&
        createdDate == other.createdDate &&
        updatedDate == other.updatedDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, wardCode.hashCode);
    _$hash = $jc(_$hash, districtID.hashCode);
    _$hash = $jc(_$hash, wardName.hashCode);
    _$hash = $jc(_$hash, nameExtension.hashCode);
    _$hash = $jc(_$hash, canUpdateCOD.hashCode);
    _$hash = $jc(_$hash, supportType.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, updatedDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WardResponse')
          ..add('wardCode', wardCode)
          ..add('districtID', districtID)
          ..add('wardName', wardName)
          ..add('nameExtension', nameExtension)
          ..add('canUpdateCOD', canUpdateCOD)
          ..add('supportType', supportType)
          ..add('status', status)
          ..add('createdDate', createdDate)
          ..add('updatedDate', updatedDate))
        .toString();
  }
}

class WardResponseBuilder
    implements Builder<WardResponse, WardResponseBuilder> {
  _$WardResponse? _$v;

  String? _wardCode;
  String? get wardCode => _$this._wardCode;
  set wardCode(String? wardCode) => _$this._wardCode = wardCode;

  int? _districtID;
  int? get districtID => _$this._districtID;
  set districtID(int? districtID) => _$this._districtID = districtID;

  String? _wardName;
  String? get wardName => _$this._wardName;
  set wardName(String? wardName) => _$this._wardName = wardName;

  ListBuilder<String>? _nameExtension;
  ListBuilder<String> get nameExtension =>
      _$this._nameExtension ??= ListBuilder<String>();
  set nameExtension(ListBuilder<String>? nameExtension) =>
      _$this._nameExtension = nameExtension;

  bool? _canUpdateCOD;
  bool? get canUpdateCOD => _$this._canUpdateCOD;
  set canUpdateCOD(bool? canUpdateCOD) => _$this._canUpdateCOD = canUpdateCOD;

  int? _supportType;
  int? get supportType => _$this._supportType;
  set supportType(int? supportType) => _$this._supportType = supportType;

  int? _status;
  int? get status => _$this._status;
  set status(int? status) => _$this._status = status;

  String? _createdDate;
  String? get createdDate => _$this._createdDate;
  set createdDate(String? createdDate) => _$this._createdDate = createdDate;

  String? _updatedDate;
  String? get updatedDate => _$this._updatedDate;
  set updatedDate(String? updatedDate) => _$this._updatedDate = updatedDate;

  WardResponseBuilder() {
    WardResponse._defaults(this);
  }

  WardResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _wardCode = $v.wardCode;
      _districtID = $v.districtID;
      _wardName = $v.wardName;
      _nameExtension = $v.nameExtension.toBuilder();
      _canUpdateCOD = $v.canUpdateCOD;
      _supportType = $v.supportType;
      _status = $v.status;
      _createdDate = $v.createdDate;
      _updatedDate = $v.updatedDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WardResponse other) {
    _$v = other as _$WardResponse;
  }

  @override
  void update(void Function(WardResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WardResponse build() => _build();

  _$WardResponse _build() {
    _$WardResponse _$result;
    try {
      _$result =
          _$v ??
          _$WardResponse._(
            wardCode: BuiltValueNullFieldError.checkNotNull(
              wardCode,
              r'WardResponse',
              'wardCode',
            ),
            districtID: districtID,
            wardName: BuiltValueNullFieldError.checkNotNull(
              wardName,
              r'WardResponse',
              'wardName',
            ),
            nameExtension: nameExtension.build(),
            canUpdateCOD: canUpdateCOD,
            supportType: supportType,
            status: status,
            createdDate: BuiltValueNullFieldError.checkNotNull(
              createdDate,
              r'WardResponse',
              'createdDate',
            ),
            updatedDate: BuiltValueNullFieldError.checkNotNull(
              updatedDate,
              r'WardResponse',
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
          r'WardResponse',
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
