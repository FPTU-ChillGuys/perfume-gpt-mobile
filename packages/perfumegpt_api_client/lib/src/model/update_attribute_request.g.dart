// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAttributeRequest extends UpdateAttributeRequest {
  @override
  final String name;
  @override
  final String? description;
  @override
  final bool isVariantLevel;

  factory _$UpdateAttributeRequest([
    void Function(UpdateAttributeRequestBuilder)? updates,
  ]) => (UpdateAttributeRequestBuilder()..update(updates))._build();

  _$UpdateAttributeRequest._({
    required this.name,
    this.description,
    required this.isVariantLevel,
  }) : super._();
  @override
  UpdateAttributeRequest rebuild(
    void Function(UpdateAttributeRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateAttributeRequestBuilder toBuilder() =>
      UpdateAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAttributeRequest &&
        name == other.name &&
        description == other.description &&
        isVariantLevel == other.isVariantLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isVariantLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateAttributeRequest')
          ..add('name', name)
          ..add('description', description)
          ..add('isVariantLevel', isVariantLevel))
        .toString();
  }
}

class UpdateAttributeRequestBuilder
    implements Builder<UpdateAttributeRequest, UpdateAttributeRequestBuilder> {
  _$UpdateAttributeRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isVariantLevel;
  bool? get isVariantLevel => _$this._isVariantLevel;
  set isVariantLevel(bool? isVariantLevel) =>
      _$this._isVariantLevel = isVariantLevel;

  UpdateAttributeRequestBuilder() {
    UpdateAttributeRequest._defaults(this);
  }

  UpdateAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _isVariantLevel = $v.isVariantLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAttributeRequest other) {
    _$v = other as _$UpdateAttributeRequest;
  }

  @override
  void update(void Function(UpdateAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAttributeRequest build() => _build();

  _$UpdateAttributeRequest _build() {
    final _$result =
        _$v ??
        _$UpdateAttributeRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'UpdateAttributeRequest',
            'name',
          ),
          description: description,
          isVariantLevel: BuiltValueNullFieldError.checkNotNull(
            isVariantLevel,
            r'UpdateAttributeRequest',
            'isVariantLevel',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
