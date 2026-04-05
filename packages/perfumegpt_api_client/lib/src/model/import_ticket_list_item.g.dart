// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_ticket_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportTicketListItem extends ImportTicketListItem {
  @override
  final String? id;
  @override
  final String createdByName;
  @override
  final String? verifiedByName;
  @override
  final String supplierName;
  @override
  final DateTime? expectedArrivalDate;
  @override
  final DateTime? actualImportDate;
  @override
  final num? totalCost;
  @override
  final ImportStatus? status;
  @override
  final int? totalItems;
  @override
  final DateTime? createdAt;

  factory _$ImportTicketListItem([
    void Function(ImportTicketListItemBuilder)? updates,
  ]) => (ImportTicketListItemBuilder()..update(updates))._build();

  _$ImportTicketListItem._({
    this.id,
    required this.createdByName,
    this.verifiedByName,
    required this.supplierName,
    this.expectedArrivalDate,
    this.actualImportDate,
    this.totalCost,
    this.status,
    this.totalItems,
    this.createdAt,
  }) : super._();
  @override
  ImportTicketListItem rebuild(
    void Function(ImportTicketListItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ImportTicketListItemBuilder toBuilder() =>
      ImportTicketListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportTicketListItem &&
        id == other.id &&
        createdByName == other.createdByName &&
        verifiedByName == other.verifiedByName &&
        supplierName == other.supplierName &&
        expectedArrivalDate == other.expectedArrivalDate &&
        actualImportDate == other.actualImportDate &&
        totalCost == other.totalCost &&
        status == other.status &&
        totalItems == other.totalItems &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdByName.hashCode);
    _$hash = $jc(_$hash, verifiedByName.hashCode);
    _$hash = $jc(_$hash, supplierName.hashCode);
    _$hash = $jc(_$hash, expectedArrivalDate.hashCode);
    _$hash = $jc(_$hash, actualImportDate.hashCode);
    _$hash = $jc(_$hash, totalCost.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, totalItems.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportTicketListItem')
          ..add('id', id)
          ..add('createdByName', createdByName)
          ..add('verifiedByName', verifiedByName)
          ..add('supplierName', supplierName)
          ..add('expectedArrivalDate', expectedArrivalDate)
          ..add('actualImportDate', actualImportDate)
          ..add('totalCost', totalCost)
          ..add('status', status)
          ..add('totalItems', totalItems)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ImportTicketListItemBuilder
    implements Builder<ImportTicketListItem, ImportTicketListItemBuilder> {
  _$ImportTicketListItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _createdByName;
  String? get createdByName => _$this._createdByName;
  set createdByName(String? createdByName) =>
      _$this._createdByName = createdByName;

  String? _verifiedByName;
  String? get verifiedByName => _$this._verifiedByName;
  set verifiedByName(String? verifiedByName) =>
      _$this._verifiedByName = verifiedByName;

  String? _supplierName;
  String? get supplierName => _$this._supplierName;
  set supplierName(String? supplierName) => _$this._supplierName = supplierName;

  DateTime? _expectedArrivalDate;
  DateTime? get expectedArrivalDate => _$this._expectedArrivalDate;
  set expectedArrivalDate(DateTime? expectedArrivalDate) =>
      _$this._expectedArrivalDate = expectedArrivalDate;

  DateTime? _actualImportDate;
  DateTime? get actualImportDate => _$this._actualImportDate;
  set actualImportDate(DateTime? actualImportDate) =>
      _$this._actualImportDate = actualImportDate;

  num? _totalCost;
  num? get totalCost => _$this._totalCost;
  set totalCost(num? totalCost) => _$this._totalCost = totalCost;

  ImportStatus? _status;
  ImportStatus? get status => _$this._status;
  set status(ImportStatus? status) => _$this._status = status;

  int? _totalItems;
  int? get totalItems => _$this._totalItems;
  set totalItems(int? totalItems) => _$this._totalItems = totalItems;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ImportTicketListItemBuilder() {
    ImportTicketListItem._defaults(this);
  }

  ImportTicketListItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdByName = $v.createdByName;
      _verifiedByName = $v.verifiedByName;
      _supplierName = $v.supplierName;
      _expectedArrivalDate = $v.expectedArrivalDate;
      _actualImportDate = $v.actualImportDate;
      _totalCost = $v.totalCost;
      _status = $v.status;
      _totalItems = $v.totalItems;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportTicketListItem other) {
    _$v = other as _$ImportTicketListItem;
  }

  @override
  void update(void Function(ImportTicketListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportTicketListItem build() => _build();

  _$ImportTicketListItem _build() {
    final _$result =
        _$v ??
        _$ImportTicketListItem._(
          id: id,
          createdByName: BuiltValueNullFieldError.checkNotNull(
            createdByName,
            r'ImportTicketListItem',
            'createdByName',
          ),
          verifiedByName: verifiedByName,
          supplierName: BuiltValueNullFieldError.checkNotNull(
            supplierName,
            r'ImportTicketListItem',
            'supplierName',
          ),
          expectedArrivalDate: expectedArrivalDate,
          actualImportDate: actualImportDate,
          totalCost: totalCost,
          status: status,
          totalItems: totalItems,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
