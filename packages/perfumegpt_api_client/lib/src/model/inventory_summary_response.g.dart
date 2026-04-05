// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_summary_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InventorySummaryResponse extends InventorySummaryResponse {
  @override
  final int? totalVariants;
  @override
  final int? totalStockQuantity;
  @override
  final int? lowStockVariantsCount;
  @override
  final int? totalBatches;
  @override
  final int? expiredBatchesCount;
  @override
  final int? expiringSoonCount;

  factory _$InventorySummaryResponse([
    void Function(InventorySummaryResponseBuilder)? updates,
  ]) => (InventorySummaryResponseBuilder()..update(updates))._build();

  _$InventorySummaryResponse._({
    this.totalVariants,
    this.totalStockQuantity,
    this.lowStockVariantsCount,
    this.totalBatches,
    this.expiredBatchesCount,
    this.expiringSoonCount,
  }) : super._();
  @override
  InventorySummaryResponse rebuild(
    void Function(InventorySummaryResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InventorySummaryResponseBuilder toBuilder() =>
      InventorySummaryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InventorySummaryResponse &&
        totalVariants == other.totalVariants &&
        totalStockQuantity == other.totalStockQuantity &&
        lowStockVariantsCount == other.lowStockVariantsCount &&
        totalBatches == other.totalBatches &&
        expiredBatchesCount == other.expiredBatchesCount &&
        expiringSoonCount == other.expiringSoonCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalVariants.hashCode);
    _$hash = $jc(_$hash, totalStockQuantity.hashCode);
    _$hash = $jc(_$hash, lowStockVariantsCount.hashCode);
    _$hash = $jc(_$hash, totalBatches.hashCode);
    _$hash = $jc(_$hash, expiredBatchesCount.hashCode);
    _$hash = $jc(_$hash, expiringSoonCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InventorySummaryResponse')
          ..add('totalVariants', totalVariants)
          ..add('totalStockQuantity', totalStockQuantity)
          ..add('lowStockVariantsCount', lowStockVariantsCount)
          ..add('totalBatches', totalBatches)
          ..add('expiredBatchesCount', expiredBatchesCount)
          ..add('expiringSoonCount', expiringSoonCount))
        .toString();
  }
}

class InventorySummaryResponseBuilder
    implements
        Builder<InventorySummaryResponse, InventorySummaryResponseBuilder> {
  _$InventorySummaryResponse? _$v;

  int? _totalVariants;
  int? get totalVariants => _$this._totalVariants;
  set totalVariants(int? totalVariants) =>
      _$this._totalVariants = totalVariants;

  int? _totalStockQuantity;
  int? get totalStockQuantity => _$this._totalStockQuantity;
  set totalStockQuantity(int? totalStockQuantity) =>
      _$this._totalStockQuantity = totalStockQuantity;

  int? _lowStockVariantsCount;
  int? get lowStockVariantsCount => _$this._lowStockVariantsCount;
  set lowStockVariantsCount(int? lowStockVariantsCount) =>
      _$this._lowStockVariantsCount = lowStockVariantsCount;

  int? _totalBatches;
  int? get totalBatches => _$this._totalBatches;
  set totalBatches(int? totalBatches) => _$this._totalBatches = totalBatches;

  int? _expiredBatchesCount;
  int? get expiredBatchesCount => _$this._expiredBatchesCount;
  set expiredBatchesCount(int? expiredBatchesCount) =>
      _$this._expiredBatchesCount = expiredBatchesCount;

  int? _expiringSoonCount;
  int? get expiringSoonCount => _$this._expiringSoonCount;
  set expiringSoonCount(int? expiringSoonCount) =>
      _$this._expiringSoonCount = expiringSoonCount;

  InventorySummaryResponseBuilder() {
    InventorySummaryResponse._defaults(this);
  }

  InventorySummaryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalVariants = $v.totalVariants;
      _totalStockQuantity = $v.totalStockQuantity;
      _lowStockVariantsCount = $v.lowStockVariantsCount;
      _totalBatches = $v.totalBatches;
      _expiredBatchesCount = $v.expiredBatchesCount;
      _expiringSoonCount = $v.expiringSoonCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InventorySummaryResponse other) {
    _$v = other as _$InventorySummaryResponse;
  }

  @override
  void update(void Function(InventorySummaryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InventorySummaryResponse build() => _build();

  _$InventorySummaryResponse _build() {
    final _$result =
        _$v ??
        _$InventorySummaryResponse._(
          totalVariants: totalVariants,
          totalStockQuantity: totalStockQuantity,
          lowStockVariantsCount: lowStockVariantsCount,
          totalBatches: totalBatches,
          expiredBatchesCount: expiredBatchesCount,
          expiringSoonCount: expiringSoonCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
