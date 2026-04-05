// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_campaign_promotion_item_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCampaignPromotionItemRequest
    extends CreateCampaignPromotionItemRequest {
  @override
  final String productVariantId;
  @override
  final String? batchId;
  @override
  final PromotionType? promotionType;
  @override
  final int? maxUsage;

  factory _$CreateCampaignPromotionItemRequest([
    void Function(CreateCampaignPromotionItemRequestBuilder)? updates,
  ]) => (CreateCampaignPromotionItemRequestBuilder()..update(updates))._build();

  _$CreateCampaignPromotionItemRequest._({
    required this.productVariantId,
    this.batchId,
    this.promotionType,
    this.maxUsage,
  }) : super._();
  @override
  CreateCampaignPromotionItemRequest rebuild(
    void Function(CreateCampaignPromotionItemRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateCampaignPromotionItemRequestBuilder toBuilder() =>
      CreateCampaignPromotionItemRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCampaignPromotionItemRequest &&
        productVariantId == other.productVariantId &&
        batchId == other.batchId &&
        promotionType == other.promotionType &&
        maxUsage == other.maxUsage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productVariantId.hashCode);
    _$hash = $jc(_$hash, batchId.hashCode);
    _$hash = $jc(_$hash, promotionType.hashCode);
    _$hash = $jc(_$hash, maxUsage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateCampaignPromotionItemRequest')
          ..add('productVariantId', productVariantId)
          ..add('batchId', batchId)
          ..add('promotionType', promotionType)
          ..add('maxUsage', maxUsage))
        .toString();
  }
}

class CreateCampaignPromotionItemRequestBuilder
    implements
        Builder<
          CreateCampaignPromotionItemRequest,
          CreateCampaignPromotionItemRequestBuilder
        > {
  _$CreateCampaignPromotionItemRequest? _$v;

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

  CreateCampaignPromotionItemRequestBuilder() {
    CreateCampaignPromotionItemRequest._defaults(this);
  }

  CreateCampaignPromotionItemRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productVariantId = $v.productVariantId;
      _batchId = $v.batchId;
      _promotionType = $v.promotionType;
      _maxUsage = $v.maxUsage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCampaignPromotionItemRequest other) {
    _$v = other as _$CreateCampaignPromotionItemRequest;
  }

  @override
  void update(
    void Function(CreateCampaignPromotionItemRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  CreateCampaignPromotionItemRequest build() => _build();

  _$CreateCampaignPromotionItemRequest _build() {
    final _$result =
        _$v ??
        _$CreateCampaignPromotionItemRequest._(
          productVariantId: BuiltValueNullFieldError.checkNotNull(
            productVariantId,
            r'CreateCampaignPromotionItemRequest',
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
