// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_daily_sale_figure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VariantDailySaleFigure extends VariantDailySaleFigure {
  @override
  final String? variantId;
  @override
  final String variantName;
  @override
  final Date? date;
  @override
  final int? quantitySold;

  factory _$VariantDailySaleFigure([
    void Function(VariantDailySaleFigureBuilder)? updates,
  ]) => (VariantDailySaleFigureBuilder()..update(updates))._build();

  _$VariantDailySaleFigure._({
    this.variantId,
    required this.variantName,
    this.date,
    this.quantitySold,
  }) : super._();
  @override
  VariantDailySaleFigure rebuild(
    void Function(VariantDailySaleFigureBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  VariantDailySaleFigureBuilder toBuilder() =>
      VariantDailySaleFigureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VariantDailySaleFigure &&
        variantId == other.variantId &&
        variantName == other.variantName &&
        date == other.date &&
        quantitySold == other.quantitySold;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, variantName.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, quantitySold.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VariantDailySaleFigure')
          ..add('variantId', variantId)
          ..add('variantName', variantName)
          ..add('date', date)
          ..add('quantitySold', quantitySold))
        .toString();
  }
}

class VariantDailySaleFigureBuilder
    implements Builder<VariantDailySaleFigure, VariantDailySaleFigureBuilder> {
  _$VariantDailySaleFigure? _$v;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  String? _variantName;
  String? get variantName => _$this._variantName;
  set variantName(String? variantName) => _$this._variantName = variantName;

  Date? _date;
  Date? get date => _$this._date;
  set date(Date? date) => _$this._date = date;

  int? _quantitySold;
  int? get quantitySold => _$this._quantitySold;
  set quantitySold(int? quantitySold) => _$this._quantitySold = quantitySold;

  VariantDailySaleFigureBuilder() {
    VariantDailySaleFigure._defaults(this);
  }

  VariantDailySaleFigureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _variantId = $v.variantId;
      _variantName = $v.variantName;
      _date = $v.date;
      _quantitySold = $v.quantitySold;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VariantDailySaleFigure other) {
    _$v = other as _$VariantDailySaleFigure;
  }

  @override
  void update(void Function(VariantDailySaleFigureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VariantDailySaleFigure build() => _build();

  _$VariantDailySaleFigure _build() {
    final _$result =
        _$v ??
        _$VariantDailySaleFigure._(
          variantId: variantId,
          variantName: BuiltValueNullFieldError.checkNotNull(
            variantName,
            r'VariantDailySaleFigure',
            'variantName',
          ),
          date: date,
          quantitySold: quantitySold,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
