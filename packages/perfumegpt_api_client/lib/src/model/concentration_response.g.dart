// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concentration_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConcentrationResponse extends ConcentrationResponse {
  @override
  final int? id;
  @override
  final String name;

  factory _$ConcentrationResponse([
    void Function(ConcentrationResponseBuilder)? updates,
  ]) => (ConcentrationResponseBuilder()..update(updates))._build();

  _$ConcentrationResponse._({this.id, required this.name}) : super._();
  @override
  ConcentrationResponse rebuild(
    void Function(ConcentrationResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ConcentrationResponseBuilder toBuilder() =>
      ConcentrationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConcentrationResponse &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConcentrationResponse')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ConcentrationResponseBuilder
    implements Builder<ConcentrationResponse, ConcentrationResponseBuilder> {
  _$ConcentrationResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ConcentrationResponseBuilder() {
    ConcentrationResponse._defaults(this);
  }

  ConcentrationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConcentrationResponse other) {
    _$v = other as _$ConcentrationResponse;
  }

  @override
  void update(void Function(ConcentrationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConcentrationResponse build() => _build();

  _$ConcentrationResponse _build() {
    final _$result =
        _$v ??
        _$ConcentrationResponse._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ConcentrationResponse',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
