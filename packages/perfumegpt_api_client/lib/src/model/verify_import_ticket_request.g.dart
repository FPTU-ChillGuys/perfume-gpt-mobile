// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_import_ticket_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyImportTicketRequest extends VerifyImportTicketRequest {
  @override
  final BuiltList<VerifyImportDetailRequest> importDetails;

  factory _$VerifyImportTicketRequest([
    void Function(VerifyImportTicketRequestBuilder)? updates,
  ]) => (VerifyImportTicketRequestBuilder()..update(updates))._build();

  _$VerifyImportTicketRequest._({required this.importDetails}) : super._();
  @override
  VerifyImportTicketRequest rebuild(
    void Function(VerifyImportTicketRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  VerifyImportTicketRequestBuilder toBuilder() =>
      VerifyImportTicketRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyImportTicketRequest &&
        importDetails == other.importDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, importDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'VerifyImportTicketRequest',
    )..add('importDetails', importDetails)).toString();
  }
}

class VerifyImportTicketRequestBuilder
    implements
        Builder<VerifyImportTicketRequest, VerifyImportTicketRequestBuilder> {
  _$VerifyImportTicketRequest? _$v;

  ListBuilder<VerifyImportDetailRequest>? _importDetails;
  ListBuilder<VerifyImportDetailRequest> get importDetails =>
      _$this._importDetails ??= ListBuilder<VerifyImportDetailRequest>();
  set importDetails(ListBuilder<VerifyImportDetailRequest>? importDetails) =>
      _$this._importDetails = importDetails;

  VerifyImportTicketRequestBuilder() {
    VerifyImportTicketRequest._defaults(this);
  }

  VerifyImportTicketRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importDetails = $v.importDetails.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyImportTicketRequest other) {
    _$v = other as _$VerifyImportTicketRequest;
  }

  @override
  void update(void Function(VerifyImportTicketRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyImportTicketRequest build() => _build();

  _$VerifyImportTicketRequest _build() {
    _$VerifyImportTicketRequest _$result;
    try {
      _$result =
          _$v ??
          _$VerifyImportTicketRequest._(importDetails: importDetails.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'importDetails';
        importDetails.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'VerifyImportTicketRequest',
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
