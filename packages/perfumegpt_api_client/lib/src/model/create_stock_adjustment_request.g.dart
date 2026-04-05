// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_stock_adjustment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateStockAdjustmentRequest extends CreateStockAdjustmentRequest {
  @override
  final DateTime adjustmentDate;
  @override
  final StockAdjustmentReason? reason;
  @override
  final String? note;
  @override
  final BuiltList<CreateStockAdjustmentDetailRequest> adjustmentDetails;

  factory _$CreateStockAdjustmentRequest([
    void Function(CreateStockAdjustmentRequestBuilder)? updates,
  ]) => (CreateStockAdjustmentRequestBuilder()..update(updates))._build();

  _$CreateStockAdjustmentRequest._({
    required this.adjustmentDate,
    this.reason,
    this.note,
    required this.adjustmentDetails,
  }) : super._();
  @override
  CreateStockAdjustmentRequest rebuild(
    void Function(CreateStockAdjustmentRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateStockAdjustmentRequestBuilder toBuilder() =>
      CreateStockAdjustmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateStockAdjustmentRequest &&
        adjustmentDate == other.adjustmentDate &&
        reason == other.reason &&
        note == other.note &&
        adjustmentDetails == other.adjustmentDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adjustmentDate.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, adjustmentDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateStockAdjustmentRequest')
          ..add('adjustmentDate', adjustmentDate)
          ..add('reason', reason)
          ..add('note', note)
          ..add('adjustmentDetails', adjustmentDetails))
        .toString();
  }
}

class CreateStockAdjustmentRequestBuilder
    implements
        Builder<
          CreateStockAdjustmentRequest,
          CreateStockAdjustmentRequestBuilder
        > {
  _$CreateStockAdjustmentRequest? _$v;

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

  ListBuilder<CreateStockAdjustmentDetailRequest>? _adjustmentDetails;
  ListBuilder<CreateStockAdjustmentDetailRequest> get adjustmentDetails =>
      _$this._adjustmentDetails ??=
          ListBuilder<CreateStockAdjustmentDetailRequest>();
  set adjustmentDetails(
    ListBuilder<CreateStockAdjustmentDetailRequest>? adjustmentDetails,
  ) => _$this._adjustmentDetails = adjustmentDetails;

  CreateStockAdjustmentRequestBuilder() {
    CreateStockAdjustmentRequest._defaults(this);
  }

  CreateStockAdjustmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adjustmentDate = $v.adjustmentDate;
      _reason = $v.reason;
      _note = $v.note;
      _adjustmentDetails = $v.adjustmentDetails.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateStockAdjustmentRequest other) {
    _$v = other as _$CreateStockAdjustmentRequest;
  }

  @override
  void update(void Function(CreateStockAdjustmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateStockAdjustmentRequest build() => _build();

  _$CreateStockAdjustmentRequest _build() {
    _$CreateStockAdjustmentRequest _$result;
    try {
      _$result =
          _$v ??
          _$CreateStockAdjustmentRequest._(
            adjustmentDate: BuiltValueNullFieldError.checkNotNull(
              adjustmentDate,
              r'CreateStockAdjustmentRequest',
              'adjustmentDate',
            ),
            reason: reason,
            note: note,
            adjustmentDetails: adjustmentDetails.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'adjustmentDetails';
        adjustmentDetails.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CreateStockAdjustmentRequest',
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
