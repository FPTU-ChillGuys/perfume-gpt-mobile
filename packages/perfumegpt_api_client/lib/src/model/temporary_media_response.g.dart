// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temporary_media_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TemporaryMediaResponse extends TemporaryMediaResponse {
  @override
  final String? id;
  @override
  final String url;
  @override
  final String? altText;
  @override
  final int? displayOrder;
  @override
  final int? fileSize;
  @override
  final String? mimeType;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? createdAt;

  factory _$TemporaryMediaResponse([
    void Function(TemporaryMediaResponseBuilder)? updates,
  ]) => (TemporaryMediaResponseBuilder()..update(updates))._build();

  _$TemporaryMediaResponse._({
    this.id,
    required this.url,
    this.altText,
    this.displayOrder,
    this.fileSize,
    this.mimeType,
    this.expiresAt,
    this.createdAt,
  }) : super._();
  @override
  TemporaryMediaResponse rebuild(
    void Function(TemporaryMediaResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TemporaryMediaResponseBuilder toBuilder() =>
      TemporaryMediaResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemporaryMediaResponse &&
        id == other.id &&
        url == other.url &&
        altText == other.altText &&
        displayOrder == other.displayOrder &&
        fileSize == other.fileSize &&
        mimeType == other.mimeType &&
        expiresAt == other.expiresAt &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, altText.hashCode);
    _$hash = $jc(_$hash, displayOrder.hashCode);
    _$hash = $jc(_$hash, fileSize.hashCode);
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemporaryMediaResponse')
          ..add('id', id)
          ..add('url', url)
          ..add('altText', altText)
          ..add('displayOrder', displayOrder)
          ..add('fileSize', fileSize)
          ..add('mimeType', mimeType)
          ..add('expiresAt', expiresAt)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class TemporaryMediaResponseBuilder
    implements Builder<TemporaryMediaResponse, TemporaryMediaResponseBuilder> {
  _$TemporaryMediaResponse? _$v;

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

  int? _fileSize;
  int? get fileSize => _$this._fileSize;
  set fileSize(int? fileSize) => _$this._fileSize = fileSize;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  DateTime? _expiresAt;
  DateTime? get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime? expiresAt) => _$this._expiresAt = expiresAt;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  TemporaryMediaResponseBuilder() {
    TemporaryMediaResponse._defaults(this);
  }

  TemporaryMediaResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _url = $v.url;
      _altText = $v.altText;
      _displayOrder = $v.displayOrder;
      _fileSize = $v.fileSize;
      _mimeType = $v.mimeType;
      _expiresAt = $v.expiresAt;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemporaryMediaResponse other) {
    _$v = other as _$TemporaryMediaResponse;
  }

  @override
  void update(void Function(TemporaryMediaResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemporaryMediaResponse build() => _build();

  _$TemporaryMediaResponse _build() {
    final _$result =
        _$v ??
        _$TemporaryMediaResponse._(
          id: id,
          url: BuiltValueNullFieldError.checkNotNull(
            url,
            r'TemporaryMediaResponse',
            'url',
          ),
          altText: altText,
          displayOrder: displayOrder,
          fileSize: fileSize,
          mimeType: mimeType,
          expiresAt: expiresAt,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
