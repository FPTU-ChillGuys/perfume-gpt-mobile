// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_levels_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InventoryLevelsResponse extends InventoryLevelsResponse {
  @override
  final int? totalVariants;
  @override
  final int? totalStockQuantity;
  @override
  final int? totalAvailableQuantity;
  @override
  final int? lowStockVariantsCount;
  @override
  final int? outOfStockVariantsCount;
  @override
  final int? totalBatches;
  @override
  final int? expiredBatchesCount;
  @override
  final int? expiringSoonCount;

  factory _$InventoryLevelsResponse([
    void Function(InventoryLevelsResponseBuilder)? updates,
  ]) => (InventoryLevelsResponseBuilder()..update(updates))._build();

  _$InventoryLevelsResponse._({
    this.totalVariants,
    this.totalStockQuantity,
    this.totalAvailableQuantity,
    this.lowStockVariantsCount,
    this.outOfStockVariantsCount,
    this.totalBatches,
    this.expiredBatchesCount,
    this.expiringSoonCount,
  }) : super._();
  @override
  InventoryLevelsResponse rebuild(
    void Function(InventoryLevelsResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InventoryLevelsResponseBuilder toBuilder() =>
      InventoryLevelsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InventoryLevelsResponse &&
        totalVariants == other.totalVariants &&
        totalStockQuantity == other.totalStockQuantity &&
        totalAvailableQuantity == other.totalAvailableQuantity &&
        lowStockVariantsCount == other.lowStockVariantsCount &&
        outOfStockVariantsCount == other.outOfStockVariantsCount &&
        totalBatches == other.totalBatches &&
        expiredBatchesCount == other.expiredBatchesCount &&
        expiringSoonCount == other.expiringSoonCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, totalVariants.hashCode);
    _$hash = $jc(_$hash, totalStockQuantity.hashCode);
    _$hash = $jc(_$hash, totalAvailableQuantity.hashCode);
    _$hash = $jc(_$hash, lowStockVariantsCount.hashCode);
    _$hash = $jc(_$hash, outOfStockVariantsCount.hashCode);
    _$hash = $jc(_$hash, totalBatches.hashCode);
    _$hash = $jc(_$hash, expiredBatchesCount.hashCode);
    _$hash = $jc(_$hash, expiringSoonCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InventoryLevelsResponse')
          ..add('totalVariants', totalVariants)
          ..add('totalStockQuantity', totalStockQuantity)
          ..add('totalAvailableQuantity', totalAvailableQuantity)
          ..add('lowStockVariantsCount', lowStockVariantsCount)
          ..add('outOfStockVariantsCount', outOfStockVariantsCount)
          ..add('totalBatches', totalBatches)
          ..add('expiredBatchesCount', expiredBatchesCount)
          ..add('expiringSoonCount', expiringSoonCount))
        .toString();
  }
}

class InventoryLevelsResponseBuilder
    implements
        Builder<InventoryLevelsResponse, InventoryLevelsResponseBuilder> {
  _$InventoryLevelsResponse? _$v;

  int? _totalVariants;
  int? get totalVariants => _$this._totalVariants;
  set totalVariants(int? totalVariants) =>
      _$this._totalVariants = totalVariants;

  int? _totalStockQuantity;
  int? get totalStockQuantity => _$this._totalStockQuantity;
  set totalStockQuantity(int? totalStockQuantity) =>
      _$this._totalStockQuantity = totalStockQuantity;

  int? _totalAvailableQuantity;
  int? get totalAvailableQuantity => _$this._totalAvailableQuantity;
  set totalAvailableQuantity(int? totalAvailableQuantity) =>
      _$this._totalAvailableQuantity = totalAvailableQuantity;

  int? _lowStockVariantsCount;
  int? get lowStockVariantsCount => _$this._lowStockVariantsCount;
  set lowStockVariantsCount(int? lowStockVariantsCount) =>
      _$this._lowStockVariantsCount = lowStockVariantsCount;

  int? _outOfStockVariantsCount;
  int? get outOfStockVariantsCount => _$this._outOfStockVariantsCount;
  set outOfStockVariantsCount(int? outOfStockVariantsCount) =>
      _$this._outOfStockVariantsCount = outOfStockVariantsCount;

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

  InventoryLevelsResponseBuilder() {
    InventoryLevelsResponse._defaults(this);
  }

  InventoryLevelsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalVariants = $v.totalVariants;
      _totalStockQuantity = $v.totalStockQuantity;
      _totalAvailableQuantity = $v.totalAvailableQuantity;
      _lowStockVariantsCount = $v.lowStockVariantsCount;
      _outOfStockVariantsCount = $v.outOfStockVariantsCount;
      _totalBatches = $v.totalBatches;
      _expiredBatchesCount = $v.expiredBatchesCount;
      _expiringSoonCount = $v.expiringSoonCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InventoryLevelsResponse other) {
    _$v = other as _$InventoryLevelsResponse;
  }

  @override
  void update(void Function(InventoryLevelsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InventoryLevelsResponse build() => _build();

  _$InventoryLevelsResponse _build() {
    final _$result =
        _$v ??
        _$InventoryLevelsResponse._(
          totalVariants: totalVariants,
          totalStockQuantity: totalStockQuantity,
          totalAvailableQuantity: totalAvailableQuantity,
          lowStockVariantsCount: lowStockVariantsCount,
          outOfStockVariantsCount: outOfStockVariantsCount,
          totalBatches: totalBatches,
          expiredBatchesCount: expiredBatchesCount,
          expiringSoonCount: expiringSoonCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
