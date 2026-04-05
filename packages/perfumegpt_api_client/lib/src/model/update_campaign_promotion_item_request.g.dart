// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_campaign_promotion_item_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCampaignPromotionItemRequest
    extends UpdateCampaignPromotionItemRequest {
  @override
  final String? id;
  @override
  final String productVariantId;
  @override
  final String? batchId;
  @override
  final PromotionType? promotionType;
  @override
  final int? maxUsage;

  factory _$UpdateCampaignPromotionItemRequest([
    void Function(UpdateCampaignPromotionItemRequestBuilder)? updates,
  ]) => (UpdateCampaignPromotionItemRequestBuilder()..update(updates))._build();

  _$UpdateCampaignPromotionItemRequest._({
    this.id,
    required this.productVariantId,
    this.batchId,
    this.promotionType,
    this.maxUsage,
  }) : super._();
  @override
  UpdateCampaignPromotionItemRequest rebuild(
    void Function(UpdateCampaignPromotionItemRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateCampaignPromotionItemRequestBuilder toBuilder() =>
      UpdateCampaignPromotionItemRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCampaignPromotionItemRequest &&
        id == other.id &&
        productVariantId == other.productVariantId &&
        batchId == other.batchId &&
        promotionType == other.promotionType &&
        maxUsage == other.maxUsage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, productVariantId.hashCode);
    _$hash = $jc(_$hash, batchId.hashCode);
    _$hash = $jc(_$hash, promotionType.hashCode);
    _$hash = $jc(_$hash, maxUsage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateCampaignPromotionItemRequest')
          ..add('id', id)
          ..add('productVariantId', productVariantId)
          ..add('batchId', batchId)
          ..add('promotionType', promotionType)
          ..add('maxUsage', maxUsage))
        .toString();
  }
}

class UpdateCampaignPromotionItemRequestBuilder
    implements
        Builder<
          UpdateCampaignPromotionItemRequest,
          UpdateCampaignPromotionItemRequestBuilder
        > {
  _$UpdateCampaignPromotionItemRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _productVariantId;
  String? get productVariantId => _$this._productVariantId;
  set productVariantId(String? productVariantId) =>
      _$this._productVariantId = productVariantId;

  String? _batchId;
  String? get batchId => _$this._batchId;
  set batchId(String? batchId) => _$this._batchId = batchId;

  PromotionType? _promotionType;
  PromotionType? get promotionType => _$this._promotionType;
  set promotionType(PromotionType? promotionType) =>
      _$this._promotionType = promotionType;

  int? _maxUsage;
  int? get maxUsage => _$this._maxUsage;
  set maxUsage(int? maxUsage) => _$this._maxUsage = maxUsage;

  UpdateCampaignPromotionItemRequestBuilder() {
    UpdateCampaignPromotionItemRequest._defaults(this);
  }

  UpdateCampaignPromotionItemRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _productVariantId = $v.productVariantId;
      _batchId = $v.batchId;
      _promotionType = $v.promotionType;
      _maxUsage = $v.maxUsage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCampaignPromotionItemRequest other) {
    _$v = other as _$UpdateCampaignPromotionItemRequest;
  }

  @override
  void update(
    void Function(UpdateCampaignPromotionItemRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCampaignPromotionItemRequest build() => _build();

  _$UpdateCampaignPromotionItemRequest _build() {
    final _$result =
        _$v ??
        _$UpdateCampaignPromotionItemRequest._(
          id: id,
          productVariantId: BuiltValueNullFieldError.checkNotNull(
            productVariantId,
            r'UpdateCampaignPromotionItemRequest',
            'productVariantId',
          ),
          batchId: batchId,
          promotionType: promotionType,
          maxUsage: maxUsage,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
