// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_promotion_item_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CampaignPromotionItemResponse extends CampaignPromotionItemResponse {
  @override
  final String? id;
  @override
  final String? campaignId;
  @override
  final String? productVariantId;
  @override
  final String? batchId;
  @override
  final String name;
  @override
  final PromotionType? itemType;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final bool? autoStopWhenBatchEmpty;
  @override
  final int? maxUsage;
  @override
  final int? currentUsage;

  factory _$CampaignPromotionItemResponse([
    void Function(CampaignPromotionItemResponseBuilder)? updates,
  ]) => (CampaignPromotionItemResponseBuilder()..update(updates))._build();

  _$CampaignPromotionItemResponse._({
    this.id,
    this.campaignId,
    this.productVariantId,
    this.batchId,
    required this.name,
    this.itemType,
    this.startDate,
    this.endDate,
    this.autoStopWhenBatchEmpty,
    this.maxUsage,
    this.currentUsage,
  }) : super._();
  @override
  CampaignPromotionItemResponse rebuild(
    void Function(CampaignPromotionItemResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CampaignPromotionItemResponseBuilder toBuilder() =>
      CampaignPromotionItemResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CampaignPromotionItemResponse &&
        id == other.id &&
        campaignId == other.campaignId &&
        productVariantId == other.productVariantId &&
        batchId == other.batchId &&
        name == other.name &&
        itemType == other.itemType &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        autoStopWhenBatchEmpty == other.autoStopWhenBatchEmpty &&
        maxUsage == other.maxUsage &&
        currentUsage == other.currentUsage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, campaignId.hashCode);
    _$hash = $jc(_$hash, productVariantId.hashCode);
    _$hash = $jc(_$hash, batchId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, itemType.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, autoStopWhenBatchEmpty.hashCode);
    _$hash = $jc(_$hash, maxUsage.hashCode);
    _$hash = $jc(_$hash, currentUsage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CampaignPromotionItemResponse')
          ..add('id', id)
          ..add('campaignId', campaignId)
          ..add('productVariantId', productVariantId)
          ..add('batchId', batchId)
          ..add('name', name)
          ..add('itemType', itemType)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('autoStopWhenBatchEmpty', autoStopWhenBatchEmpty)
          ..add('maxUsage', maxUsage)
          ..add('currentUsage', currentUsage))
        .toString();
  }
}

class CampaignPromotionItemResponseBuilder
    implements
        Builder<
          CampaignPromotionItemResponse,
          CampaignPromotionItemResponseBuilder
        > {
  _$CampaignPromotionItemResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _campaignId;
  String? get campaignId => _$this._campaignId;
  set campaignId(String? campaignId) => _$this._campaignId = campaignId;

  String? _productVariantId;
  String? get productVariantId => _$this._productVariantId;
  set productVariantId(String? productVariantId) =>
      _$this._productVariantId = productVariantId;

  String? _batchId;
  String? get batchId => _$this._batchId;
  set batchId(String? batchId) => _$this._batchId = batchId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PromotionType? _itemType;
  PromotionType? get itemType => _$this._itemType;
  set itemType(PromotionType? itemType) => _$this._itemType = itemType;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  bool? _autoStopWhenBatchEmpty;
  bool? get autoStopWhenBatchEmpty => _$this._autoStopWhenBatchEmpty;
  set autoStopWhenBatchEmpty(bool? autoStopWhenBatchEmpty) =>
      _$this._autoStopWhenBatchEmpty = autoStopWhenBatchEmpty;

  int? _maxUsage;
  int? get maxUsage => _$this._maxUsage;
  set maxUsage(int? maxUsage) => _$this._maxUsage = maxUsage;

  int? _currentUsage;
  int? get currentUsage => _$this._currentUsage;
  set currentUsage(int? currentUsage) => _$this._currentUsage = currentUsage;

  CampaignPromotionItemResponseBuilder() {
    CampaignPromotionItemResponse._defaults(this);
  }

  CampaignPromotionItemResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _campaignId = $v.campaignId;
      _productVariantId = $v.productVariantId;
      _batchId = $v.batchId;
      _name = $v.name;
      _itemType = $v.itemType;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _autoStopWhenBatchEmpty = $v.autoStopWhenBatchEmpty;
      _maxUsage = $v.maxUsage;
      _currentUsage = $v.currentUsage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CampaignPromotionItemResponse other) {
    _$v = other as _$CampaignPromotionItemResponse;
  }

  @override
  void update(void Function(CampaignPromotionItemResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CampaignPromotionItemResponse build() => _build();

  _$CampaignPromotionItemResponse _build() {
    final _$result =
        _$v ??
        _$CampaignPromotionItemResponse._(
          id: id,
          campaignId: campaignId,
          productVariantId: productVariantId,
          batchId: batchId,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CampaignPromotionItemResponse',
            'name',
          ),
          itemType: itemType,
          startDate: startDate,
          endDate: endDate,
          autoStopWhenBatchEmpty: autoStopWhenBatchEmpty,
          maxUsage: maxUsage,
          currentUsage: currentUsage,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
