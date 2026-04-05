// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'excel_template_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExcelTemplateResponse extends ExcelTemplateResponse {
  @override
  final String fileContent;
  @override
  final String fileName;
  @override
  final String? contentType;

  factory _$ExcelTemplateResponse([
    void Function(ExcelTemplateResponseBuilder)? updates,
  ]) => (ExcelTemplateResponseBuilder()..update(updates))._build();

  _$ExcelTemplateResponse._({
    required this.fileContent,
    required this.fileName,
    this.contentType,
  }) : super._();
  @override
  ExcelTemplateResponse rebuild(
    void Function(ExcelTemplateResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ExcelTemplateResponseBuilder toBuilder() =>
      ExcelTemplateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExcelTemplateResponse &&
        fileContent == other.fileContent &&
        fileName == other.fileName &&
        contentType == other.contentType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fileContent.hashCode);
    _$hash = $jc(_$hash, fileName.hashCode);
    _$hash = $jc(_$hash, contentType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExcelTemplateResponse')
          ..add('fileContent', fileContent)
          ..add('fileName', fileName)
          ..add('contentType', contentType))
        .toString();
  }
}

class ExcelTemplateResponseBuilder
    implements Builder<ExcelTemplateResponse, ExcelTemplateResponseBuilder> {
  _$ExcelTemplateResponse? _$v;

  String? _fileContent;
  String? get fileContent => _$this._fileContent;
  set fileContent(String? fileContent) => _$this._fileContent = fileContent;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  String? _contentType;
  String? get contentType => _$this._contentType;
  set contentType(String? contentType) => _$this._contentType = contentType;

  ExcelTemplateResponseBuilder() {
    ExcelTemplateResponse._defaults(this);
  }

  ExcelTemplateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fileContent = $v.fileContent;
      _fileName = $v.fileName;
      _contentType = $v.contentType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExcelTemplateResponse other) {
    _$v = other as _$ExcelTemplateResponse;
  }

  @override
  void update(void Function(ExcelTemplateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExcelTemplateResponse build() => _build();

  _$ExcelTemplateResponse _build() {
    final _$result =
        _$v ??
        _$ExcelTemplateResponse._(
          fileContent: BuiltValueNullFieldError.checkNotNull(
            fileContent,
            r'ExcelTemplateResponse',
            'fileContent',
          ),
          fileName: BuiltValueNullFieldError.checkNotNull(
            fileName,
            r'ExcelTemplateResponse',
            'fileName',
          ),
          contentType: contentType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
