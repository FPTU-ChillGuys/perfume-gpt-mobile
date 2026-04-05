// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_image_upload_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VariantImageUploadItem extends VariantImageUploadItem {
  @override
  final Uint8List imageFile;
  @override
  final String? altText;
  @override
  final int? displayOrder;
  @override
  final bool? isPrimary;

  factory _$VariantImageUploadItem([
    void Function(VariantImageUploadItemBuilder)? updates,
  ]) => (VariantImageUploadItemBuilder()..update(updates))._build();

  _$VariantImageUploadItem._({
    required this.imageFile,
    this.altText,
    this.displayOrder,
    this.isPrimary,
  }) : super._();
  @override
  VariantImageUploadItem rebuild(
    void Function(VariantImageUploadItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  VariantImageUploadItemBuilder toBuilder() =>
      VariantImageUploadItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VariantImageUploadItem &&
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
    return (newBuiltValueToStringHelper(r'VariantImageUploadItem')
          ..add('imageFile', imageFile)
          ..add('altText', altText)
          ..add('displayOrder', displayOrder)
          ..add('isPrimary', isPrimary))
        .toString();
  }
}

class VariantImageUploadItemBuilder
    implements Builder<VariantImageUploadItem, VariantImageUploadItemBuilder> {
  _$VariantImageUploadItem? _$v;

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

  VariantImageUploadItemBuilder() {
    VariantImageUploadItem._defaults(this);
  }

  VariantImageUploadItemBuilder get _$this {
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
  void replace(VariantImageUploadItem other) {
    _$v = other as _$VariantImageUploadItem;
  }

  @override
  void update(void Function(VariantImageUploadItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VariantImageUploadItem build() => _build();

  _$VariantImageUploadItem _build() {
    final _$result =
        _$v ??
        _$VariantImageUploadItem._(
          imageFile: BuiltValueNullFieldError.checkNotNull(
            imageFile,
            r'VariantImageUploadItem',
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
