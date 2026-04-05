// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_import_detail_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateImportDetailRequest extends UpdateImportDetailRequest {
  @override
  final String? id;
  @override
  final String variantId;
  @override
  final int? expectedQuantity;
  @override
  final num? unitPrice;

  factory _$UpdateImportDetailRequest([
    void Function(UpdateImportDetailRequestBuilder)? updates,
  ]) => (UpdateImportDetailRequestBuilder()..update(updates))._build();

  _$UpdateImportDetailRequest._({
    this.id,
    required this.variantId,
    this.expectedQuantity,
    this.unitPrice,
  }) : super._();
  @override
  UpdateImportDetailRequest rebuild(
    void Function(UpdateImportDetailRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateImportDetailRequestBuilder toBuilder() =>
      UpdateImportDetailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateImportDetailRequest &&
        id == other.id &&
        variantId == other.variantId &&
        expectedQuantity == other.expectedQuantity &&
        unitPrice == other.unitPrice;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, expectedQuantity.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateImportDetailRequest')
          ..add('id', id)
          ..add('variantId', variantId)
          ..add('expectedQuantity', expectedQuantity)
          ..add('unitPrice', unitPrice))
        .toString();
  }
}

class UpdateImportDetailRequestBuilder
    implements
        Builder<UpdateImportDetailRequest, UpdateImportDetailRequestBuilder> {
  _$UpdateImportDetailRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  UpdateImportDetailRequestBuilder() {
    UpdateImportDetailRequest._defaults(this);
  }

  UpdateImportDetailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _variantId = $v.variantId;
      _expectedQuantity = $v.expectedQuantity;
      _unitPrice = $v.unitPrice;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateImportDetailRequest other) {
    _$v = other as _$UpdateImportDetailRequest;
  }

  @override
  void update(void Function(UpdateImportDetailRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateImportDetailRequest build() => _build();

  _$UpdateImportDetailRequest _build() {
    final _$result =
        _$v ??
        _$UpdateImportDetailRequest._(
          id: id,
          variantId: BuiltValueNullFieldError.checkNotNull(
            variantId,
            r'UpdateImportDetailRequest',
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
