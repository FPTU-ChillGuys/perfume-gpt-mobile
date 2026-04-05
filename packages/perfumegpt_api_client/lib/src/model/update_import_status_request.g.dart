// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_import_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateImportStatusRequest extends UpdateImportStatusRequest {
  @override
  final ImportStatus? status;

  factory _$UpdateImportStatusRequest([
    void Function(UpdateImportStatusRequestBuilder)? updates,
  ]) => (UpdateImportStatusRequestBuilder()..update(updates))._build();

  _$UpdateImportStatusRequest._({this.status}) : super._();
  @override
  UpdateImportStatusRequest rebuild(
    void Function(UpdateImportStatusRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateImportStatusRequestBuilder toBuilder() =>
      UpdateImportStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateImportStatusRequest && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'UpdateImportStatusRequest',
    )..add('status', status)).toString();
  }
}

class UpdateImportStatusRequestBuilder
    implements
        Builder<UpdateImportStatusRequest, UpdateImportStatusRequestBuilder> {
  _$UpdateImportStatusRequest? _$v;

  ImportStatus? _status;
  ImportStatus? get status => _$this._status;
  set status(ImportStatus? status) => _$this._status = status;

  UpdateImportStatusRequestBuilder() {
    UpdateImportStatusRequest._defaults(this);
  }

  UpdateImportStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateImportStatusRequest other) {
    _$v = other as _$UpdateImportStatusRequest;
  }

  @override
  void update(void Function(UpdateImportStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateImportStatusRequest build() => _build();

  _$UpdateImportStatusRequest _build() {
    final _$result = _$v ?? _$UpdateImportStatusRequest._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
