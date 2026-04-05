// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concentration_lookup_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConcentrationLookupDto extends ConcentrationLookupDto {
  @override
  final int? id;
  @override
  final String name;

  factory _$ConcentrationLookupDto([
    void Function(ConcentrationLookupDtoBuilder)? updates,
  ]) => (ConcentrationLookupDtoBuilder()..update(updates))._build();

  _$ConcentrationLookupDto._({this.id, required this.name}) : super._();
  @override
  ConcentrationLookupDto rebuild(
    void Function(ConcentrationLookupDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ConcentrationLookupDtoBuilder toBuilder() =>
      ConcentrationLookupDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConcentrationLookupDto &&
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
    return (newBuiltValueToStringHelper(r'ConcentrationLookupDto')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class ConcentrationLookupDtoBuilder
    implements Builder<ConcentrationLookupDto, ConcentrationLookupDtoBuilder> {
  _$ConcentrationLookupDto? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ConcentrationLookupDtoBuilder() {
    ConcentrationLookupDto._defaults(this);
  }

  ConcentrationLookupDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConcentrationLookupDto other) {
    _$v = other as _$ConcentrationLookupDto;
  }

  @override
  void update(void Function(ConcentrationLookupDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConcentrationLookupDto build() => _build();

  _$ConcentrationLookupDto _build() {
    final _$result =
        _$v ??
        _$ConcentrationLookupDto._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ConcentrationLookupDto',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
