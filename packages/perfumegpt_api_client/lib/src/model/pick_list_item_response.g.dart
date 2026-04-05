// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_list_item_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PickListItemResponse extends PickListItemResponse {
  @override
  final String? orderDetailId;
  @override
  final String? variantId;
  @override
  final String variantName;
  @override
  final int? quantity;
  @override
  final BuiltList<PickListBatchInfo> batches;

  factory _$PickListItemResponse([
    void Function(PickListItemResponseBuilder)? updates,
  ]) => (PickListItemResponseBuilder()..update(updates))._build();

  _$PickListItemResponse._({
    this.orderDetailId,
    this.variantId,
    required this.variantName,
    this.quantity,
    required this.batches,
  }) : super._();
  @override
  PickListItemResponse rebuild(
    void Function(PickListItemResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PickListItemResponseBuilder toBuilder() =>
      PickListItemResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PickListItemResponse &&
        orderDetailId == other.orderDetailId &&
        variantId == other.variantId &&
        variantName == other.variantName &&
        quantity == other.quantity &&
        batches == other.batches;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderDetailId.hashCode);
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, variantName.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, batches.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PickListItemResponse')
          ..add('orderDetailId', orderDetailId)
          ..add('variantId', variantId)
          ..add('variantName', variantName)
          ..add('quantity', quantity)
          ..add('batches', batches))
        .toString();
  }
}

class PickListItemResponseBuilder
    implements Builder<PickListItemResponse, PickListItemResponseBuilder> {
  _$PickListItemResponse? _$v;

  String? _orderDetailId;
  String? get orderDetailId => _$this._orderDetailId;
  set orderDetailId(String? orderDetailId) =>
      _$this._orderDetailId = orderDetailId;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  String? _variantName;
  String? get variantName => _$this._variantName;
  set variantName(String? variantName) => _$this._variantName = variantName;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  ListBuilder<PickListBatchInfo>? _batches;
  ListBuilder<PickListBatchInfo> get batches =>
      _$this._batches ??= ListBuilder<PickListBatchInfo>();
  set batches(ListBuilder<PickListBatchInfo>? batches) =>
      _$this._batches = batches;

  PickListItemResponseBuilder() {
    PickListItemResponse._defaults(this);
  }

  PickListItemResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderDetailId = $v.orderDetailId;
      _variantId = $v.variantId;
      _variantName = $v.variantName;
      _quantity = $v.quantity;
      _batches = $v.batches.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PickListItemResponse other) {
    _$v = other as _$PickListItemResponse;
  }

  @override
  void update(void Function(PickListItemResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PickListItemResponse build() => _build();

  _$PickListItemResponse _build() {
    _$PickListItemResponse _$result;
    try {
      _$result =
          _$v ??
          _$PickListItemResponse._(
            orderDetailId: orderDetailId,
            variantId: variantId,
            variantName: BuiltValueNullFieldError.checkNotNull(
              variantName,
              r'PickListItemResponse',
              'variantName',
            ),
            quantity: quantity,
            batches: batches.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'batches';
        batches.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PickListItemResponse',
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
