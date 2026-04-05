// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_attribute_preference_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerAttributePreferenceResponse
    extends CustomerAttributePreferenceResponse {
  @override
  final int? attributeValueId;
  @override
  final String attributeValueName;

  factory _$CustomerAttributePreferenceResponse([
    void Function(CustomerAttributePreferenceResponseBuilder)? updates,
  ]) =>
      (CustomerAttributePreferenceResponseBuilder()..update(updates))._build();

  _$CustomerAttributePreferenceResponse._({
    this.attributeValueId,
    required this.attributeValueName,
  }) : super._();
  @override
  CustomerAttributePreferenceResponse rebuild(
    void Function(CustomerAttributePreferenceResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CustomerAttributePreferenceResponseBuilder toBuilder() =>
      CustomerAttributePreferenceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerAttributePreferenceResponse &&
        attributeValueId == other.attributeValueId &&
        attributeValueName == other.attributeValueName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attributeValueId.hashCode);
    _$hash = $jc(_$hash, attributeValueName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerAttributePreferenceResponse')
          ..add('attributeValueId', attributeValueId)
          ..add('attributeValueName', attributeValueName))
        .toString();
  }
}

class CustomerAttributePreferenceResponseBuilder
    implements
        Builder<
          CustomerAttributePreferenceResponse,
          CustomerAttributePreferenceResponseBuilder
        > {
  _$CustomerAttributePreferenceResponse? _$v;

  int? _attributeValueId;
  int? get attributeValueId => _$this._attributeValueId;
  set attributeValueId(int? attributeValueId) =>
      _$this._attributeValueId = attributeValueId;

  String? _attributeValueName;
  String? get attributeValueName => _$this._attributeValueName;
  set attributeValueName(String? attributeValueName) =>
      _$this._attributeValueName = attributeValueName;

  CustomerAttributePreferenceResponseBuilder() {
    CustomerAttributePreferenceResponse._defaults(this);
  }

  CustomerAttributePreferenceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attributeValueId = $v.attributeValueId;
      _attributeValueName = $v.attributeValueName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerAttributePreferenceResponse other) {
    _$v = other as _$CustomerAttributePreferenceResponse;
  }

  @override
  void update(
    void Function(CustomerAttributePreferenceResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CustomerAttributePreferenceResponse build() => _build();

  _$CustomerAttributePreferenceResponse _build() {
    final _$result =
        _$v ??
        _$CustomerAttributePreferenceResponse._(
          attributeValueId: attributeValueId,
          attributeValueName: BuiltValueNullFieldError.checkNotNull(
            attributeValueName,
            r'CustomerAttributePreferenceResponse',
            'attributeValueName',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
