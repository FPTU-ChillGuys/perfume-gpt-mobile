// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_campaign_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCampaignRequest extends UpdateCampaignRequest {
  @override
  final String name;
  @override
  final String? description;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final CampaignType? type;
  @override
  final BuiltList<UpdateCampaignPromotionItemRequest> items;
  @override
  final BuiltList<UpdateCampaignVoucherRequest> vouchers;

  factory _$UpdateCampaignRequest([
    void Function(UpdateCampaignRequestBuilder)? updates,
  ]) => (UpdateCampaignRequestBuilder()..update(updates))._build();

  _$UpdateCampaignRequest._({
    required this.name,
    this.description,
    this.startDate,
    this.endDate,
    this.type,
    required this.items,
    required this.vouchers,
  }) : super._();
  @override
  UpdateCampaignRequest rebuild(
    void Function(UpdateCampaignRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateCampaignRequestBuilder toBuilder() =>
      UpdateCampaignRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCampaignRequest &&
        name == other.name &&
        description == other.description &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        type == other.type &&
        items == other.items &&
        vouchers == other.vouchers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, vouchers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateCampaignRequest')
          ..add('name', name)
          ..add('description', description)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('type', type)
          ..add('items', items)
          ..add('vouchers', vouchers))
        .toString();
  }
}

class UpdateCampaignRequestBuilder
    implements Builder<UpdateCampaignRequest, UpdateCampaignRequestBuilder> {
  _$UpdateCampaignRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _startDate;
  DateTime? get startDate => _$this._startDate;
  set startDate(DateTime? startDate) => _$this._startDate = startDate;

  DateTime? _endDate;
  DateTime? get endDate => _$this._endDate;
  set endDate(DateTime? endDate) => _$this._endDate = endDate;

  CampaignType? _type;
  CampaignType? get type => _$this._type;
  set type(CampaignType? type) => _$this._type = type;

  ListBuilder<UpdateCampaignPromotionItemRequest>? _items;
  ListBuilder<UpdateCampaignPromotionItemRequest> get items =>
      _$this._items ??= ListBuilder<UpdateCampaignPromotionItemRequest>();
  set items(ListBuilder<UpdateCampaignPromotionItemRequest>? items) =>
      _$this._items = items;

  ListBuilder<UpdateCampaignVoucherRequest>? _vouchers;
  ListBuilder<UpdateCampaignVoucherRequest> get vouchers =>
      _$this._vouchers ??= ListBuilder<UpdateCampaignVoucherRequest>();
  set vouchers(ListBuilder<UpdateCampaignVoucherRequest>? vouchers) =>
      _$this._vouchers = vouchers;

  UpdateCampaignRequestBuilder() {
    UpdateCampaignRequest._defaults(this);
  }

  UpdateCampaignRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _startDate = $v.startDate;
      _endDate = $v.endDate;
      _type = $v.type;
      _items = $v.items.toBuilder();
      _vouchers = $v.vouchers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCampaignRequest other) {
    _$v = other as _$UpdateCampaignRequest;
  }

  @override
  void update(void Function(UpdateCampaignRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCampaignRequest build() => _build();

  _$UpdateCampaignRequest _build() {
    _$UpdateCampaignRequest _$result;
    try {
      _$result =
          _$v ??
          _$UpdateCampaignRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'UpdateCampaignRequest',
              'name',
            ),
            description: description,
            startDate: startDate,
            endDate: endDate,
            type: type,
            items: items.build(),
            vouchers: vouchers.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
        _$failedField = 'vouchers';
        vouchers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UpdateCampaignRequest',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
