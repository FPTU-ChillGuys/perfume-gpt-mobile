// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_items_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCartItemsResponse extends GetCartItemsResponse {
  @override
  final BuiltList<GetCartItemResponse> items;

  factory _$GetCartItemsResponse([
    void Function(GetCartItemsResponseBuilder)? updates,
  ]) => (GetCartItemsResponseBuilder()..update(updates))._build();

  _$GetCartItemsResponse._({required this.items}) : super._();
  @override
  GetCartItemsResponse rebuild(
    void Function(GetCartItemsResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetCartItemsResponseBuilder toBuilder() =>
      GetCartItemsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCartItemsResponse && items == other.items;
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
      r'GetCartItemsResponse',
    )..add('items', items)).toString();
  }
}

class GetCartItemsResponseBuilder
    implements Builder<GetCartItemsResponse, GetCartItemsResponseBuilder> {
  _$GetCartItemsResponse? _$v;

  ListBuilder<GetCartItemResponse>? _items;
  ListBuilder<GetCartItemResponse> get items =>
      _$this._items ??= ListBuilder<GetCartItemResponse>();
  set items(ListBuilder<GetCartItemResponse>? items) => _$this._items = items;

  GetCartItemsResponseBuilder() {
    GetCartItemsResponse._defaults(this);
  }

  GetCartItemsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCartItemsResponse other) {
    _$v = other as _$GetCartItemsResponse;
  }

  @override
  void update(void Function(GetCartItemsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCartItemsResponse build() => _build();

  _$GetCartItemsResponse _build() {
    _$GetCartItemsResponse _$result;
    try {
      _$result = _$v ?? _$GetCartItemsResponse._(items: items.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetCartItemsResponse',
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
