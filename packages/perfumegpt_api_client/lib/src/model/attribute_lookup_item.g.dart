// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_lookup_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeLookupItem extends AttributeLookupItem {
  @override
  final int? id;
  @override
  final String internalCode;
  @override
  final String name;
  @override
  final String? description;
  @override
  final bool? isVariantLevel;

  factory _$AttributeLookupItem([
    void Function(AttributeLookupItemBuilder)? updates,
  ]) => (AttributeLookupItemBuilder()..update(updates))._build();

  _$AttributeLookupItem._({
    this.id,
    required this.internalCode,
    required this.name,
    this.description,
    this.isVariantLevel,
  }) : super._();
  @override
  AttributeLookupItem rebuild(
    void Function(AttributeLookupItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AttributeLookupItemBuilder toBuilder() =>
      AttributeLookupItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeLookupItem &&
        id == other.id &&
        internalCode == other.internalCode &&
        name == other.name &&
        description == other.description &&
        isVariantLevel == other.isVariantLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, internalCode.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isVariantLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttributeLookupItem')
          ..add('id', id)
          ..add('internalCode', internalCode)
          ..add('name', name)
          ..add('description', description)
          ..add('isVariantLevel', isVariantLevel))
        .toString();
  }
}

class AttributeLookupItemBuilder
    implements Builder<AttributeLookupItem, AttributeLookupItemBuilder> {
  _$AttributeLookupItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _internalCode;
  String? get internalCode => _$this._internalCode;
  set internalCode(String? internalCode) => _$this._internalCode = internalCode;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isVariantLevel;
  bool? get isVariantLevel => _$this._isVariantLevel;
  set isVariantLevel(bool? isVariantLevel) =>
      _$this._isVariantLevel = isVariantLevel;

  AttributeLookupItemBuilder() {
    AttributeLookupItem._defaults(this);
  }

  AttributeLookupItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _internalCode = $v.internalCode;
      _name = $v.name;
      _description = $v.description;
      _isVariantLevel = $v.isVariantLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeLookupItem other) {
    _$v = other as _$AttributeLookupItem;
  }

  @override
  void update(void Function(AttributeLookupItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttributeLookupItem build() => _build();

  _$AttributeLookupItem _build() {
    final _$result =
        _$v ??
        _$AttributeLookupItem._(
          id: id,
          internalCode: BuiltValueNullFieldError.checkNotNull(
            internalCode,
            r'AttributeLookupItem',
            'internalCode',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'AttributeLookupItem',
            'name',
          ),
          description: description,
          isVariantLevel: isVariantLevel,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
