// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_infor_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductInforResponse extends ProductInforResponse {
  @override
  final String productCode;
  @override
  final String brandName;
  @override
  final String origin;
  @override
  final int? releaseYear;
  @override
  final Gender? gender;
  @override
  final String scentGroup;
  @override
  final String style;
  @override
  final String topNotes;
  @override
  final String heartNotes;
  @override
  final String baseNotes;
  @override
  final String description;

  factory _$ProductInforResponse([
    void Function(ProductInforResponseBuilder)? updates,
  ]) => (ProductInforResponseBuilder()..update(updates))._build();

  _$ProductInforResponse._({
    required this.productCode,
    required this.brandName,
    required this.origin,
    this.releaseYear,
    this.gender,
    required this.scentGroup,
    required this.style,
    required this.topNotes,
    required this.heartNotes,
    required this.baseNotes,
    required this.description,
  }) : super._();
  @override
  ProductInforResponse rebuild(
    void Function(ProductInforResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProductInforResponseBuilder toBuilder() =>
      ProductInforResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductInforResponse &&
        productCode == other.productCode &&
        brandName == other.brandName &&
        origin == other.origin &&
        releaseYear == other.releaseYear &&
        gender == other.gender &&
        scentGroup == other.scentGroup &&
        style == other.style &&
        topNotes == other.topNotes &&
        heartNotes == other.heartNotes &&
        baseNotes == other.baseNotes &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productCode.hashCode);
    _$hash = $jc(_$hash, brandName.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, releaseYear.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, scentGroup.hashCode);
    _$hash = $jc(_$hash, style.hashCode);
    _$hash = $jc(_$hash, topNotes.hashCode);
    _$hash = $jc(_$hash, heartNotes.hashCode);
    _$hash = $jc(_$hash, baseNotes.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductInforResponse')
          ..add('productCode', productCode)
          ..add('brandName', brandName)
          ..add('origin', origin)
          ..add('releaseYear', releaseYear)
          ..add('gender', gender)
          ..add('scentGroup', scentGroup)
          ..add('style', style)
          ..add('topNotes', topNotes)
          ..add('heartNotes', heartNotes)
          ..add('baseNotes', baseNotes)
          ..add('description', description))
        .toString();
  }
}

class ProductInforResponseBuilder
    implements Builder<ProductInforResponse, ProductInforResponseBuilder> {
  _$ProductInforResponse? _$v;

  String? _productCode;
  String? get productCode => _$this._productCode;
  set productCode(String? productCode) => _$this._productCode = productCode;

  String? _brandName;
  String? get brandName => _$this._brandName;
  set brandName(String? brandName) => _$this._brandName = brandName;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  int? _releaseYear;
  int? get releaseYear => _$this._releaseYear;
  set releaseYear(int? releaseYear) => _$this._releaseYear = releaseYear;

  Gender? _gender;
  Gender? get gender => _$this._gender;
  set gender(Gender? gender) => _$this._gender = gender;

  String? _scentGroup;
  String? get scentGroup => _$this._scentGroup;
  set scentGroup(String? scentGroup) => _$this._scentGroup = scentGroup;

  String? _style;
  String? get style => _$this._style;
  set style(String? style) => _$this._style = style;

  String? _topNotes;
  String? get topNotes => _$this._topNotes;
  set topNotes(String? topNotes) => _$this._topNotes = topNotes;

  String? _heartNotes;
  String? get heartNotes => _$this._heartNotes;
  set heartNotes(String? heartNotes) => _$this._heartNotes = heartNotes;

  String? _baseNotes;
  String? get baseNotes => _$this._baseNotes;
  set baseNotes(String? baseNotes) => _$this._baseNotes = baseNotes;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ProductInforResponseBuilder() {
    ProductInforResponse._defaults(this);
  }

  ProductInforResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productCode = $v.productCode;
      _brandName = $v.brandName;
      _origin = $v.origin;
      _releaseYear = $v.releaseYear;
      _gender = $v.gender;
      _scentGroup = $v.scentGroup;
      _style = $v.style;
      _topNotes = $v.topNotes;
      _heartNotes = $v.heartNotes;
      _baseNotes = $v.baseNotes;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductInforResponse other) {
    _$v = other as _$ProductInforResponse;
  }

  @override
  void update(void Function(ProductInforResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductInforResponse build() => _build();

  _$ProductInforResponse _build() {
    final _$result =
        _$v ??
        _$ProductInforResponse._(
          productCode: BuiltValueNullFieldError.checkNotNull(
            productCode,
            r'ProductInforResponse',
            'productCode',
          ),
          brandName: BuiltValueNullFieldError.checkNotNull(
            brandName,
            r'ProductInforResponse',
            'brandName',
          ),
          origin: BuiltValueNullFieldError.checkNotNull(
            origin,
            r'ProductInforResponse',
            'origin',
          ),
          releaseYear: releaseYear,
          gender: gender,
          scentGroup: BuiltValueNullFieldError.checkNotNull(
            scentGroup,
            r'ProductInforResponse',
            'scentGroup',
          ),
          style: BuiltValueNullFieldError.checkNotNull(
            style,
            r'ProductInforResponse',
            'style',
          ),
          topNotes: BuiltValueNullFieldError.checkNotNull(
            topNotes,
            r'ProductInforResponse',
            'topNotes',
          ),
          heartNotes: BuiltValueNullFieldError.checkNotNull(
            heartNotes,
            r'ProductInforResponse',
            'heartNotes',
          ),
          baseNotes: BuiltValueNullFieldError.checkNotNull(
            baseNotes,
            r'ProductInforResponse',
            'baseNotes',
          ),
          description: BuiltValueNullFieldError.checkNotNull(
            description,
            r'ProductInforResponse',
            'description',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
