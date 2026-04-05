// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_olfactory_family_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductOlfactoryFamilyResponse extends ProductOlfactoryFamilyResponse {
  @override
  final int? olfactoryFamilyId;
  @override
  final String name;

  factory _$ProductOlfactoryFamilyResponse([
    void Function(ProductOlfactoryFamilyResponseBuilder)? updates,
  ]) => (ProductOlfactoryFamilyResponseBuilder()..update(updates))._build();

  _$ProductOlfactoryFamilyResponse._({
    this.olfactoryFamilyId,
    required this.name,
  }) : super._();
  @override
  ProductOlfactoryFamilyResponse rebuild(
    void Function(ProductOlfactoryFamilyResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProductOlfactoryFamilyResponseBuilder toBuilder() =>
      ProductOlfactoryFamilyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductOlfactoryFamilyResponse &&
        olfactoryFamilyId == other.olfactoryFamilyId &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, olfactoryFamilyId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductOlfactoryFamilyResponse')
          ..add('olfactoryFamilyId', olfactoryFamilyId)
          ..add('name', name))
        .toString();
  }
}

class ProductOlfactoryFamilyResponseBuilder
    implements
        Builder<
          ProductOlfactoryFamilyResponse,
          ProductOlfactoryFamilyResponseBuilder
        > {
  _$ProductOlfactoryFamilyResponse? _$v;

  int? _olfactoryFamilyId;
  int? get olfactoryFamilyId => _$this._olfactoryFamilyId;
  set olfactoryFamilyId(int? olfactoryFamilyId) =>
      _$this._olfactoryFamilyId = olfactoryFamilyId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ProductOlfactoryFamilyResponseBuilder() {
    ProductOlfactoryFamilyResponse._defaults(this);
  }

  ProductOlfactoryFamilyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _olfactoryFamilyId = $v.olfactoryFamilyId;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductOlfactoryFamilyResponse other) {
    _$v = other as _$ProductOlfactoryFamilyResponse;
  }

  @override
  void update(void Function(ProductOlfactoryFamilyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductOlfactoryFamilyResponse build() => _build();

  _$ProductOlfactoryFamilyResponse _build() {
    final _$result =
        _$v ??
        _$ProductOlfactoryFamilyResponse._(
          olfactoryFamilyId: olfactoryFamilyId,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'ProductOlfactoryFamilyResponse',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
