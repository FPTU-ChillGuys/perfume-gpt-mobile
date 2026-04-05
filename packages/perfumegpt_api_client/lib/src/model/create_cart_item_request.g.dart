// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cart_item_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCartItemRequest extends CreateCartItemRequest {
  @override
  final String variantId;
  @override
  final int? quantity;

  factory _$CreateCartItemRequest([
    void Function(CreateCartItemRequestBuilder)? updates,
  ]) => (CreateCartItemRequestBuilder()..update(updates))._build();

  _$CreateCartItemRequest._({required this.variantId, this.quantity})
    : super._();
  @override
  CreateCartItemRequest rebuild(
    void Function(CreateCartItemRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateCartItemRequestBuilder toBuilder() =>
      CreateCartItemRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCartItemRequest &&
        variantId == other.variantId &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateCartItemRequest')
          ..add('variantId', variantId)
          ..add('quantity', quantity))
        .toString();
  }
}

class CreateCartItemRequestBuilder
    implements Builder<CreateCartItemRequest, CreateCartItemRequestBuilder> {
  _$CreateCartItemRequest? _$v;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  CreateCartItemRequestBuilder() {
    CreateCartItemRequest._defaults(this);
  }

  CreateCartItemRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _variantId = $v.variantId;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCartItemRequest other) {
    _$v = other as _$CreateCartItemRequest;
  }

  @override
  void update(void Function(CreateCartItemRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCartItemRequest build() => _build();

  _$CreateCartItemRequest _build() {
    final _$result =
        _$v ??
        _$CreateCartItemRequest._(
          variantId: BuiltValueNullFieldError.checkNotNull(
            variantId,
            r'CreateCartItemRequest',
            'variantId',
          ),
          quantity: quantity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
