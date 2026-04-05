// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_attribute_value_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAttributeValueRequest extends CreateAttributeValueRequest {
  @override
  final String value;

  factory _$CreateAttributeValueRequest([
    void Function(CreateAttributeValueRequestBuilder)? updates,
  ]) => (CreateAttributeValueRequestBuilder()..update(updates))._build();

  _$CreateAttributeValueRequest._({required this.value}) : super._();
  @override
  CreateAttributeValueRequest rebuild(
    void Function(CreateAttributeValueRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateAttributeValueRequestBuilder toBuilder() =>
      CreateAttributeValueRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAttributeValueRequest && value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'CreateAttributeValueRequest',
    )..add('value', value)).toString();
  }
}

class CreateAttributeValueRequestBuilder
    implements
        Builder<
          CreateAttributeValueRequest,
          CreateAttributeValueRequestBuilder
        > {
  _$CreateAttributeValueRequest? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  CreateAttributeValueRequestBuilder() {
    CreateAttributeValueRequest._defaults(this);
  }

  CreateAttributeValueRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateAttributeValueRequest other) {
    _$v = other as _$CreateAttributeValueRequest;
  }

  @override
  void update(void Function(CreateAttributeValueRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAttributeValueRequest build() => _build();

  _$CreateAttributeValueRequest _build() {
    final _$result =
        _$v ??
        _$CreateAttributeValueRequest._(
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'CreateAttributeValueRequest',
            'value',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
