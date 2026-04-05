// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportDetailResponse extends ImportDetailResponse {
  @override
  final String? id;
  @override
  final String? variantId;
  @override
  final String variantName;
  @override
  final String variantSku;
  @override
  final int? expectedQuantity;
  @override
  final num? unitPrice;
  @override
  final num? totalPrice;
  @override
  final int? rejectedQuantity;
  @override
  final String? note;
  @override
  final BuiltList<BatchResponse> batches;

  factory _$ImportDetailResponse([
    void Function(ImportDetailResponseBuilder)? updates,
  ]) => (ImportDetailResponseBuilder()..update(updates))._build();

  _$ImportDetailResponse._({
    this.id,
    this.variantId,
    required this.variantName,
    required this.variantSku,
    this.expectedQuantity,
    this.unitPrice,
    this.totalPrice,
    this.rejectedQuantity,
    this.note,
    required this.batches,
  }) : super._();
  @override
  ImportDetailResponse rebuild(
    void Function(ImportDetailResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ImportDetailResponseBuilder toBuilder() =>
      ImportDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportDetailResponse &&
        id == other.id &&
        variantId == other.variantId &&
        variantName == other.variantName &&
        variantSku == other.variantSku &&
        expectedQuantity == other.expectedQuantity &&
        unitPrice == other.unitPrice &&
        totalPrice == other.totalPrice &&
        rejectedQuantity == other.rejectedQuantity &&
        note == other.note &&
        batches == other.batches;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, variantName.hashCode);
    _$hash = $jc(_$hash, variantSku.hashCode);
    _$hash = $jc(_$hash, expectedQuantity.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, totalPrice.hashCode);
    _$hash = $jc(_$hash, rejectedQuantity.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, batches.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportDetailResponse')
          ..add('id', id)
          ..add('variantId', variantId)
          ..add('variantName', variantName)
          ..add('variantSku', variantSku)
          ..add('expectedQuantity', expectedQuantity)
          ..add('unitPrice', unitPrice)
          ..add('totalPrice', totalPrice)
          ..add('rejectedQuantity', rejectedQuantity)
          ..add('note', note)
          ..add('batches', batches))
        .toString();
  }
}

class ImportDetailResponseBuilder
    implements Builder<ImportDetailResponse, ImportDetailResponseBuilder> {
  _$ImportDetailResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  String? _variantName;
  String? get variantName => _$this._variantName;
  set variantName(String? variantName) => _$this._variantName = variantName;

  String? _variantSku;
  String? get variantSku => _$this._variantSku;
  set variantSku(String? variantSku) => _$this._variantSku = variantSku;

  int? _expectedQuantity;
  int? get expectedQuantity => _$this._expectedQuantity;
  set expectedQuantity(int? expectedQuantity) =>
      _$this._expectedQuantity = expectedQuantity;

  num? _unitPrice;
  num? get unitPrice => _$this._unitPrice;
  set unitPrice(num? unitPrice) => _$this._unitPrice = unitPrice;

  num? _totalPrice;
  num? get totalPrice => _$this._totalPrice;
  set totalPrice(num? totalPrice) => _$this._totalPrice = totalPrice;

  int? _rejectedQuantity;
  int? get rejectedQuantity => _$this._rejectedQuantity;
  set rejectedQuantity(int? rejectedQuantity) =>
      _$this._rejectedQuantity = rejectedQuantity;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  ListBuilder<BatchResponse>? _batches;
  ListBuilder<BatchResponse> get batches =>
      _$this._batches ??= ListBuilder<BatchResponse>();
  set batches(ListBuilder<BatchResponse>? batches) => _$this._batches = batches;

  ImportDetailResponseBuilder() {
    ImportDetailResponse._defaults(this);
  }

  ImportDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _variantId = $v.variantId;
      _variantName = $v.variantName;
      _variantSku = $v.variantSku;
      _expectedQuantity = $v.expectedQuantity;
      _unitPrice = $v.unitPrice;
      _totalPrice = $v.totalPrice;
      _rejectedQuantity = $v.rejectedQuantity;
      _note = $v.note;
      _batches = $v.batches.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportDetailResponse other) {
    _$v = other as _$ImportDetailResponse;
  }

  @override
  void update(void Function(ImportDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportDetailResponse build() => _build();

  _$ImportDetailResponse _build() {
    _$ImportDetailResponse _$result;
    try {
      _$result =
          _$v ??
          _$ImportDetailResponse._(
            id: id,
            variantId: variantId,
            variantName: BuiltValueNullFieldError.checkNotNull(
              variantName,
              r'ImportDetailResponse',
              'variantName',
            ),
            variantSku: BuiltValueNullFieldError.checkNotNull(
              variantSku,
              r'ImportDetailResponse',
              'variantSku',
            ),
            expectedQuantity: expectedQuantity,
            unitPrice: unitPrice,
            totalPrice: totalPrice,
            rejectedQuantity: rejectedQuantity,
            note: note,
            batches: batches.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'batches';
        batches.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ImportDetailResponse',
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
