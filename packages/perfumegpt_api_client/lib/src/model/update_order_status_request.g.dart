// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateOrderStatusRequest extends UpdateOrderStatusRequest {
  @override
  final OrderStatus? status;
  @override
  final String? note;

  factory _$UpdateOrderStatusRequest([
    void Function(UpdateOrderStatusRequestBuilder)? updates,
  ]) => (UpdateOrderStatusRequestBuilder()..update(updates))._build();

  _$UpdateOrderStatusRequest._({this.status, this.note}) : super._();
  @override
  UpdateOrderStatusRequest rebuild(
    void Function(UpdateOrderStatusRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateOrderStatusRequestBuilder toBuilder() =>
      UpdateOrderStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateOrderStatusRequest &&
        status == other.status &&
        note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateOrderStatusRequest')
          ..add('status', status)
          ..add('note', note))
        .toString();
  }
}

class UpdateOrderStatusRequestBuilder
    implements
        Builder<UpdateOrderStatusRequest, UpdateOrderStatusRequestBuilder> {
  _$UpdateOrderStatusRequest? _$v;

  OrderStatus? _status;
  OrderStatus? get status => _$this._status;
  set status(OrderStatus? status) => _$this._status = status;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  UpdateOrderStatusRequestBuilder() {
    UpdateOrderStatusRequest._defaults(this);
  }

  UpdateOrderStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateOrderStatusRequest other) {
    _$v = other as _$UpdateOrderStatusRequest;
  }

  @override
  void update(void Function(UpdateOrderStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateOrderStatusRequest build() => _build();

  _$UpdateOrderStatusRequest _build() {
    final _$result =
        _$v ?? _$UpdateOrderStatusRequest._(status: status, note: note);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
