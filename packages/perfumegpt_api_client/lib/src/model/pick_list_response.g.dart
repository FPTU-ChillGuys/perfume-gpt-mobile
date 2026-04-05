// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_list_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PickListResponse extends PickListResponse {
  @override
  final String? orderId;
  @override
  final String code;
  @override
  final BuiltList<PickListItemResponse> items;

  factory _$PickListResponse([
    void Function(PickListResponseBuilder)? updates,
  ]) => (PickListResponseBuilder()..update(updates))._build();

  _$PickListResponse._({this.orderId, required this.code, required this.items})
    : super._();
  @override
  PickListResponse rebuild(void Function(PickListResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PickListResponseBuilder toBuilder() =>
      PickListResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PickListResponse &&
        orderId == other.orderId &&
        code == other.code &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PickListResponse')
          ..add('orderId', orderId)
          ..add('code', code)
          ..add('items', items))
        .toString();
  }
}

class PickListResponseBuilder
    implements Builder<PickListResponse, PickListResponseBuilder> {
  _$PickListResponse? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ListBuilder<PickListItemResponse>? _items;
  ListBuilder<PickListItemResponse> get items =>
      _$this._items ??= ListBuilder<PickListItemResponse>();
  set items(ListBuilder<PickListItemResponse>? items) => _$this._items = items;

  PickListResponseBuilder() {
    PickListResponse._defaults(this);
  }

  PickListResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _code = $v.code;
      _items = $v.items.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PickListResponse other) {
    _$v = other as _$PickListResponse;
  }

  @override
  void update(void Function(PickListResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PickListResponse build() => _build();

  _$PickListResponse _build() {
    _$PickListResponse _$result;
    try {
      _$result =
          _$v ??
          _$PickListResponse._(
            orderId: orderId,
            code: BuiltValueNullFieldError.checkNotNull(
              code,
              r'PickListResponse',
              'code',
            ),
            items: items.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PickListResponse',
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
