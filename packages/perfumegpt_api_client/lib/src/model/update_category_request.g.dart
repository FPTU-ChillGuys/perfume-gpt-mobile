// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_category_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCategoryRequest extends UpdateCategoryRequest {
  @override
  final String name;

  factory _$UpdateCategoryRequest([
    void Function(UpdateCategoryRequestBuilder)? updates,
  ]) => (UpdateCategoryRequestBuilder()..update(updates))._build();

  _$UpdateCategoryRequest._({required this.name}) : super._();
  @override
  UpdateCategoryRequest rebuild(
    void Function(UpdateCategoryRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateCategoryRequestBuilder toBuilder() =>
      UpdateCategoryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCategoryRequest && name == other.name;
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
      r'UpdateCategoryRequest',
    )..add('name', name)).toString();
  }
}

class UpdateCategoryRequestBuilder
    implements Builder<UpdateCategoryRequest, UpdateCategoryRequestBuilder> {
  _$UpdateCategoryRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  UpdateCategoryRequestBuilder() {
    UpdateCategoryRequest._defaults(this);
  }

  UpdateCategoryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCategoryRequest other) {
    _$v = other as _$UpdateCategoryRequest;
  }

  @override
  void update(void Function(UpdateCategoryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCategoryRequest build() => _build();

  _$UpdateCategoryRequest _build() {
    final _$result =
        _$v ??
        _$UpdateCategoryRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'UpdateCategoryRequest',
            'name',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
