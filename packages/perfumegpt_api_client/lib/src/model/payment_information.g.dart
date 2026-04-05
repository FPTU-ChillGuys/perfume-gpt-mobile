// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_information.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentInformation extends PaymentInformation {
  @override
  final PaymentMethod? method;

  factory _$PaymentInformation([
    void Function(PaymentInformationBuilder)? updates,
  ]) => (PaymentInformationBuilder()..update(updates))._build();

  _$PaymentInformation._({this.method}) : super._();
  @override
  PaymentInformation rebuild(
    void Function(PaymentInformationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PaymentInformationBuilder toBuilder() =>
      PaymentInformationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentInformation && method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'PaymentInformation',
    )..add('method', method)).toString();
  }
}

class PaymentInformationBuilder
    implements Builder<PaymentInformation, PaymentInformationBuilder> {
  _$PaymentInformation? _$v;

  PaymentMethod? _method;
  PaymentMethod? get method => _$this._method;
  set method(PaymentMethod? method) => _$this._method = method;

  PaymentInformationBuilder() {
    PaymentInformation._defaults(this);
  }

  PaymentInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentInformation other) {
    _$v = other as _$PaymentInformation;
  }

  @override
  void update(void Function(PaymentInformationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentInformation build() => _build();

  _$PaymentInformation _build() {
    final _$result = _$v ?? _$PaymentInformation._(method: method);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
