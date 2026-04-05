// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_detail_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateOrderDetailRequest extends CreateOrderDetailRequest {
  @override
  final String variantId;
  @override
  final int? quantity;

  factory _$CreateOrderDetailRequest([
    void Function(CreateOrderDetailRequestBuilder)? updates,
  ]) => (CreateOrderDetailRequestBuilder()..update(updates))._build();

  _$CreateOrderDetailRequest._({required this.variantId, this.quantity})
    : super._();
  @override
  CreateOrderDetailRequest rebuild(
    void Function(CreateOrderDetailRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateOrderDetailRequestBuilder toBuilder() =>
      CreateOrderDetailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateOrderDetailRequest &&
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
    return (newBuiltValueToStringHelper(r'CreateOrderDetailRequest')
          ..add('variantId', variantId)
          ..add('quantity', quantity))
        .toString();
  }
}

class CreateOrderDetailRequestBuilder
    implements
        Builder<CreateOrderDetailRequest, CreateOrderDetailRequestBuilder> {
  _$CreateOrderDetailRequest? _$v;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  CreateOrderDetailRequestBuilder() {
    CreateOrderDetailRequest._defaults(this);
  }

  CreateOrderDetailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _variantId = $v.variantId;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateOrderDetailRequest other) {
    _$v = other as _$CreateOrderDetailRequest;
  }

  @override
  void update(void Function(CreateOrderDetailRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOrderDetailRequest build() => _build();

  _$CreateOrderDetailRequest _build() {
    final _$result =
        _$v ??
        _$CreateOrderDetailRequest._(
          variantId: BuiltValueNullFieldError.checkNotNull(
            variantId,
            r'CreateOrderDetailRequest',
            'variantId',
          ),
          quantity: quantity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
