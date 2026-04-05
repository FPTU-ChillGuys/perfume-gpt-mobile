// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fulfill_order_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FulfillOrderRequest extends FulfillOrderRequest {
  @override
  final BuiltList<FulfillOrderItemRequest> items;

  factory _$FulfillOrderRequest([
    void Function(FulfillOrderRequestBuilder)? updates,
  ]) => (FulfillOrderRequestBuilder()..update(updates))._build();

  _$FulfillOrderRequest._({required this.items}) : super._();
  @override
  FulfillOrderRequest rebuild(
    void Function(FulfillOrderRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  FulfillOrderRequestBuilder toBuilder() =>
      FulfillOrderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FulfillOrderRequest && items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'FulfillOrderRequest',
    )..add('items', items)).toString();
  }
}

class FulfillOrderRequestBuilder
    implements Builder<FulfillOrderRequest, FulfillOrderRequestBuilder> {
  _$FulfillOrderRequest? _$v;

  ListBuilder<FulfillOrderItemRequest>? _items;
  ListBuilder<FulfillOrderItemRequest> get items =>
      _$this._items ??= ListBuilder<FulfillOrderItemRequest>();
  set items(ListBuilder<FulfillOrderItemRequest>? items) =>
      _$this._items = items;

  FulfillOrderRequestBuilder() {
    FulfillOrderRequest._defaults(this);
  }

  FulfillOrderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FulfillOrderRequest other) {
    _$v = other as _$FulfillOrderRequest;
  }

  @override
  void update(void Function(FulfillOrderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FulfillOrderRequest build() => _build();

  _$FulfillOrderRequest _build() {
    _$FulfillOrderRequest _$result;
    try {
      _$result = _$v ?? _$FulfillOrderRequest._(items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'FulfillOrderRequest',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
