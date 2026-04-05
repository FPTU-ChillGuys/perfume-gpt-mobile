// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductAttributeResponse extends ProductAttributeResponse {
  @override
  final String? id;
  @override
  final int? attributeId;
  @override
  final int? valueId;
  @override
  final String attribute;
  @override
  final String? description;
  @override
  final String value;

  factory _$ProductAttributeResponse([
    void Function(ProductAttributeResponseBuilder)? updates,
  ]) => (ProductAttributeResponseBuilder()..update(updates))._build();

  _$ProductAttributeResponse._({
    this.id,
    this.attributeId,
    this.valueId,
    required this.attribute,
    this.description,
    required this.value,
  }) : super._();
  @override
  ProductAttributeResponse rebuild(
    void Function(ProductAttributeResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProductAttributeResponseBuilder toBuilder() =>
      ProductAttributeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductAttributeResponse &&
        id == other.id &&
        attributeId == other.attributeId &&
        valueId == other.valueId &&
        attribute == other.attribute &&
        description == other.description &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, attributeId.hashCode);
    _$hash = $jc(_$hash, valueId.hashCode);
    _$hash = $jc(_$hash, attribute.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductAttributeResponse')
          ..add('id', id)
          ..add('attributeId', attributeId)
          ..add('valueId', valueId)
          ..add('attribute', attribute)
          ..add('description', description)
          ..add('value', value))
        .toString();
  }
}

class ProductAttributeResponseBuilder
    implements
        Builder<ProductAttributeResponse, ProductAttributeResponseBuilder> {
  _$ProductAttributeResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _attributeId;
  int? get attributeId => _$this._attributeId;
  set attributeId(int? attributeId) => _$this._attributeId = attributeId;

  int? _valueId;
  int? get valueId => _$this._valueId;
  set valueId(int? valueId) => _$this._valueId = valueId;

  String? _attribute;
  String? get attribute => _$this._attribute;
  set attribute(String? attribute) => _$this._attribute = attribute;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  ProductAttributeResponseBuilder() {
    ProductAttributeResponse._defaults(this);
  }

  ProductAttributeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _attributeId = $v.attributeId;
      _valueId = $v.valueId;
      _attribute = $v.attribute;
      _description = $v.description;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductAttributeResponse other) {
    _$v = other as _$ProductAttributeResponse;
  }

  @override
  void update(void Function(ProductAttributeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductAttributeResponse build() => _build();

  _$ProductAttributeResponse _build() {
    final _$result =
        _$v ??
        _$ProductAttributeResponse._(
          id: id,
          attributeId: attributeId,
          valueId: valueId,
          attribute: BuiltValueNullFieldError.checkNotNull(
            attribute,
            r'ProductAttributeResponse',
            'attribute',
          ),
          description: description,
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'ProductAttributeResponse',
            'value',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
