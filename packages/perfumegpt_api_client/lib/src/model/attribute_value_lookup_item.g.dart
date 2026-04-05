// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribute_value_lookup_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AttributeValueLookupItem extends AttributeValueLookupItem {
  @override
  final int? id;
  @override
  final String value;

  factory _$AttributeValueLookupItem([
    void Function(AttributeValueLookupItemBuilder)? updates,
  ]) => (AttributeValueLookupItemBuilder()..update(updates))._build();

  _$AttributeValueLookupItem._({this.id, required this.value}) : super._();
  @override
  AttributeValueLookupItem rebuild(
    void Function(AttributeValueLookupItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AttributeValueLookupItemBuilder toBuilder() =>
      AttributeValueLookupItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttributeValueLookupItem &&
        id == other.id &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttributeValueLookupItem')
          ..add('id', id)
          ..add('value', value))
        .toString();
  }
}

class AttributeValueLookupItemBuilder
    implements
        Builder<AttributeValueLookupItem, AttributeValueLookupItemBuilder> {
  _$AttributeValueLookupItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  AttributeValueLookupItemBuilder() {
    AttributeValueLookupItem._defaults(this);
  }

  AttributeValueLookupItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttributeValueLookupItem other) {
    _$v = other as _$AttributeValueLookupItem;
  }

  @override
  void update(void Function(AttributeValueLookupItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttributeValueLookupItem build() => _build();

  _$AttributeValueLookupItem _build() {
    final _$result =
        _$v ??
        _$AttributeValueLookupItem._(
          id: id,
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'AttributeValueLookupItem',
            'value',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
