// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_attribute_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAttributeRequest extends CreateAttributeRequest {
  @override
  final String? internalCode;
  @override
  final String name;
  @override
  final String? description;
  @override
  final bool isVariantLevel;

  factory _$CreateAttributeRequest([
    void Function(CreateAttributeRequestBuilder)? updates,
  ]) => (CreateAttributeRequestBuilder()..update(updates))._build();

  _$CreateAttributeRequest._({
    this.internalCode,
    required this.name,
    this.description,
    required this.isVariantLevel,
  }) : super._();
  @override
  CreateAttributeRequest rebuild(
    void Function(CreateAttributeRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateAttributeRequestBuilder toBuilder() =>
      CreateAttributeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAttributeRequest &&
        internalCode == other.internalCode &&
        name == other.name &&
        description == other.description &&
        isVariantLevel == other.isVariantLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, internalCode.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, isVariantLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateAttributeRequest')
          ..add('internalCode', internalCode)
          ..add('name', name)
          ..add('description', description)
          ..add('isVariantLevel', isVariantLevel))
        .toString();
  }
}

class CreateAttributeRequestBuilder
    implements Builder<CreateAttributeRequest, CreateAttributeRequestBuilder> {
  _$CreateAttributeRequest? _$v;

  String? _internalCode;
  String? get internalCode => _$this._internalCode;
  set internalCode(String? internalCode) => _$this._internalCode = internalCode;

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

  CreateAttributeRequestBuilder() {
    CreateAttributeRequest._defaults(this);
  }

  CreateAttributeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _internalCode = $v.internalCode;
      _name = $v.name;
      _description = $v.description;
      _isVariantLevel = $v.isVariantLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAttributeRequest other) {
    _$v = other as _$CreateAttributeRequest;
  }

  @override
  void update(void Function(CreateAttributeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAttributeRequest build() => _build();

  _$CreateAttributeRequest _build() {
    final _$result =
        _$v ??
        _$CreateAttributeRequest._(
          internalCode: internalCode,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CreateAttributeRequest',
            'name',
          ),
          description: description,
          isVariantLevel: BuiltValueNullFieldError.checkNotNull(
            isVariantLevel,
            r'CreateAttributeRequest',
            'isVariantLevel',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
