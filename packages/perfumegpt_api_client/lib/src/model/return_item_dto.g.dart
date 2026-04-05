// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_item_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReturnItemDto extends ReturnItemDto {
  @override
  final String? orderDetailId;
  @override
  final int? quantity;

  factory _$ReturnItemDto([void Function(ReturnItemDtoBuilder)? updates]) =>
      (ReturnItemDtoBuilder()..update(updates))._build();

  _$ReturnItemDto._({this.orderDetailId, this.quantity}) : super._();
  @override
  ReturnItemDto rebuild(void Function(ReturnItemDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReturnItemDtoBuilder toBuilder() => ReturnItemDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReturnItemDto &&
        orderDetailId == other.orderDetailId &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderDetailId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReturnItemDto')
          ..add('orderDetailId', orderDetailId)
          ..add('quantity', quantity))
        .toString();
  }
}

class ReturnItemDtoBuilder
    implements Builder<ReturnItemDto, ReturnItemDtoBuilder> {
  _$ReturnItemDto? _$v;

  String? _orderDetailId;
  String? get orderDetailId => _$this._orderDetailId;
  set orderDetailId(String? orderDetailId) =>
      _$this._orderDetailId = orderDetailId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  ReturnItemDtoBuilder() {
    ReturnItemDto._defaults(this);
  }

  ReturnItemDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderDetailId = $v.orderDetailId;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReturnItemDto other) {
    _$v = other as _$ReturnItemDto;
  }

  @override
  void update(void Function(ReturnItemDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReturnItemDto build() => _build();

  _$ReturnItemDto _build() {
    final _$result =
        _$v ??
        _$ReturnItemDto._(orderDetailId: orderDetailId, quantity: quantity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
