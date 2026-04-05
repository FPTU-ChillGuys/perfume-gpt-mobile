// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_cancel_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProcessCancelRequest extends ProcessCancelRequest {
  @override
  final bool? isApproved;
  @override
  final String? staffNote;
  @override
  final PaymentMethod? refundMethod;

  factory _$ProcessCancelRequest([
    void Function(ProcessCancelRequestBuilder)? updates,
  ]) => (ProcessCancelRequestBuilder()..update(updates))._build();

  _$ProcessCancelRequest._({this.isApproved, this.staffNote, this.refundMethod})
    : super._();
  @override
  ProcessCancelRequest rebuild(
    void Function(ProcessCancelRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProcessCancelRequestBuilder toBuilder() =>
      ProcessCancelRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessCancelRequest &&
        isApproved == other.isApproved &&
        staffNote == other.staffNote &&
        refundMethod == other.refundMethod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isApproved.hashCode);
    _$hash = $jc(_$hash, staffNote.hashCode);
    _$hash = $jc(_$hash, refundMethod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProcessCancelRequest')
          ..add('isApproved', isApproved)
          ..add('staffNote', staffNote)
          ..add('refundMethod', refundMethod))
        .toString();
  }
}

class ProcessCancelRequestBuilder
    implements Builder<ProcessCancelRequest, ProcessCancelRequestBuilder> {
  _$ProcessCancelRequest? _$v;

  bool? _isApproved;
  bool? get isApproved => _$this._isApproved;
  set isApproved(bool? isApproved) => _$this._isApproved = isApproved;

  String? _staffNote;
  String? get staffNote => _$this._staffNote;
  set staffNote(String? staffNote) => _$this._staffNote = staffNote;

  PaymentMethod? _refundMethod;
  PaymentMethod? get refundMethod => _$this._refundMethod;
  set refundMethod(PaymentMethod? refundMethod) =>
      _$this._refundMethod = refundMethod;

  ProcessCancelRequestBuilder() {
    ProcessCancelRequest._defaults(this);
  }

  ProcessCancelRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isApproved = $v.isApproved;
      _staffNote = $v.staffNote;
      _refundMethod = $v.refundMethod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProcessCancelRequest other) {
    _$v = other as _$ProcessCancelRequest;
  }

  @override
  void update(void Function(ProcessCancelRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProcessCancelRequest build() => _build();

  _$ProcessCancelRequest _build() {
    final _$result =
        _$v ??
        _$ProcessCancelRequest._(
          isApproved: isApproved,
          staffNote: staffNote,
          refundMethod: refundMethod,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
