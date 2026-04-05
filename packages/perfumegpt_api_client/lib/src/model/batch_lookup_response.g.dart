// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_lookup_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchLookupResponse extends BatchLookupResponse {
  @override
  final String? id;
  @override
  final String batchCode;
  @override
  final String? variantId;
  @override
  final String sku;

  factory _$BatchLookupResponse([
    void Function(BatchLookupResponseBuilder)? updates,
  ]) => (BatchLookupResponseBuilder()..update(updates))._build();

  _$BatchLookupResponse._({
    this.id,
    required this.batchCode,
    this.variantId,
    required this.sku,
  }) : super._();
  @override
  BatchLookupResponse rebuild(
    void Function(BatchLookupResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BatchLookupResponseBuilder toBuilder() =>
      BatchLookupResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchLookupResponse &&
        id == other.id &&
        batchCode == other.batchCode &&
        variantId == other.variantId &&
        sku == other.sku;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, batchCode.hashCode);
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, sku.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatchLookupResponse')
          ..add('id', id)
          ..add('batchCode', batchCode)
          ..add('variantId', variantId)
          ..add('sku', sku))
        .toString();
  }
}

class BatchLookupResponseBuilder
    implements Builder<BatchLookupResponse, BatchLookupResponseBuilder> {
  _$BatchLookupResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _batchCode;
  String? get batchCode => _$this._batchCode;
  set batchCode(String? batchCode) => _$this._batchCode = batchCode;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  String? _sku;
  String? get sku => _$this._sku;
  set sku(String? sku) => _$this._sku = sku;

  BatchLookupResponseBuilder() {
    BatchLookupResponse._defaults(this);
  }

  BatchLookupResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _batchCode = $v.batchCode;
      _variantId = $v.variantId;
      _sku = $v.sku;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchLookupResponse other) {
    _$v = other as _$BatchLookupResponse;
  }

  @override
  void update(void Function(BatchLookupResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchLookupResponse build() => _build();

  _$BatchLookupResponse _build() {
    final _$result =
        _$v ??
        _$BatchLookupResponse._(
          id: id,
          batchCode: BuiltValueNullFieldError.checkNotNull(
            batchCode,
            r'BatchLookupResponse',
            'batchCode',
          ),
          variantId: variantId,
          sku: BuiltValueNullFieldError.checkNotNull(
            sku,
            r'BatchLookupResponse',
            'sku',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
