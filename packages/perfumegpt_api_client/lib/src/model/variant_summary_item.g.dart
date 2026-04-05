// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_summary_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VariantSummaryItem extends VariantSummaryItem {
  @override
  final String? id;
  @override
  final String displayName;
  @override
  final String concentrationName;

  factory _$VariantSummaryItem([
    void Function(VariantSummaryItemBuilder)? updates,
  ]) => (VariantSummaryItemBuilder()..update(updates))._build();

  _$VariantSummaryItem._({
    this.id,
    required this.displayName,
    required this.concentrationName,
  }) : super._();
  @override
  VariantSummaryItem rebuild(
    void Function(VariantSummaryItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  VariantSummaryItemBuilder toBuilder() =>
      VariantSummaryItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VariantSummaryItem &&
        id == other.id &&
        displayName == other.displayName &&
        concentrationName == other.concentrationName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, concentrationName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VariantSummaryItem')
          ..add('id', id)
          ..add('displayName', displayName)
          ..add('concentrationName', concentrationName))
        .toString();
  }
}

class VariantSummaryItemBuilder
    implements Builder<VariantSummaryItem, VariantSummaryItemBuilder> {
  _$VariantSummaryItem? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _concentrationName;
  String? get concentrationName => _$this._concentrationName;
  set concentrationName(String? concentrationName) =>
      _$this._concentrationName = concentrationName;

  VariantSummaryItemBuilder() {
    VariantSummaryItem._defaults(this);
  }

  VariantSummaryItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _displayName = $v.displayName;
      _concentrationName = $v.concentrationName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VariantSummaryItem other) {
    _$v = other as _$VariantSummaryItem;
  }

  @override
  void update(void Function(VariantSummaryItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VariantSummaryItem build() => _build();

  _$VariantSummaryItem _build() {
    final _$result =
        _$v ??
        _$VariantSummaryItem._(
          id: id,
          displayName: BuiltValueNullFieldError.checkNotNull(
            displayName,
            r'VariantSummaryItem',
            'displayName',
          ),
          concentrationName: BuiltValueNullFieldError.checkNotNull(
            concentrationName,
            r'VariantSummaryItem',
            'concentrationName',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
