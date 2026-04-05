// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_import_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateImportRequest extends UpdateImportRequest {
  @override
  final BuiltList<UpdateImportDetailRequest> importDetails;
  @override
  final int? supplierId;
  @override
  final DateTime expectedArrivalDate;

  factory _$UpdateImportRequest([
    void Function(UpdateImportRequestBuilder)? updates,
  ]) => (UpdateImportRequestBuilder()..update(updates))._build();

  _$UpdateImportRequest._({
    required this.importDetails,
    this.supplierId,
    required this.expectedArrivalDate,
  }) : super._();
  @override
  UpdateImportRequest rebuild(
    void Function(UpdateImportRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateImportRequestBuilder toBuilder() =>
      UpdateImportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateImportRequest &&
        importDetails == other.importDetails &&
        supplierId == other.supplierId &&
        expectedArrivalDate == other.expectedArrivalDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, importDetails.hashCode);
    _$hash = $jc(_$hash, supplierId.hashCode);
    _$hash = $jc(_$hash, expectedArrivalDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateImportRequest')
          ..add('importDetails', importDetails)
          ..add('supplierId', supplierId)
          ..add('expectedArrivalDate', expectedArrivalDate))
        .toString();
  }
}

class UpdateImportRequestBuilder
    implements Builder<UpdateImportRequest, UpdateImportRequestBuilder> {
  _$UpdateImportRequest? _$v;

  ListBuilder<UpdateImportDetailRequest>? _importDetails;
  ListBuilder<UpdateImportDetailRequest> get importDetails =>
      _$this._importDetails ??= ListBuilder<UpdateImportDetailRequest>();
  set importDetails(ListBuilder<UpdateImportDetailRequest>? importDetails) =>
      _$this._importDetails = importDetails;

  int? _supplierId;
  int? get supplierId => _$this._supplierId;
  set supplierId(int? supplierId) => _$this._supplierId = supplierId;

  DateTime? _expectedArrivalDate;
  DateTime? get expectedArrivalDate => _$this._expectedArrivalDate;
  set expectedArrivalDate(DateTime? expectedArrivalDate) =>
      _$this._expectedArrivalDate = expectedArrivalDate;

  UpdateImportRequestBuilder() {
    UpdateImportRequest._defaults(this);
  }

  UpdateImportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importDetails = $v.importDetails.toBuilder();
      _supplierId = $v.supplierId;
      _expectedArrivalDate = $v.expectedArrivalDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateImportRequest other) {
    _$v = other as _$UpdateImportRequest;
  }

  @override
  void update(void Function(UpdateImportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateImportRequest build() => _build();

  _$UpdateImportRequest _build() {
    _$UpdateImportRequest _$result;
    try {
      _$result =
          _$v ??
          _$UpdateImportRequest._(
            importDetails: importDetails.build(),
            supplierId: supplierId,
            expectedArrivalDate: BuiltValueNullFieldError.checkNotNull(
              expectedArrivalDate,
              r'UpdateImportRequest',
              'expectedArrivalDate',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'importDetails';
        importDetails.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UpdateImportRequest',
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
