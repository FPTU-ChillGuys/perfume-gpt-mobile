// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CampaignResponse extends CampaignResponse {
  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final CampaignType? type;
  @override
  final CampaignStatus? status;

  factory _$CampaignResponse([
    void Function(CampaignResponseBuilder)? updates,
  ]) => (CampaignResponseBuilder()..update(updates))._build();

  _$CampaignResponse._({
    this.id,
    required this.name,
    this.description,
    this.startDate,
    this.endDate,
    this.type,
    this.status,
  }) : super._();
  @override
  CampaignResponse rebuild(void Function(CampaignResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CampaignResponseBuilder toBuilder() =>
      CampaignResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CampaignResponse &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        type == other.type &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CampaignResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('type', type)
          ..add('status', status))
        .toString();
  }
}

class CampaignResponseBuilder
    implements Builder<CampaignResponse, CampaignResponseBuilder> {
  _$CampaignResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  CampaignType? _type;
  CampaignType? get type => _$this._type;
  set type(CampaignType? type) => _$this._type = type;

  CampaignStatus? _status;
  CampaignStatus? get status => _$this._status;
  set status(CampaignStatus? status) => _$this._status = status;

  CampaignResponseBuilder() {
    CampaignResponse._defaults(this);
  }

  CampaignResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _type = $v.type;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CampaignResponse other) {
    _$v = other as _$CampaignResponse;
  }

  @override
  void update(void Function(CampaignResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CampaignResponse build() => _build();

  _$CampaignResponse _build() {
    final _$result =
        _$v ??
        _$CampaignResponse._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CampaignResponse',
            'name',
          ),
          description: description,
          startDate: startDate,
          endDate: endDate,
          type: type,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
