// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_concentration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateConcentrationRequest extends UpdateConcentrationRequest {
  @override
  final String name;

  factory _$UpdateConcentrationRequest([
    void Function(UpdateConcentrationRequestBuilder)? updates,
  ]) => (UpdateConcentrationRequestBuilder()..update(updates))._build();

  _$UpdateConcentrationRequest._({required this.name}) : super._();
  @override
  UpdateConcentrationRequest rebuild(
    void Function(UpdateConcentrationRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateConcentrationRequestBuilder toBuilder() =>
      UpdateConcentrationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateConcentrationRequest && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'UpdateConcentrationRequest',
    )..add('name', name)).toString();
  }
}

class UpdateConcentrationRequestBuilder
    implements
        Builder<UpdateConcentrationRequest, UpdateConcentrationRequestBuilder> {
  _$UpdateConcentrationRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UpdateConcentrationRequestBuilder() {
    UpdateConcentrationRequest._defaults(this);
  }

  UpdateConcentrationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateConcentrationRequest other) {
    _$v = other as _$UpdateConcentrationRequest;
  }

  @override
  void update(void Function(UpdateConcentrationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateConcentrationRequest build() => _build();

  _$UpdateConcentrationRequest _build() {
    final _$result =
        _$v ??
        _$UpdateConcentrationRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'UpdateConcentrationRequest',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
