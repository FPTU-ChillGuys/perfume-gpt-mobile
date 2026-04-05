// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductAttributeDto extends ProductAttributeDto {
  @override
  final int? attributeId;
  @override
  final int? valueId;

  factory _$ProductAttributeDto([
    void Function(ProductAttributeDtoBuilder)? updates,
  ]) => (ProductAttributeDtoBuilder()..update(updates))._build();

  _$ProductAttributeDto._({this.attributeId, this.valueId}) : super._();
  @override
  ProductAttributeDto rebuild(
    void Function(ProductAttributeDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProductAttributeDtoBuilder toBuilder() =>
      ProductAttributeDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductAttributeDto &&
        attributeId == other.attributeId &&
        valueId == other.valueId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeId.hashCode);
    _$hash = $jc(_$hash, valueId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductAttributeDto')
          ..add('attributeId', attributeId)
          ..add('valueId', valueId))
        .toString();
  }
}

class ProductAttributeDtoBuilder
    implements Builder<ProductAttributeDto, ProductAttributeDtoBuilder> {
  _$ProductAttributeDto? _$v;

  int? _attributeId;
  int? get attributeId => _$this._attributeId;
  set attributeId(int? attributeId) => _$this._attributeId = attributeId;

  int? _valueId;
  int? get valueId => _$this._valueId;
  set valueId(int? valueId) => _$this._valueId = valueId;

  ProductAttributeDtoBuilder() {
    ProductAttributeDto._defaults(this);
  }

  ProductAttributeDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeId = $v.attributeId;
      _valueId = $v.valueId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductAttributeDto other) {
    _$v = other as _$ProductAttributeDto;
  }

  @override
  void update(void Function(ProductAttributeDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductAttributeDto build() => _build();

  _$ProductAttributeDto _build() {
    final _$result =
        _$v ??
        _$ProductAttributeDto._(attributeId: attributeId, valueId: valueId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
