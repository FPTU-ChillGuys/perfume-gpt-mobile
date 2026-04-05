// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_brand_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateBrandRequest extends UpdateBrandRequest {
  @override
  final String name;

  factory _$UpdateBrandRequest([
    void Function(UpdateBrandRequestBuilder)? updates,
  ]) => (UpdateBrandRequestBuilder()..update(updates))._build();

  _$UpdateBrandRequest._({required this.name}) : super._();
  @override
  UpdateBrandRequest rebuild(
    void Function(UpdateBrandRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateBrandRequestBuilder toBuilder() =>
      UpdateBrandRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateBrandRequest && name == other.name;
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
      r'UpdateBrandRequest',
    )..add('name', name)).toString();
  }
}

class UpdateBrandRequestBuilder
    implements Builder<UpdateBrandRequest, UpdateBrandRequestBuilder> {
  _$UpdateBrandRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UpdateBrandRequestBuilder() {
    UpdateBrandRequest._defaults(this);
  }

  UpdateBrandRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateBrandRequest other) {
    _$v = other as _$UpdateBrandRequest;
  }

  @override
  void update(void Function(UpdateBrandRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateBrandRequest build() => _build();

  _$UpdateBrandRequest _build() {
    final _$result =
        _$v ??
        _$UpdateBrandRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'UpdateBrandRequest',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
