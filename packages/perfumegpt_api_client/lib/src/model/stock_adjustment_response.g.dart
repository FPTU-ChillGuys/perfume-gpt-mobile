// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_adjustment_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StockAdjustmentResponse extends StockAdjustmentResponse {
  @override
  final String? id;
  @override
  final String? createdById;
  @override
  final String createdByName;
  @override
  final String? verifiedById;
  @override
  final String? verifiedByName;
  @override
  final DateTime? adjustmentDate;
  @override
  final StockAdjustmentReason? reason;
  @override
  final String? note;
  @override
  final StockAdjustmentStatus? status;
  @override
  final BuiltList<StockAdjustmentDetailResponse> adjustmentDetails;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$StockAdjustmentResponse([
    void Function(StockAdjustmentResponseBuilder)? updates,
  ]) => (StockAdjustmentResponseBuilder()..update(updates))._build();

  _$StockAdjustmentResponse._({
    this.id,
    this.createdById,
    required this.createdByName,
    this.verifiedById,
    this.verifiedByName,
    this.adjustmentDate,
    this.reason,
    this.note,
    this.status,
    required this.adjustmentDetails,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  StockAdjustmentResponse rebuild(
    void Function(StockAdjustmentResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StockAdjustmentResponseBuilder toBuilder() =>
      StockAdjustmentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StockAdjustmentResponse &&
        id == other.id &&
        createdById == other.createdById &&
        createdByName == other.createdByName &&
        verifiedById == other.verifiedById &&
        verifiedByName == other.verifiedByName &&
        adjustmentDate == other.adjustmentDate &&
        reason == other.reason &&
        note == other.note &&
        status == other.status &&
        adjustmentDetails == other.adjustmentDetails &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdById.hashCode);
    _$hash = $jc(_$hash, createdByName.hashCode);
    _$hash = $jc(_$hash, verifiedById.hashCode);
    _$hash = $jc(_$hash, verifiedByName.hashCode);
    _$hash = $jc(_$hash, adjustmentDate.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, adjustmentDetails.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StockAdjustmentResponse')
          ..add('id', id)
          ..add('createdById', createdById)
          ..add('createdByName', createdByName)
          ..add('verifiedById', verifiedById)
          ..add('verifiedByName', verifiedByName)
          ..add('adjustmentDate', adjustmentDate)
          ..add('reason', reason)
          ..add('note', note)
          ..add('status', status)
          ..add('adjustmentDetails', adjustmentDetails)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class StockAdjustmentResponseBuilder
    implements
        Builder<StockAdjustmentResponse, StockAdjustmentResponseBuilder> {
  _$StockAdjustmentResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _createdById;
  String? get createdById => _$this._createdById;
  set createdById(String? createdById) => _$this._createdById = createdById;

  String? _createdByName;
  String? get createdByName => _$this._createdByName;
  set createdByName(String? createdByName) =>
      _$this._createdByName = createdByName;

  String? _verifiedById;
  String? get verifiedById => _$this._verifiedById;
  set verifiedById(String? verifiedById) => _$this._verifiedById = verifiedById;

  String? _verifiedByName;
  String? get verifiedByName => _$this._verifiedByName;
  set verifiedByName(String? verifiedByName) =>
      _$this._verifiedByName = verifiedByName;

  DateTime? _adjustmentDate;
  DateTime? get adjustmentDate => _$this._adjustmentDate;
  set adjustmentDate(DateTime? adjustmentDate) =>
      _$this._adjustmentDate = adjustmentDate;

  StockAdjustmentReason? _reason;
  StockAdjustmentReason? get reason => _$this._reason;
  set reason(StockAdjustmentReason? reason) => _$this._reason = reason;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  StockAdjustmentStatus? _status;
  StockAdjustmentStatus? get status => _$this._status;
  set status(StockAdjustmentStatus? status) => _$this._status = status;

  ListBuilder<StockAdjustmentDetailResponse>? _adjustmentDetails;
  ListBuilder<StockAdjustmentDetailResponse> get adjustmentDetails =>
      _$this._adjustmentDetails ??=
          ListBuilder<StockAdjustmentDetailResponse>();
  set adjustmentDetails(
    ListBuilder<StockAdjustmentDetailResponse>? adjustmentDetails,
  ) => _$this._adjustmentDetails = adjustmentDetails;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  StockAdjustmentResponseBuilder() {
    StockAdjustmentResponse._defaults(this);
  }

  StockAdjustmentResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdById = $v.createdById;
      _createdByName = $v.createdByName;
      _verifiedById = $v.verifiedById;
      _verifiedByName = $v.verifiedByName;
      _adjustmentDate = $v.adjustmentDate;
      _reason = $v.reason;
      _note = $v.note;
      _status = $v.status;
      _adjustmentDetails = $v.adjustmentDetails.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StockAdjustmentResponse other) {
    _$v = other as _$StockAdjustmentResponse;
  }

  @override
  void update(void Function(StockAdjustmentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StockAdjustmentResponse build() => _build();

  _$StockAdjustmentResponse _build() {
    _$StockAdjustmentResponse _$result;
    try {
      _$result =
          _$v ??
          _$StockAdjustmentResponse._(
            id: id,
            createdById: createdById,
            createdByName: BuiltValueNullFieldError.checkNotNull(
              createdByName,
              r'StockAdjustmentResponse',
              'createdByName',
            ),
            verifiedById: verifiedById,
            verifiedByName: verifiedByName,
            adjustmentDate: adjustmentDate,
            reason: reason,
            note: note,
            status: status,
            adjustmentDetails: adjustmentDetails.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'adjustmentDetails';
        adjustmentDetails.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'StockAdjustmentResponse',
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
