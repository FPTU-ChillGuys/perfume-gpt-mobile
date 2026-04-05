// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MediaResponse extends MediaResponse {
  @override
  final String? id;
  @override
  final String url;
  @override
  final String? altText;
  @override
  final int? displayOrder;
  @override
  final bool? isPrimary;
  @override
  final int? fileSize;
  @override
  final String? mimeType;

  factory _$MediaResponse([void Function(MediaResponseBuilder)? updates]) =>
      (MediaResponseBuilder()..update(updates))._build();

  _$MediaResponse._({
    this.id,
    required this.url,
    this.altText,
    this.displayOrder,
    this.isPrimary,
    this.fileSize,
    this.mimeType,
  }) : super._();
  @override
  MediaResponse rebuild(void Function(MediaResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MediaResponseBuilder toBuilder() => MediaResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MediaResponse &&
        id == other.id &&
        url == other.url &&
        altText == other.altText &&
        displayOrder == other.displayOrder &&
        isPrimary == other.isPrimary &&
        fileSize == other.fileSize &&
        mimeType == other.mimeType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, altText.hashCode);
    _$hash = $jc(_$hash, displayOrder.hashCode);
    _$hash = $jc(_$hash, isPrimary.hashCode);
    _$hash = $jc(_$hash, fileSize.hashCode);
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MediaResponse')
          ..add('id', id)
          ..add('url', url)
          ..add('altText', altText)
          ..add('displayOrder', displayOrder)
          ..add('isPrimary', isPrimary)
          ..add('fileSize', fileSize)
          ..add('mimeType', mimeType))
        .toString();
  }
}

class MediaResponseBuilder
    implements Builder<MediaResponse, MediaResponseBuilder> {
  _$MediaResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _altText;
  String? get altText => _$this._altText;
  set altText(String? altText) => _$this._altText = altText;

  int? _displayOrder;
  int? get displayOrder => _$this._displayOrder;
  set displayOrder(int? displayOrder) => _$this._displayOrder = displayOrder;

  bool? _isPrimary;
  bool? get isPrimary => _$this._isPrimary;
  set isPrimary(bool? isPrimary) => _$this._isPrimary = isPrimary;

  int? _fileSize;
  int? get fileSize => _$this._fileSize;
  set fileSize(int? fileSize) => _$this._fileSize = fileSize;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  MediaResponseBuilder() {
    MediaResponse._defaults(this);
  }

  MediaResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _url = $v.url;
      _altText = $v.altText;
      _displayOrder = $v.displayOrder;
      _isPrimary = $v.isPrimary;
      _fileSize = $v.fileSize;
      _mimeType = $v.mimeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MediaResponse other) {
    _$v = other as _$MediaResponse;
  }

  @override
  void update(void Function(MediaResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MediaResponse build() => _build();

  _$MediaResponse _build() {
    final _$result =
        _$v ??
        _$MediaResponse._(
          id: id,
          url: BuiltValueNullFieldError.checkNotNull(
            url,
            r'MediaResponse',
            'url',
          ),
          altText: altText,
          displayOrder: displayOrder,
          isPrimary: isPrimary,
          fileSize: fileSize,
          mimeType: mimeType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
