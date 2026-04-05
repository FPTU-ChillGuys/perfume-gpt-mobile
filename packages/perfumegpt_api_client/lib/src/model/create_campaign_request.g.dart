// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_campaign_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCampaignRequest extends CreateCampaignRequest {
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
  final BuiltList<CreateCampaignPromotionItemRequest> items;
  @override
  final BuiltList<CreateCampaignVoucherRequest> vouchers;

  factory _$CreateCampaignRequest([
    void Function(CreateCampaignRequestBuilder)? updates,
  ]) => (CreateCampaignRequestBuilder()..update(updates))._build();

  _$CreateCampaignRequest._({
    required this.name,
    this.description,
    this.startDate,
    this.endDate,
    this.type,
    required this.items,
    required this.vouchers,
  }) : super._();
  @override
  CreateCampaignRequest rebuild(
    void Function(CreateCampaignRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateCampaignRequestBuilder toBuilder() =>
      CreateCampaignRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCampaignRequest &&
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
    return (newBuiltValueToStringHelper(r'CreateCampaignRequest')
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

class CreateCampaignRequestBuilder
    implements Builder<CreateCampaignRequest, CreateCampaignRequestBuilder> {
  _$CreateCampaignRequest? _$v;

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

  ListBuilder<CreateCampaignPromotionItemRequest>? _items;
  ListBuilder<CreateCampaignPromotionItemRequest> get items =>
      _$this._items ??= ListBuilder<CreateCampaignPromotionItemRequest>();
  set items(ListBuilder<CreateCampaignPromotionItemRequest>? items) =>
      _$this._items = items;

  ListBuilder<CreateCampaignVoucherRequest>? _vouchers;
  ListBuilder<CreateCampaignVoucherRequest> get vouchers =>
      _$this._vouchers ??= ListBuilder<CreateCampaignVoucherRequest>();
  set vouchers(ListBuilder<CreateCampaignVoucherRequest>? vouchers) =>
      _$this._vouchers = vouchers;

  CreateCampaignRequestBuilder() {
    CreateCampaignRequest._defaults(this);
  }

  CreateCampaignRequestBuilder get _$this {
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
  void replace(CreateCampaignRequest other) {
    _$v = other as _$CreateCampaignRequest;
  }

  @override
  void update(void Function(CreateCampaignRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCampaignRequest build() => _build();

  _$CreateCampaignRequest _build() {
    _$CreateCampaignRequest _$result;
    try {
      _$result =
          _$v ??
          _$CreateCampaignRequest._(
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'CreateCampaignRequest',
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
          r'CreateCampaignRequest',
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
