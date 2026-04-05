// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_attribute_value_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAttributeValueRequest extends UpdateAttributeValueRequest {
  @override
  final String value;

  factory _$UpdateAttributeValueRequest([
    void Function(UpdateAttributeValueRequestBuilder)? updates,
  ]) => (UpdateAttributeValueRequestBuilder()..update(updates))._build();

  _$UpdateAttributeValueRequest._({required this.value}) : super._();
  @override
  UpdateAttributeValueRequest rebuild(
    void Function(UpdateAttributeValueRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateAttributeValueRequestBuilder toBuilder() =>
      UpdateAttributeValueRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAttributeValueRequest && value == other.value;
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
      r'UpdateAttributeValueRequest',
    )..add('value', value)).toString();
  }
}

class UpdateAttributeValueRequestBuilder
    implements
        Builder<
          UpdateAttributeValueRequest,
          UpdateAttributeValueRequestBuilder
        > {
  _$UpdateAttributeValueRequest? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  UpdateAttributeValueRequestBuilder() {
    UpdateAttributeValueRequest._defaults(this);
  }

  UpdateAttributeValueRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAttributeValueRequest other) {
    _$v = other as _$UpdateAttributeValueRequest;
  }

  @override
  void update(void Function(UpdateAttributeValueRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAttributeValueRequest build() => _build();

  _$UpdateAttributeValueRequest _build() {
    final _$result =
        _$v ??
        _$UpdateAttributeValueRequest._(
          value: BuiltValueNullFieldError.checkNotNull(
            value,
            r'UpdateAttributeValueRequest',
            'value',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
