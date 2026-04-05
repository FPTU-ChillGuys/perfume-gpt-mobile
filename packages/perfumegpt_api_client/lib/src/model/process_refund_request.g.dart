// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_refund_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProcessRefundRequest extends ProcessRefundRequest {
  @override
  final PaymentMethod? refundMethod;

  factory _$ProcessRefundRequest([
    void Function(ProcessRefundRequestBuilder)? updates,
  ]) => (ProcessRefundRequestBuilder()..update(updates))._build();

  _$ProcessRefundRequest._({this.refundMethod}) : super._();
  @override
  ProcessRefundRequest rebuild(
    void Function(ProcessRefundRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProcessRefundRequestBuilder toBuilder() =>
      ProcessRefundRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessRefundRequest && refundMethod == other.refundMethod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refundMethod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ProcessRefundRequest',
    )..add('refundMethod', refundMethod)).toString();
  }
}

class ProcessRefundRequestBuilder
    implements Builder<ProcessRefundRequest, ProcessRefundRequestBuilder> {
  _$ProcessRefundRequest? _$v;

  PaymentMethod? _refundMethod;
  PaymentMethod? get refundMethod => _$this._refundMethod;
  set refundMethod(PaymentMethod? refundMethod) =>
      _$this._refundMethod = refundMethod;

  ProcessRefundRequestBuilder() {
    ProcessRefundRequest._defaults(this);
  }

  ProcessRefundRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refundMethod = $v.refundMethod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProcessRefundRequest other) {
    _$v = other as _$ProcessRefundRequest;
  }

  @override
  void update(void Function(ProcessRefundRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProcessRefundRequest build() => _build();

  _$ProcessRefundRequest _build() {
    final _$result =
        _$v ?? _$ProcessRefundRequest._(refundMethod: refundMethod);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
