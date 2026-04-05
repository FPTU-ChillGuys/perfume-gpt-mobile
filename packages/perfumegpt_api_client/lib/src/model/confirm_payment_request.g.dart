// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_payment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmPaymentRequest extends ConfirmPaymentRequest {
  @override
  final bool isSuccess;
  @override
  final String? failureReason;

  factory _$ConfirmPaymentRequest([
    void Function(ConfirmPaymentRequestBuilder)? updates,
  ]) => (ConfirmPaymentRequestBuilder()..update(updates))._build();

  _$ConfirmPaymentRequest._({required this.isSuccess, this.failureReason})
    : super._();
  @override
  ConfirmPaymentRequest rebuild(
    void Function(ConfirmPaymentRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ConfirmPaymentRequestBuilder toBuilder() =>
      ConfirmPaymentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmPaymentRequest &&
        isSuccess == other.isSuccess &&
        failureReason == other.failureReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isSuccess.hashCode);
    _$hash = $jc(_$hash, failureReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConfirmPaymentRequest')
          ..add('isSuccess', isSuccess)
          ..add('failureReason', failureReason))
        .toString();
  }
}

class ConfirmPaymentRequestBuilder
    implements Builder<ConfirmPaymentRequest, ConfirmPaymentRequestBuilder> {
  _$ConfirmPaymentRequest? _$v;

  bool? _isSuccess;
  bool? get isSuccess => _$this._isSuccess;
  set isSuccess(bool? isSuccess) => _$this._isSuccess = isSuccess;

  String? _failureReason;
  String? get failureReason => _$this._failureReason;
  set failureReason(String? failureReason) =>
      _$this._failureReason = failureReason;

  ConfirmPaymentRequestBuilder() {
    ConfirmPaymentRequest._defaults(this);
  }

  ConfirmPaymentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isSuccess = $v.isSuccess;
      _failureReason = $v.failureReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmPaymentRequest other) {
    _$v = other as _$ConfirmPaymentRequest;
  }

  @override
  void update(void Function(ConfirmPaymentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmPaymentRequest build() => _build();

  _$ConfirmPaymentRequest _build() {
    final _$result =
        _$v ??
        _$ConfirmPaymentRequest._(
          isSuccess: BuiltValueNullFieldError.checkNotNull(
            isSuccess,
            r'ConfirmPaymentRequest',
            'isSuccess',
          ),
          failureReason: failureReason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
