// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BrandResponse extends BrandResponse {
  @override
  final int? id;
  @override
  final String name;

  factory _$BrandResponse([void Function(BrandResponseBuilder)? updates]) =>
      (BrandResponseBuilder()..update(updates))._build();

  _$BrandResponse._({this.id, required this.name}) : super._();
  @override
  BrandResponse rebuild(void Function(BrandResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandResponseBuilder toBuilder() => BrandResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrandResponse && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'BrandResponse')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class BrandResponseBuilder
    implements Builder<BrandResponse, BrandResponseBuilder> {
  _$BrandResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  BrandResponseBuilder() {
    BrandResponse._defaults(this);
  }

  BrandResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrandResponse other) {
    _$v = other as _$BrandResponse;
  }

  @override
  void update(void Function(BrandResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BrandResponse build() => _build();

  _$BrandResponse _build() {
    final _$result =
        _$v ??
        _$BrandResponse._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'BrandResponse',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
