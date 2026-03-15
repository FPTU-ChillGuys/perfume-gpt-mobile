// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'excel_template_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ExcelTemplateResponseCWProxy {
  ExcelTemplateResponse fileContent(String? fileContent);

  ExcelTemplateResponse fileName(String? fileName);

  ExcelTemplateResponse contentType(String? contentType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ExcelTemplateResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ExcelTemplateResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ExcelTemplateResponse call({
    String? fileContent,
    String? fileName,
    String? contentType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfExcelTemplateResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfExcelTemplateResponse.copyWith.fieldName(...)`
class _$ExcelTemplateResponseCWProxyImpl
    implements _$ExcelTemplateResponseCWProxy {
  const _$ExcelTemplateResponseCWProxyImpl(this._value);

  final ExcelTemplateResponse _value;

  @override
  ExcelTemplateResponse fileContent(String? fileContent) =>
      this(fileContent: fileContent);

  @override
  ExcelTemplateResponse fileName(String? fileName) => this(fileName: fileName);

  @override
  ExcelTemplateResponse contentType(String? contentType) =>
      this(contentType: contentType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ExcelTemplateResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ExcelTemplateResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ExcelTemplateResponse call({
    Object? fileContent = const $CopyWithPlaceholder(),
    Object? fileName = const $CopyWithPlaceholder(),
    Object? contentType = const $CopyWithPlaceholder(),
  }) {
    return ExcelTemplateResponse(
      fileContent: fileContent == const $CopyWithPlaceholder()
          ? _value.fileContent
          // ignore: cast_nullable_to_non_nullable
          : fileContent as String?,
      fileName: fileName == const $CopyWithPlaceholder()
          ? _value.fileName
          // ignore: cast_nullable_to_non_nullable
          : fileName as String?,
      contentType: contentType == const $CopyWithPlaceholder()
          ? _value.contentType
          // ignore: cast_nullable_to_non_nullable
          : contentType as String?,
    );
  }
}

extension $ExcelTemplateResponseCopyWith on ExcelTemplateResponse {
  /// Returns a callable class that can be used as follows: `instanceOfExcelTemplateResponse.copyWith(...)` or like so:`instanceOfExcelTemplateResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ExcelTemplateResponseCWProxy get copyWith =>
      _$ExcelTemplateResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExcelTemplateResponse _$ExcelTemplateResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ExcelTemplateResponse', json, ($checkedConvert) {
  final val = ExcelTemplateResponse(
    fileContent: $checkedConvert('fileContent', (v) => v as String?),
    fileName: $checkedConvert('fileName', (v) => v as String?),
    contentType: $checkedConvert('contentType', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ExcelTemplateResponseToJson(
  ExcelTemplateResponse instance,
) => <String, dynamic>{
  'fileContent': ?instance.fileContent,
  'fileName': ?instance.fileName,
  'contentType': ?instance.contentType,
};
