// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_import_detail_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyImportDetailRequest extends VerifyImportDetailRequest {
  @override
  final String importDetailId;
  @override
  final int? rejectedQuantity;
  @override
  final String? note;
  @override
  final BuiltList<CreateBatchRequest> batches;

  factory _$VerifyImportDetailRequest([
    void Function(VerifyImportDetailRequestBuilder)? updates,
  ]) => (VerifyImportDetailRequestBuilder()..update(updates))._build();

  _$VerifyImportDetailRequest._({
    required this.importDetailId,
    this.rejectedQuantity,
    this.note,
    required this.batches,
  }) : super._();
  @override
  VerifyImportDetailRequest rebuild(
    void Function(VerifyImportDetailRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  VerifyImportDetailRequestBuilder toBuilder() =>
      VerifyImportDetailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyImportDetailRequest &&
        importDetailId == other.importDetailId &&
        rejectedQuantity == other.rejectedQuantity &&
        note == other.note &&
        batches == other.batches;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, importDetailId.hashCode);
    _$hash = $jc(_$hash, rejectedQuantity.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jc(_$hash, batches.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VerifyImportDetailRequest')
          ..add('importDetailId', importDetailId)
          ..add('rejectedQuantity', rejectedQuantity)
          ..add('note', note)
          ..add('batches', batches))
        .toString();
  }
}

class VerifyImportDetailRequestBuilder
    implements
        Builder<VerifyImportDetailRequest, VerifyImportDetailRequestBuilder> {
  _$VerifyImportDetailRequest? _$v;

  String? _importDetailId;
  String? get importDetailId => _$this._importDetailId;
  set importDetailId(String? importDetailId) =>
      _$this._importDetailId = importDetailId;

  int? _rejectedQuantity;
  int? get rejectedQuantity => _$this._rejectedQuantity;
  set rejectedQuantity(int? rejectedQuantity) =>
      _$this._rejectedQuantity = rejectedQuantity;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  ListBuilder<CreateBatchRequest>? _batches;
  ListBuilder<CreateBatchRequest> get batches =>
      _$this._batches ??= ListBuilder<CreateBatchRequest>();
  set batches(ListBuilder<CreateBatchRequest>? batches) =>
      _$this._batches = batches;

  VerifyImportDetailRequestBuilder() {
    VerifyImportDetailRequest._defaults(this);
  }

  VerifyImportDetailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importDetailId = $v.importDetailId;
      _rejectedQuantity = $v.rejectedQuantity;
      _note = $v.note;
      _batches = $v.batches.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyImportDetailRequest other) {
    _$v = other as _$VerifyImportDetailRequest;
  }

  @override
  void update(void Function(VerifyImportDetailRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyImportDetailRequest build() => _build();

  _$VerifyImportDetailRequest _build() {
    _$VerifyImportDetailRequest _$result;
    try {
      _$result =
          _$v ??
          _$VerifyImportDetailRequest._(
            importDetailId: BuiltValueNullFieldError.checkNotNull(
              importDetailId,
              r'VerifyImportDetailRequest',
              'importDetailId',
            ),
            rejectedQuantity: rejectedQuantity,
            note: note,
            batches: batches.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'batches';
        batches.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'VerifyImportDetailRequest',
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
