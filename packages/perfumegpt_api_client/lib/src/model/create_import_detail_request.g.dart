// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_import_detail_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateImportDetailRequest extends CreateImportDetailRequest {
  @override
  final String variantId;
  @override
  final int? expectedQuantity;
  @override
  final num? unitPrice;

  factory _$CreateImportDetailRequest([
    void Function(CreateImportDetailRequestBuilder)? updates,
  ]) => (CreateImportDetailRequestBuilder()..update(updates))._build();

  _$CreateImportDetailRequest._({
    required this.variantId,
    this.expectedQuantity,
    this.unitPrice,
  }) : super._();
  @override
  CreateImportDetailRequest rebuild(
    void Function(CreateImportDetailRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateImportDetailRequestBuilder toBuilder() =>
      CreateImportDetailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateImportDetailRequest &&
        variantId == other.variantId &&
        expectedQuantity == other.expectedQuantity &&
        unitPrice == other.unitPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, expectedQuantity.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateImportDetailRequest')
          ..add('variantId', variantId)
          ..add('expectedQuantity', expectedQuantity)
          ..add('unitPrice', unitPrice))
        .toString();
  }
}

class CreateImportDetailRequestBuilder
    implements
        Builder<CreateImportDetailRequest, CreateImportDetailRequestBuilder> {
  _$CreateImportDetailRequest? _$v;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  int? _expectedQuantity;
  int? get expectedQuantity => _$this._expectedQuantity;
  set expectedQuantity(int? expectedQuantity) =>
      _$this._expectedQuantity = expectedQuantity;

  num? _unitPrice;
  num? get unitPrice => _$this._unitPrice;
  set unitPrice(num? unitPrice) => _$this._unitPrice = unitPrice;

  CreateImportDetailRequestBuilder() {
    CreateImportDetailRequest._defaults(this);
  }

  CreateImportDetailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _variantId = $v.variantId;
      _expectedQuantity = $v.expectedQuantity;
      _unitPrice = $v.unitPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateImportDetailRequest other) {
    _$v = other as _$CreateImportDetailRequest;
  }

  @override
  void update(void Function(CreateImportDetailRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateImportDetailRequest build() => _build();

  _$CreateImportDetailRequest _build() {
    final _$result =
        _$v ??
        _$CreateImportDetailRequest._(
          variantId: BuiltValueNullFieldError.checkNotNull(
            variantId,
            r'CreateImportDetailRequest',
            'variantId',
          ),
          expectedQuantity: expectedQuantity,
          unitPrice: unitPrice,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
