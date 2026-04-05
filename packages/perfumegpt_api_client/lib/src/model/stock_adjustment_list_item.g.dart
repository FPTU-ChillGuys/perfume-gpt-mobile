// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_adjustment_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StockAdjustmentListItem extends StockAdjustmentListItem {
  @override
  final String? id;
  @override
  final String createdByName;
  @override
  final DateTime? adjustmentDate;
  @override
  final StockAdjustmentReason? reason;
  @override
  final StockAdjustmentStatus? status;
  @override
  final int? totalItems;
  @override
  final DateTime? createdAt;

  factory _$StockAdjustmentListItem([
    void Function(StockAdjustmentListItemBuilder)? updates,
  ]) => (StockAdjustmentListItemBuilder()..update(updates))._build();

  _$StockAdjustmentListItem._({
    this.id,
    required this.createdByName,
    this.adjustmentDate,
    this.reason,
    this.status,
    this.totalItems,
    this.createdAt,
  }) : super._();
  @override
  StockAdjustmentListItem rebuild(
    void Function(StockAdjustmentListItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StockAdjustmentListItemBuilder toBuilder() =>
      StockAdjustmentListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StockAdjustmentListItem &&
        id == other.id &&
        createdByName == other.createdByName &&
        adjustmentDate == other.adjustmentDate &&
        reason == other.reason &&
        status == other.status &&
        totalItems == other.totalItems &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdByName.hashCode);
    _$hash = $jc(_$hash, adjustmentDate.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, totalItems.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StockAdjustmentListItem')
          ..add('id', id)
          ..add('createdByName', createdByName)
          ..add('adjustmentDate', adjustmentDate)
          ..add('reason', reason)
          ..add('status', status)
          ..add('totalItems', totalItems)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class StockAdjustmentListItemBuilder
    implements
        Builder<StockAdjustmentListItem, StockAdjustmentListItemBuilder> {
  _$StockAdjustmentListItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _createdByName;
  String? get createdByName => _$this._createdByName;
  set createdByName(String? createdByName) =>
      _$this._createdByName = createdByName;

  DateTime? _adjustmentDate;
  DateTime? get adjustmentDate => _$this._adjustmentDate;
  set adjustmentDate(DateTime? adjustmentDate) =>
      _$this._adjustmentDate = adjustmentDate;

  StockAdjustmentReason? _reason;
  StockAdjustmentReason? get reason => _$this._reason;
  set reason(StockAdjustmentReason? reason) => _$this._reason = reason;

  StockAdjustmentStatus? _status;
  StockAdjustmentStatus? get status => _$this._status;
  set status(StockAdjustmentStatus? status) => _$this._status = status;

  int? _totalItems;
  int? get totalItems => _$this._totalItems;
  set totalItems(int? totalItems) => _$this._totalItems = totalItems;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  StockAdjustmentListItemBuilder() {
    StockAdjustmentListItem._defaults(this);
  }

  StockAdjustmentListItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdByName = $v.createdByName;
      _adjustmentDate = $v.adjustmentDate;
      _reason = $v.reason;
      _status = $v.status;
      _totalItems = $v.totalItems;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StockAdjustmentListItem other) {
    _$v = other as _$StockAdjustmentListItem;
  }

  @override
  void update(void Function(StockAdjustmentListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StockAdjustmentListItem build() => _build();

  _$StockAdjustmentListItem _build() {
    final _$result =
        _$v ??
        _$StockAdjustmentListItem._(
          id: id,
          createdByName: BuiltValueNullFieldError.checkNotNull(
            createdByName,
            r'StockAdjustmentListItem',
            'createdByName',
          ),
          adjustmentDate: adjustmentDate,
          reason: reason,
          status: status,
          totalItems: totalItems,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
