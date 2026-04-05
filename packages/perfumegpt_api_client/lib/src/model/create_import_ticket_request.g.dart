// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_import_ticket_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateImportTicketRequest extends CreateImportTicketRequest {
  @override
  final BuiltList<CreateImportDetailRequest> importDetails;
  @override
  final int? supplierId;
  @override
  final DateTime expectedArrivalDate;

  factory _$CreateImportTicketRequest([
    void Function(CreateImportTicketRequestBuilder)? updates,
  ]) => (CreateImportTicketRequestBuilder()..update(updates))._build();

  _$CreateImportTicketRequest._({
    required this.importDetails,
    this.supplierId,
    required this.expectedArrivalDate,
  }) : super._();
  @override
  CreateImportTicketRequest rebuild(
    void Function(CreateImportTicketRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateImportTicketRequestBuilder toBuilder() =>
      CreateImportTicketRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateImportTicketRequest &&
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
    return (newBuiltValueToStringHelper(r'CreateImportTicketRequest')
          ..add('importDetails', importDetails)
          ..add('supplierId', supplierId)
          ..add('expectedArrivalDate', expectedArrivalDate))
        .toString();
  }
}

class CreateImportTicketRequestBuilder
    implements
        Builder<CreateImportTicketRequest, CreateImportTicketRequestBuilder> {
  _$CreateImportTicketRequest? _$v;

  ListBuilder<CreateImportDetailRequest>? _importDetails;
  ListBuilder<CreateImportDetailRequest> get importDetails =>
      _$this._importDetails ??= ListBuilder<CreateImportDetailRequest>();
  set importDetails(ListBuilder<CreateImportDetailRequest>? importDetails) =>
      _$this._importDetails = importDetails;

  int? _supplierId;
  int? get supplierId => _$this._supplierId;
  set supplierId(int? supplierId) => _$this._supplierId = supplierId;

  DateTime? _expectedArrivalDate;
  DateTime? get expectedArrivalDate => _$this._expectedArrivalDate;
  set expectedArrivalDate(DateTime? expectedArrivalDate) =>
      _$this._expectedArrivalDate = expectedArrivalDate;

  CreateImportTicketRequestBuilder() {
    CreateImportTicketRequest._defaults(this);
  }

  CreateImportTicketRequestBuilder get _$this {
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
  void replace(CreateImportTicketRequest other) {
    _$v = other as _$CreateImportTicketRequest;
  }

  @override
  void update(void Function(CreateImportTicketRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateImportTicketRequest build() => _build();

  _$CreateImportTicketRequest _build() {
    _$CreateImportTicketRequest _$result;
    try {
      _$result =
          _$v ??
          _$CreateImportTicketRequest._(
            importDetails: importDetails.build(),
            supplierId: supplierId,
            expectedArrivalDate: BuiltValueNullFieldError.checkNotNull(
              expectedArrivalDate,
              r'CreateImportTicketRequest',
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
          r'CreateImportTicketRequest',
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
