// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_upload_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductImageUploadItem extends ProductImageUploadItem {
  @override
  final Uint8List imageFile;
  @override
  final String? altText;
  @override
  final int? displayOrder;
  @override
  final bool? isPrimary;

  factory _$ProductImageUploadItem([
    void Function(ProductImageUploadItemBuilder)? updates,
  ]) => (ProductImageUploadItemBuilder()..update(updates))._build();

  _$ProductImageUploadItem._({
    required this.imageFile,
    this.altText,
    this.displayOrder,
    this.isPrimary,
  }) : super._();
  @override
  ProductImageUploadItem rebuild(
    void Function(ProductImageUploadItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProductImageUploadItemBuilder toBuilder() =>
      ProductImageUploadItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductImageUploadItem &&
        imageFile == other.imageFile &&
        altText == other.altText &&
        displayOrder == other.displayOrder &&
        isPrimary == other.isPrimary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imageFile.hashCode);
    _$hash = $jc(_$hash, altText.hashCode);
    _$hash = $jc(_$hash, displayOrder.hashCode);
    _$hash = $jc(_$hash, isPrimary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductImageUploadItem')
          ..add('imageFile', imageFile)
          ..add('altText', altText)
          ..add('displayOrder', displayOrder)
          ..add('isPrimary', isPrimary))
        .toString();
  }
}

class ProductImageUploadItemBuilder
    implements Builder<ProductImageUploadItem, ProductImageUploadItemBuilder> {
  _$ProductImageUploadItem? _$v;

  Uint8List? _imageFile;
  Uint8List? get imageFile => _$this._imageFile;
  set imageFile(Uint8List? imageFile) => _$this._imageFile = imageFile;

  String? _altText;
  String? get altText => _$this._altText;
  set altText(String? altText) => _$this._altText = altText;

  int? _displayOrder;
  int? get displayOrder => _$this._displayOrder;
  set displayOrder(int? displayOrder) => _$this._displayOrder = displayOrder;

  bool? _isPrimary;
  bool? get isPrimary => _$this._isPrimary;
  set isPrimary(bool? isPrimary) => _$this._isPrimary = isPrimary;

  ProductImageUploadItemBuilder() {
    ProductImageUploadItem._defaults(this);
  }

  ProductImageUploadItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageFile = $v.imageFile;
      _altText = $v.altText;
      _displayOrder = $v.displayOrder;
      _isPrimary = $v.isPrimary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductImageUploadItem other) {
    _$v = other as _$ProductImageUploadItem;
  }

  @override
  void update(void Function(ProductImageUploadItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductImageUploadItem build() => _build();

  _$ProductImageUploadItem _build() {
    final _$result =
        _$v ??
        _$ProductImageUploadItem._(
          imageFile: BuiltValueNullFieldError.checkNotNull(
            imageFile,
            r'ProductImageUploadItem',
            'imageFile',
          ),
          altText: altText,
          displayOrder: displayOrder,
          isPrimary: isPrimary,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
