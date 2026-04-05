// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_level4_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddressLevel4Response extends AddressLevel4Response {
  @override
  final BuiltList<String> data;

  factory _$AddressLevel4Response([
    void Function(AddressLevel4ResponseBuilder)? updates,
  ]) => (AddressLevel4ResponseBuilder()..update(updates))._build();

  _$AddressLevel4Response._({required this.data}) : super._();
  @override
  AddressLevel4Response rebuild(
    void Function(AddressLevel4ResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AddressLevel4ResponseBuilder toBuilder() =>
      AddressLevel4ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressLevel4Response && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AddressLevel4Response',
    )..add('data', data)).toString();
  }
}

class AddressLevel4ResponseBuilder
    implements Builder<AddressLevel4Response, AddressLevel4ResponseBuilder> {
  _$AddressLevel4Response? _$v;

  ListBuilder<String>? _data;
  ListBuilder<String> get data => _$this._data ??= ListBuilder<String>();
  set data(ListBuilder<String>? data) => _$this._data = data;

  AddressLevel4ResponseBuilder() {
    AddressLevel4Response._defaults(this);
  }

  AddressLevel4ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressLevel4Response other) {
    _$v = other as _$AddressLevel4Response;
  }

  @override
  void update(void Function(AddressLevel4ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressLevel4Response build() => _build();

  _$AddressLevel4Response _build() {
    _$AddressLevel4Response _$result;
    try {
      _$result = _$v ?? _$AddressLevel4Response._(data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AddressLevel4Response',
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
