// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_ticket_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportTicketResponse extends ImportTicketResponse {
  @override
  final String? id;
  @override
  final String createdByName;
  @override
  final String? verifiedByName;
  @override
  final int? supplierId;
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
  final DateTime? createdAt;
  @override
  final BuiltList<ImportDetailResponse> importDetails;

  factory _$ImportTicketResponse([
    void Function(ImportTicketResponseBuilder)? updates,
  ]) => (ImportTicketResponseBuilder()..update(updates))._build();

  _$ImportTicketResponse._({
    this.id,
    required this.createdByName,
    this.verifiedByName,
    this.supplierId,
    required this.supplierName,
    this.expectedArrivalDate,
    this.actualImportDate,
    this.totalCost,
    this.status,
    this.createdAt,
    required this.importDetails,
  }) : super._();
  @override
  ImportTicketResponse rebuild(
    void Function(ImportTicketResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ImportTicketResponseBuilder toBuilder() =>
      ImportTicketResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportTicketResponse &&
        id == other.id &&
        createdByName == other.createdByName &&
        verifiedByName == other.verifiedByName &&
        supplierId == other.supplierId &&
        supplierName == other.supplierName &&
        expectedArrivalDate == other.expectedArrivalDate &&
        actualImportDate == other.actualImportDate &&
        totalCost == other.totalCost &&
        status == other.status &&
        createdAt == other.createdAt &&
        importDetails == other.importDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdByName.hashCode);
    _$hash = $jc(_$hash, verifiedByName.hashCode);
    _$hash = $jc(_$hash, supplierId.hashCode);
    _$hash = $jc(_$hash, supplierName.hashCode);
    _$hash = $jc(_$hash, expectedArrivalDate.hashCode);
    _$hash = $jc(_$hash, actualImportDate.hashCode);
    _$hash = $jc(_$hash, totalCost.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, importDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImportTicketResponse')
          ..add('id', id)
          ..add('createdByName', createdByName)
          ..add('verifiedByName', verifiedByName)
          ..add('supplierId', supplierId)
          ..add('supplierName', supplierName)
          ..add('expectedArrivalDate', expectedArrivalDate)
          ..add('actualImportDate', actualImportDate)
          ..add('totalCost', totalCost)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('importDetails', importDetails))
        .toString();
  }
}

class ImportTicketResponseBuilder
    implements Builder<ImportTicketResponse, ImportTicketResponseBuilder> {
  _$ImportTicketResponse? _$v;

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

  int? _supplierId;
  int? get supplierId => _$this._supplierId;
  set supplierId(int? supplierId) => _$this._supplierId = supplierId;

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

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ListBuilder<ImportDetailResponse>? _importDetails;
  ListBuilder<ImportDetailResponse> get importDetails =>
      _$this._importDetails ??= ListBuilder<ImportDetailResponse>();
  set importDetails(ListBuilder<ImportDetailResponse>? importDetails) =>
      _$this._importDetails = importDetails;

  ImportTicketResponseBuilder() {
    ImportTicketResponse._defaults(this);
  }

  ImportTicketResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdByName = $v.createdByName;
      _verifiedByName = $v.verifiedByName;
      _supplierId = $v.supplierId;
      _supplierName = $v.supplierName;
      _expectedArrivalDate = $v.expectedArrivalDate;
      _actualImportDate = $v.actualImportDate;
      _totalCost = $v.totalCost;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _importDetails = $v.importDetails.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportTicketResponse other) {
    _$v = other as _$ImportTicketResponse;
  }

  @override
  void update(void Function(ImportTicketResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportTicketResponse build() => _build();

  _$ImportTicketResponse _build() {
    _$ImportTicketResponse _$result;
    try {
      _$result =
          _$v ??
          _$ImportTicketResponse._(
            id: id,
            createdByName: BuiltValueNullFieldError.checkNotNull(
              createdByName,
              r'ImportTicketResponse',
              'createdByName',
            ),
            verifiedByName: verifiedByName,
            supplierId: supplierId,
            supplierName: BuiltValueNullFieldError.checkNotNull(
              supplierName,
              r'ImportTicketResponse',
              'supplierName',
            ),
            expectedArrivalDate: expectedArrivalDate,
            actualImportDate: actualImportDate,
            totalCost: totalCost,
            status: status,
            createdAt: createdAt,
            importDetails: importDetails.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'importDetails';
        importDetails.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ImportTicketResponse',
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
