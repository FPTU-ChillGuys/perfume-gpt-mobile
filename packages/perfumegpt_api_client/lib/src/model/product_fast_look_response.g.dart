// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_fast_look_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductFastLookResponse extends ProductFastLookResponse {
  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String brandName;
  @override
  final Gender? gender;
  @override
  final BuiltList<VariantFastLookResponse> variants;
  @override
  final int? rating;
  @override
  final int? reviewCount;

  factory _$ProductFastLookResponse([
    void Function(ProductFastLookResponseBuilder)? updates,
  ]) => (ProductFastLookResponseBuilder()..update(updates))._build();

  _$ProductFastLookResponse._({
    this.id,
    required this.name,
    this.description,
    required this.brandName,
    this.gender,
    required this.variants,
    this.rating,
    this.reviewCount,
  }) : super._();
  @override
  ProductFastLookResponse rebuild(
    void Function(ProductFastLookResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProductFastLookResponseBuilder toBuilder() =>
      ProductFastLookResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductFastLookResponse &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        brandName == other.brandName &&
        gender == other.gender &&
        variants == other.variants &&
        rating == other.rating &&
        reviewCount == other.reviewCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, brandName.hashCode);
    _$hash = $jc(_$hash, gender.hashCode);
    _$hash = $jc(_$hash, variants.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, reviewCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductFastLookResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('brandName', brandName)
          ..add('gender', gender)
          ..add('variants', variants)
          ..add('rating', rating)
          ..add('reviewCount', reviewCount))
        .toString();
  }
}

class ProductFastLookResponseBuilder
    implements
        Builder<ProductFastLookResponse, ProductFastLookResponseBuilder> {
  _$ProductFastLookResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _brandName;
  String? get brandName => _$this._brandName;
  set brandName(String? brandName) => _$this._brandName = brandName;

  Gender? _gender;
  Gender? get gender => _$this._gender;
  set gender(Gender? gender) => _$this._gender = gender;

  ListBuilder<VariantFastLookResponse>? _variants;
  ListBuilder<VariantFastLookResponse> get variants =>
      _$this._variants ??= ListBuilder<VariantFastLookResponse>();
  set variants(ListBuilder<VariantFastLookResponse>? variants) =>
      _$this._variants = variants;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  int? _reviewCount;
  int? get reviewCount => _$this._reviewCount;
  set reviewCount(int? reviewCount) => _$this._reviewCount = reviewCount;

  ProductFastLookResponseBuilder() {
    ProductFastLookResponse._defaults(this);
  }

  ProductFastLookResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _brandName = $v.brandName;
      _gender = $v.gender;
      _variants = $v.variants.toBuilder();
      _rating = $v.rating;
      _reviewCount = $v.reviewCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductFastLookResponse other) {
    _$v = other as _$ProductFastLookResponse;
  }

  @override
  void update(void Function(ProductFastLookResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductFastLookResponse build() => _build();

  _$ProductFastLookResponse _build() {
    _$ProductFastLookResponse _$result;
    try {
      _$result =
          _$v ??
          _$ProductFastLookResponse._(
            id: id,
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'ProductFastLookResponse',
              'name',
            ),
            description: description,
            brandName: BuiltValueNullFieldError.checkNotNull(
              brandName,
              r'ProductFastLookResponse',
              'brandName',
            ),
            gender: gender,
            variants: variants.build(),
            rating: rating,
            reviewCount: reviewCount,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'variants';
        variants.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProductFastLookResponse',
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
