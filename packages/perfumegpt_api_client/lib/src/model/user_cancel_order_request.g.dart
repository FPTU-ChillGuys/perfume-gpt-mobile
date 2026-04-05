// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cancel_order_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserCancelOrderRequest extends UserCancelOrderRequest {
  @override
  final CancelOrderReason? reason;

  factory _$UserCancelOrderRequest([
    void Function(UserCancelOrderRequestBuilder)? updates,
  ]) => (UserCancelOrderRequestBuilder()..update(updates))._build();

  _$UserCancelOrderRequest._({this.reason}) : super._();
  @override
  UserCancelOrderRequest rebuild(
    void Function(UserCancelOrderRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserCancelOrderRequestBuilder toBuilder() =>
      UserCancelOrderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserCancelOrderRequest && reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'UserCancelOrderRequest',
    )..add('reason', reason)).toString();
  }
}

class UserCancelOrderRequestBuilder
    implements Builder<UserCancelOrderRequest, UserCancelOrderRequestBuilder> {
  _$UserCancelOrderRequest? _$v;

  CancelOrderReason? _reason;
  CancelOrderReason? get reason => _$this._reason;
  set reason(CancelOrderReason? reason) => _$this._reason = reason;

  UserCancelOrderRequestBuilder() {
    UserCancelOrderRequest._defaults(this);
  }

  UserCancelOrderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserCancelOrderRequest other) {
    _$v = other as _$UserCancelOrderRequest;
  }

  @override
  void update(void Function(UserCancelOrderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserCancelOrderRequest build() => _build();

  _$UserCancelOrderRequest _build() {
    final _$result = _$v ?? _$UserCancelOrderRequest._(reason: reason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
